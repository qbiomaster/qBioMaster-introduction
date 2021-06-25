### NumPy

`Credits: this content was adapted from python4astronomers`

Numpy is one of the core packages of python. It can be imported by running:

```python
import numpy as np
```

The following sections will demonstrate the use of Numpy for basic matrix operations.



#### Making arrays

Recall that we said that the key feature of NumPy is that it lets us create variables containing multi-dimensional arrays of numbers. You can create these arrays in numerous ways. Below we show some examples. Here, the `>>>` prefix indicates a line that you could type into IPython, and any following lines without that prefix show what IPython will show you in response. You don’t have to type in these examples, but make sure to read them carefully.

```
>>> a = np.array([10, 20, 30, 40]) # create an array from a list of values
>>> a
array([10, 20, 30, 40]

>>> b = np.arange(4)  # create an array of 4 integers, from 0 to 3
>>> b
array([0, 1, 2, 3])

>>> np.arange(0.0, 10.0, 0.1)  # create an array from 0 to 100 stepping by 0.1
array([ 0. ,  0.1,  0.2,  0.3,  0.4,  0.5,  0.6,  0.7,  0.8,  0.9,  1. ,
        1.1,  1.2,  1.3,  1.4,  1.5,  1.6,  1.7,  1.8,  1.9,  2. ,  2.1,
        2.2,  2.3,  2.4,  2.5,  2.6,  2.7,  2.8,  2.9,  3. ,  3.1,  3.2,
        3.3,  3.4,  3.5,  3.6,  3.7,  3.8,  3.9,  4. ,  4.1,  4.2,  4.3,
        4.4,  4.5,  4.6,  4.7,  4.8,  4.9,  5. ,  5.1,  5.2,  5.3,  5.4,
        5.5,  5.6,  5.7,  5.8,  5.9,  6. ,  6.1,  6.2,  6.3,  6.4,  6.5,
        6.6,  6.7,  6.8,  6.9,  7. ,  7.1,  7.2,  7.3,  7.4,  7.5,  7.6,
        7.7,  7.8,  7.9,  8. ,  8.1,  8.2,  8.3,  8.4,  8.5,  8.6,  8.7,
        8.8,  8.9,  9. ,  9.1,  9.2,  9.3,  9.4,  9.5,  9.6,  9.7,  9.8,
        9.9])

>>> np.linspace(-np.pi, np.pi, 5)  # create an array of 5 evenly spaced samples from -pi to pi
array([-3.14159265, -1.57079633,  0.        ,  1.57079633,  3.14159265]))
```

New arrays can be obtained by operating with existing arrays. In NumPy, when you do math with arrays, it will do the math “elementwise,” by performing the requested operation on each array element separately. Continuing the above examples:

```
>>> a + b**2  # elementwise operations
array([10, 21, 34, 49])
```

Arrays may have more than one dimension:

```
>>> f = np.ones([3, 4])  # 3 x 4 array of ones
>>> f
array([[ 1.,  1.,  1.,  1.],
       [ 1.,  1.,  1.,  1.],
       [ 1.,  1.,  1.,  1.]])
```

Every element in an array must have the same “type”, but different arrays can be filled with different types. As is very common in computing, Python and NumPy distinguish between integer and “float” values. Integers (or just “ints”) can only take on integral values (fair enough), while ”floats” can approximate almost any real number. (“Float” is short for “floating-point,” which refers to the broad scheme by which non-integral values are encoded in binary. It is far beyond the purview of this tutorial, but every would-be scientific programmer *must* learn the basics of floating-point arithmetic.) In NumPy, each array has a “data type,” or `dtype` for short, that specifies the type of its contents:

```
>>> g = np.zeros([2, 3, 4], dtype=int)  # 2 x 3 x 4 integer array of zeros
array([[[0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]],
       [[0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]])

>>> i = np.zeros_like(f)  # array of zeros with same shape and type as "f"
array([[ 0.,  0.,  0.,  0.],
       [ 0.,  0.,  0.,  0.],
       [ 0.,  0.,  0.,  0.]]))
```

You can change the dimensions of existing arrays, including changing the number of dimensions that they have:

```
>>> w = np.arange(12)
>>> w.shape = [3, 4]  # does not modify the total number of elements
array([[ 0,  1,  2,  3],
       [ 4,  5,  6,  7],
       [ 8,  9, 10, 11]])

>>> x = np.arange(5)
>>> x
array([0, 1, 2, 3, 4])

>>> y = x.reshape(5, 1)
>>> y = x.reshape(-1, 1)  # Same thing but NumPy figures out correct length
>>> y
array([[0],
       [1],
       [2],
       [3],
       [4]]))
```

It is possible to operate with arrays of different dimensions as long as they fit “well”. NumPy does this using a paradigm called [broadcasting](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html). In short, NumPy will almost always “do what you want” without needing any tricks. But frequent NumPy users should read the rules of broadcasting to make sure they understand how the system works.

```
>>> x.shape
(5,)
>>> y.shape
(5, 1)
>>> x + y * 10
array([[ 0,  1,  2,  3,  4],
       [10, 11, 12, 13, 14],
       [20, 21, 22, 23, 24],
       [30, 31, 32, 33, 34],
       [40, 41, 42, 43, 44]])
```

Exercise: Make a ripple

Set `x` to an array that goes from -20 to 20, stepping by 0.25. Make `y` the same as `x` but “transposed” using the `reshape` trick above. Calculate a surface `z = cos(r) / (r + 5)` where `r = sqrt(x**2 + y**2)`. Use plt.imshow to display the image of `z`.

Click here to show/hide solution

#### Array access and slicing

NumPy provides powerful methods for accessing array elements or particular subsets of an array, e.g. “the fourth column” or “every other row.” This is called “slicing.” The outputs below illustrate basic slicing. Once again you don’t need to type these examples, but you should read them carefully:

```
>>> a = np.arange(20).reshape(4,5)
>>> a
array([[ 0,  1,  2,  3,  4],
      [ 5,  6,  7,  8,  9],
      [10, 11, 12, 13, 14],
      [15, 16, 17, 18, 19]])

>>> a[2, 3]  # select element in row 2, column 3 (counting from 0)
13

>>> a[2, :]  # select every element in row 2
array([10, 11, 12, 13, 14])

>>> a[:, 0]  # select every element in column 0
array([ 0,  5, 10, 15])

>>> a[2, 0:4]  # select columns 0 to *3* in row 2
array([10, 11, 12, 13])

>>> a[0:3, 1:3] # select a sub-matrix.
array([[ 1,  2],
       [ 6,  7],
       [11, 12]])
```

As a first practical example, let’s plot column 300 of the STIS long-slit image to look at the spatial profile:

```
plt.figure()  # Start a new plot -- by default matplotlib overplots.
plt.plot(img[:, 300])
```

[![../_images/img_col300.png](https://python4astronomers.github.io/_images/img_col300.png)](https://python4astronomers.github.io/_images/img_col300.png)

The formal syntax for array slicing is as follows. For each dimension of an array, the most general “slice” that you can write has the form:

```
I0:I1:STEP
```

Where

- `I0` is the first index value. This can be any Python expression that works out to an integer, or you can leave it blank to default to `0`.
- `I1` is the index upper bound. Once again this can be any Python expression. If you leave it blank, the slicing goes until the end of the axis.
- `STEP` is the “step size” between each successive index. The default is one. When `step` is not specified then the final `:` is not required.

The number one “gotcha” about slicing is that the `I1`-th index is **not** included in your slice. For instance, the slice `1:3` selects only two elements. The slice `3:3` selects *zero* array elements (which is perfectly allowed). This definition is counterintuitive for most people, but it has its merits. For instance, the number of elements in a slice is exactly `I1 - I0` (unless `STEP` is not 1). And the slices `X:Y` and `Y:Z` are non-overlapping subsets of the slice `X:Z`.

To slice an array along multiple dimensions at once, you just separate different slices with commas, writing something along the lines of:

```
array[SLICE0, SLICE1, ...]
```

Where `SLICE0` stands for one of the expressions described above, and so on.

There are other special cases to slicing: negative indices have special meaning, for instance. **TODO**: point to comprehensive documentation! I can‘t find any!