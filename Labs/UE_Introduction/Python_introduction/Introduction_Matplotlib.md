# Matplotlib

`Credits: this content was adapted from python4astronomers`

Numpy is one of the core packages of python. It can be imported by running:

```python
import numpy as np
```

The following sections will demonstrate the use of Matplotlib for plotting 1D and 2D matrices.



[Matplotlib](http://matplotlib.org/) is a Python 2-d and 3-d plotting library which produces publication quality figures in a variety of formats and interactive environments across platforms.  Matplotlib can be used in Python scripts, the Python and IPython shell, web application servers, and six graphical user interface toolkits.

## Documentation

The matplotlib documentation is extensive and covers all the functionality in detail.  The documentation is littered with hundreds of examples showing a plot and the exact source code making the plot:

- [Matplotlib home page](http://matplotlib.sourceforge.net/): key plotting commands in a table
- [Pyplot tutorial](http://matplotlib.sourceforge.net/users/pyplot_tutorial.html): intro to 1-D plotting
- [Interactive navigation](http://matplotlib.sourceforge.net/users/navigation_toolbar.html): how to use the plot window for zooming etc.
- [Screenshots](http://matplotlib.sourceforge.net/users/screenshots.html): screenshots and code for about 20 key types of matplotlib functionality
- [Thumbnail gallery](http://matplotlib.sourceforge.net/gallery.html): hundreds of thumbnails (find a plot like the one you want to make)
- [Text intro](http://matplotlib.sourceforge.net/users/text_intro.html#text-intro): manipulate text
- [Mathematical expressions](http://matplotlib.sourceforge.net/users/mathtext.html#mathtext-tutorial): put math in figure text or labels
- [FAQ](http://matplotlib.sourceforge.net/faq/index.html): FAQ, including a useful [Howto](http://matplotlib.sourceforge.net/faq/howto_faq.html) section (e.g. multiple y-axis scales, make plot aspect ratio equal, etc)
- [Search](http://matplotlib.sourceforge.net/search.html): find documentation for specific functions or general concepts
- [Customizing matplotlib](http://matplotlib.sourceforge.net/users/customizing.html): making it beautiful and well-behaved
- [Line2D](http://matplotlib.sourceforge.net/api/artist_api.html#matplotlib.lines.Line2D): knobs to twiddle for customizing a line or points in a plot

### Hints on getting from here (an idea) to there (a publishable plot)

- Start with [Screenshots](http://matplotlib.sourceforge.net/users/screenshots.html) for the broad plotting capabilities
- Go to the [thumbnail gallery](http://matplotlib.sourceforge.net/gallery.html) and scan the thumbnails to find something similar.
- Googling is unfortunately not the best way to get to the detailed help for particular functions.  For example [googling “matplotlib errorbar”](http://www.google.com/search?ie=UTF-8&q=matplotlib+errorbar&qscrl=1) just gives the home page and the pyplot API docs.  The `errorbar()` function is then not so easy to find.
- Instead use [Search](http://matplotlib.sourceforge.net/search.html) and enter the function name.  *Most* of the high-level plotting functions are in the `pyplot` module and you can find them quickly by searching for `pyplot.<function>`, e.g. `pyplot.errorbar`.
- When you are ready to put your plot into a paper for publication see the page on [Publication-quality plots](https://python4astronomers.github.io/plotting/publication.html#publication-quality-plots).

## Plotting 1-d data

The [matplotlib](http://matplotlib.org/) tutorial on [Pyplot](http://matplotlib.sourceforge.net/users/pyplot_tutorial.html) (Copyright (c) 2002-2009 John D. Hunter; All Rights Reserved and [license](http://matplotlib.sourceforge.net/users/license.html)) is an excellent introduction to basic 1-d plotting.  **The content below has been adapted from the pyplot tutorial source with some changes and the addition of exercises.**

### Basic plots

So let’s get started with plotting using a standard startup idiom that will work for both interactive and scripted plotting.  In this case we are working interactively so fire up `ipython` in the usual way with the standard imports for numpy and matplotlib:

```
$ ipython --matplotlib

import numpy as np
import matplotlib.pyplot as plt
```

[matplotlib.pyplot](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib-pyplot) is a collection of command style functions that make matplotlib work like MATLAB.  Each `pyplot` function makes some change to a figure: eg, create a figure, create a plotting area in a figure, plot some lines in a plotting area, decorate the plot with labels, etc.  Plotting with [matplotlib.pyplot](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib-pyplot) is stateful, in that it keeps track of the current figure and plotting area, and the plotting functions are directed to the current axes:

```
plt.figure()          # Make a new figure window
plt.plot([1,2,3,4])
plt.ylabel('some numbers')
```

![../_images/pyplot_simple.png](https://python4astronomers.github.io/_images/pyplot_simple.png)

You may be wondering why the x-axis ranges from 0-2 and the y-axis from 1-3.  If you provide a single list or array to the [plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) command, matplotlib assumes it is a sequence of y values, and automatically generates the x values for you.  Since python ranges start with 0, the default x vector has the same length as y but starts with 0.  Hence the x data are `[0,1,2]`.

[plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) is a versatile command, and will take an arbitrary number of arguments.  For example, to plot x versus y, you can issue the command:

```
plt.clf()
plt.plot([1,2,3,4], [1,4,9,16])
```

[Plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) is just the tip of the iceberg for plotting commands and you should study the page of matplotlib [screenshots](http://matplotlib.sourceforge.net/users/screenshots.html) to get a better picture.

Clearing the figure with plt.clf()

From now on we will assume that you know to clear the figure with [clf()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.clf) before entering commands to make the next plot.

For every x, y pair of arguments, there is an optional third argument which is the format string that indicates the color and line type of the plot.  The letters and symbols of the format string are from MATLAB, and you concatenate a color string with a line style string. The default format string is ‘b-‘, which is a solid blue line.  For example, to plot the above with red circles, you would issue:

```
plt.clf()
plt.plot([1,2,3,4], [1,4,9,16], 'ro')
plt.axis([0, 6, 0, 20])
```

![../_images/pyplot_formatstr.png](https://python4astronomers.github.io/_images/pyplot_formatstr.png)

See the [plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) documentation for a complete list of line styles and format strings.  The [axis()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.axis) command in the example above takes a list of `[xmin, xmax, ymin, ymax]` and specifies the viewport of the axes.

If matplotlib were limited to working with lists, it would be fairly useless for numeric processing.  Generally, you will use [NumPy](http://numpy.org/) arrays.  In fact, all sequences are converted to numpy arrays internally.  The example below illustrates a plotting several lines with different format styles in one command using arrays:

```
# evenly sampled time at 200ms intervals
t = np.arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
# then filled circle with connecting line
plt.clf()
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
plt.plot(t, t+60, 'o', linestyle='-', color='c')
```

[![../_images/pyplot_three_v2.png](https://python4astronomers.github.io/_images/pyplot_three_v2.png)](https://python4astronomers.github.io/_images/pyplot_three_v2.png)

Exercise: Make this plot

[![../_images/big_hexes.png](https://python4astronomers.github.io/_images/big_hexes.png)](https://python4astronomers.github.io/_images/big_hexes.png)

Use the [plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) documentation to make a plot that looks similar to the one above.  Start with:

```
x = [1, 2, 3, 4]
y = [3, 2, 3, 1]
```

Click to Show/Hide Solution

### What are all these icons for?

The figures are enclosed in a window that looks a little like the following (it depends on the OS and matplotlib backend being used):

![../_images/pyplot_window.png](https://python4astronomers.github.io/_images/pyplot_window.png)

The icons at the bottom of the window allow you to zoom in or out of the plot, pan around, and save the plot as a “hardcopy” format (e.g. PNG, postscript, or PDF). The first icon will reset you to the original axis limits, which comes in quite handy.

You *can* use the close button to close the window, but it is best to use the [close()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.close) command to avoid memory leaks.

### Saving the plot

As discussed above, you can use the GUI to save the plot, but the [savefig()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.savefig) command is often more useful, and has many options:

```
plt.savefig('fig.png')
plt.savefig('fig.pdf')
```

Note that you can save a figure multiple times (e.g. as different formats). The supported formats depend on the backend being used, but normally include png, pdf, ps, eps and svg:

```
plt.savefig('fig')   # creates fig.png (unless you have changed the default format)
plt.savefig('fig.pdf')  # creates a PDF file, fig.pdf
plt.savefig('fig', format='svg')  # creates a SVG file called fig
plt.savefig('fig.svg', 'format='ps') # creates a PS file called fig.svg (do not do this!)
```

The default format (used in the first line) can be queried, or changed, by saying:

```
>>> rcParams['savefig.format']
'png'
>>> rcParams['savefig.format'] = 'pdf'
>>> plt.savefig('foo')  # creates foo.pdf
```

### Some common-ish Python errors

Here’s a couple of errors you may come across:

```
>>> plt.clf
<function matplotlib.pyplot.clf>
>>> x = np.arange(5)
>>> x.size()
TypeError: 'int' object is not callable
```

Since `clf` is a function then you need to add `()` to actually call it (being able to refer to a function as a “thing” is incredibly powerful, which is what has happened here, but it’s not much use if you just want to clear the current figure).

For the second case, `x.size` returns an integer (in this case `5`), which we then call as a function, leading to the somewhat cryptic messsage above. For new users it would be nice if it said “hold on, size isn’t callable”, but then this would inhibit useful - if complex - statements such as:

```
tarfile.open(fileobj=request.urlopen(url), mode='r|').extractall()
```

### Controlling line properties

What are lines and markers?

A matplotlib “line” is a object containing a set of points and various attributes describing how to draw those points.  The points are optionally drawn with “markers” and the connections between points can be drawn with various styles of line (including no connecting line at all).

Lines have many attributes that you can set: linewidth, dash style, antialiased, etc; see [Line2D](http://matplotlib.sourceforge.net/api/artist_api.html#matplotlib.lines.Line2D).   There are several ways to set line properties

- Use keyword args:

  ```
  x = np.arange(0, 10, 0.25)
  y = np.sin(x)
  plt.clf()
  plt.plot(x, y, linewidth=4.0)
  ```

- Use the [setp()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.setp) command.  The example below uses a MATLAB-style command to set multiple properties on a list of lines.  `setp` works transparently with a list of objects or a single object:

  ```
  plt.clf()
  lines = plt.plot(x, y, 'r', x/2, y/2, 'b')
  plt.setp(lines, color='r', linewidth=4.0)
  ```

- Use the setter methods of the `Line2D` instance.  `plot` returns a list of lines; eg `line1, line2 = plot(x1,y1,x2,x2)`.  Below I have only one line so it is a list of length 1.  I use tuple unpacking in the `line, = plot(x, y, 'o')` to get the first element of the list:

  ```
  plt.clf()
  line, = plt.plot(x, y, '-')
  line.set_<TAB>
  ```

  Now change the line color, noting that in this case you need to explicitly redraw:

  ```
  line.set_color('m') # change color
  plt.draw()
  ```

Important

In contrast to old-school plotting where you issue a plot command and the line is immortalized, in matplotlib the lines (and basically everything about the plot) are *dynamic objects* that can be modified after the fact.

Here are the available [Line2D](http://matplotlib.sourceforge.net/api/artist_api.html#matplotlib.lines.Line2D) properties.

| Property               | Value Type                                               |
| ---------------------- | -------------------------------------------------------- |
| alpha                  | float                                                    |
| animated               | [True \| False]                                          |
| antialiased or aa      | [True \| False]                                          |
| clip_box               | a matplotlib.transform.Bbox instance                     |
| clip_on                | [True \| False]                                          |
| clip_path              | a Path instance and a Transform instance, a Patch        |
| color or c             | any matplotlib color                                     |
| contains               | the hit testing function                                 |
| dash_capstyle          | [‘butt’ \| ‘round’ \| ‘projecting’]                      |
| dash_joinstyle         | [‘miter’ \| ‘round’ \| ‘bevel’]                          |
| dashes                 | sequence of on/off ink in points                         |
| data                   | (array xdata, array ydata)                               |
| figure                 | a matplotlib.figure.Figure instance                      |
| label                  | any string                                               |
| linestyle or ls        | [ ‘-‘ \| ‘–’ \| ‘-.’ \| ‘:’ \| ‘steps’ \| ...]           |
| linewidth or lw        | float value in points                                    |
| lod                    | [True \| False]                                          |
| marker                 | [ ‘+’ \| ‘,’ \| ‘.’ \| ‘1’ \| ‘2’ \| ‘3’ \| ‘4’ \| ... ] |
| markeredgecolor or mec | any matplotlib color                                     |
| markeredgewidth or mew | float value in points                                    |
| markerfacecolor or mfc | any matplotlib color                                     |
| markersize or ms       | float                                                    |
| markevery              | None \| integer \| (startind, stride)                    |
| picker                 | used in interactive line selection                       |
| pickradius             | the line pick selection radius                           |
| solid_capstyle         | [‘butt’ \| ‘round’ \|  ‘projecting’]                     |
| solid_joinstyle        | [‘miter’ \| ‘round’ \| ‘bevel’]                          |
| transform              | a matplotlib.transforms.Transform instance               |
| visible                | [True \| False]                                          |
| xdata                  | array                                                    |
| ydata                  | array                                                    |
| zorder                 | any number                                               |

To get a list of settable line properties, call the [setp()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.setp) function with a line or lines as argument:

```
lines = plt.plot([1,2,3])
plt.setp(lines)
```

Detour into Python

You may have noticed that in the last workshop we mostly used NumPy arrays like `np.arange(5)` or `np.array([1,2,3,4])` but now you are seeing statements like `plt.plot([1,2,3])`.



## Some useful functions for controlling plotting

Here are a few useful functions:

| [figure()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.figure) | Make new figure frame (accepts figsize=(width,height) in inches) |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [autoscale()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.autoscale#matplotlib.pyplot.autoscale) | Allow or disable autoscaling and control space beyond data limits |
| [hold()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.hold#matplotlib.pyplot.hold) | Hold figure: hold(False) means next plot() command wipes figure |
| [ion()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.ion#matplotlib.pyplot.ion), [ioff()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.ioff#matplotlib.pyplot.ioff) | Turn interactive plotting on and off                         |
| [axis()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.axis) | Set plot axis limits or set aspect ratio (plus more)         |
| [subplots_adjust()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.subplots_adjust) | Adjust the spacing around subplots (fix clipped labels etc)  |
| [xlim()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.xlim#matplotlib.pyplot.xlim), [ylim()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.ylim#matplotlib.pyplot.ylim) | Set x and y axis limits individually                         |
| [xticks()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.xticks#matplotlib.pyplot.xticks), [yticks()](http://matplotlib.sourceforge.net/api/pyplot_api.html?highlight=plot.yticks#matplotlib.pyplot.yticks) | Set x and y axis ticks                                       |

## Working with multiple figures and axes

MATLAB, and [matplotlib.pyplot](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib-pyplot), have the concept of the current figure and the current axes.  All plotting commands apply to the current axes.  The function [gca()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.gca) returns the current axes (an [Axes](http://matplotlib.sourceforge.net/api/axes_api.html) instance), and [gcf()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.gcf) returns the current figure (a [Figure](http://matplotlib.sourceforge.net/api/figure_api.html) instance). Normally, you don’t have to worry about this, because it is all taken care of behind the scenes.

Figure, Axes, plot(), and subplot()

- [Figure](http://matplotlib.sourceforge.net/api/figure_api.html)

  This is the entire window where one or more subplots live. A Figure object (new window) is created with the [figure()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.figure) command.

- [Axes](http://matplotlib.sourceforge.net/api/axes_api.html)

  This is an object representing a subplot (which you might casually call a “plot”) which contains axes, ticks, lines, points, text, etc.

- [plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot)

  This is a command that draws points or lines and returns a list of [Line2D](http://matplotlib.sourceforge.net/api/artist_api.html#matplotlib.lines.Line2D) objects.  One sublety is that [plot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.plot) will automatically call [figure()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.figure) and/or [subplot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.subplot) if neccesary to create the underlying [Figure](http://matplotlib.sourceforge.net/api/figure_api.html) and [Axes](http://matplotlib.sourceforge.net/api/axes_api.html) objects.

- [subplot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.subplot)

  This is a command that creates and returns a new subplot ([Axes](http://matplotlib.sourceforge.net/api/axes_api.html)) object which will be used for subsequent plotting commands.

Below is a script that illustrates this by creating two figures where the first figure has two subplots:

```
def f(t):
    """Python function to calculate a decaying sinusoid"""
    val = np.exp(-t) * np.cos(2*np.pi*t)
    return val

t1 = np.arange(0.0, 5.0, 0.1)
t2 = np.arange(0.0, 5.0, 0.02)

plt.figure(1)             # Make the first figure
plt.clf()
plt.subplot(2, 1, 1)  # 2 rows, 1 column, plot 1
plt.plot(t1, f(t1), 'bo', t2, f(t2), 'k')
plt.title('FIGURE 1')
plt.text(2, 0.8, 'AXES 211')

plt.subplot(2, 1, 2)  # 2 rows, 1 column, plot 2
plt.plot(t2, np.cos(2*np.pi*t2), 'r--')
plt.text(2, 0.8, 'AXES 212')

plt.figure(2)             # Make a second figure
plt.clf()
plt.plot(t2, f(t2), '*')
plt.grid()
plt.title('FIGURE 2')
plt.text(2, 0.8, 'AXES 111')
```

| [![../_images/mult_figs1.png](https://python4astronomers.github.io/_images/mult_figs1.png)](https://python4astronomers.github.io/_images/mult_figs1.png) | [![../_images/mult_figs2.png](https://python4astronomers.github.io/_images/mult_figs2.png)](https://python4astronomers.github.io/_images/mult_figs2.png) |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
|                                                              |                                                              |

The first [figure()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.figure) command here is optional because `figure(1)` will be created by default, just as a `subplot(1, 1, 1)` will be created by default if you don’t manually specify an axes.

The [subplot()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.subplot) command specifies `numrows, numcols, fignum` where `fignum` ranges from 1 to `numrows*numcols`.  The commas in the `subplot` command are optional if `numrows*numcols<10` so you might see calls like `subplot(211)` in code, but don’t do this yourself.  You can create an arbitrary number of subplots and axes.

If you want to place an axes manually, ie, not on a rectangular grid, use the [axes()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.axes) command, which allows you to specify the location as `axes([left, bottom, width, height])` where all values are in fractional (0 to 1) coordinates.  See [pylab_examples-axes_demo](http://matplotlib.sourceforge.net/examples/pylab_examples/axes_demo.html) for an example of placing axes manually and [pylab_examples-line_styles](http://matplotlib.sourceforge.net/examples/pylab_examples/line_styles.html) for an example with lots-o-subplots.

You can move back to existing subplots, or indeed figures, as shown below:

```
plt.figure(1)             # Select the existing first figure
plt.subplot(2, 1, 2)          # Select the existing subplot 212
plt.plot(t2, np.cos(np.pi*t2), 'g--')   # Add a plot to the axes
plt.text(0.2, -0.8, 'Back to AXES 212', color='g', size=18)   # add a colored label, increasing the font size
```

You can clear the current figure with [clf()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.clf) and the current axes with [cla()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.cla).  If you find this statefulness, annoying, don’t despair, this is just a thin stateful wrapper around an object oriented API, which you can use instead.  See the [Advanced plotting](https://python4astronomers.github.io/plotting/advanced.html#advanced-plotting) page for an introduction to this approach, and the then [Artist tutorial](http://matplotlib.sourceforge.net/users/artists.html) for the gory details.

Figures can be deleted with the [close()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.close) command:

```
plt.close(2)    # Remove the second figure
```

Using close

You can use the ‘close button’ provided by the window manager to remove the figure, but if you do this you must *still* call the [close()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.close) command, to ensure that memory allocated by pyplot for the figure is released. This is only really an issue for long-running `ipython` sessions; if you just create a single plot and then exit you do not need to use `close`.



## Working with text

The [text()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.text) command can be used to add text in an arbitrary location, and the [xlabel()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.xlabel), [ylabel()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.ylabel) and [title()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.title) are used to add text in the indicated locations (see [Text intro](http://matplotlib.sourceforge.net/users/text_intro.html#text-intro) for a more detailed example):

```
mu, sigma = 100, 15
x = np.random.normal(mu, sigma, size=10000)
plt.clf()

# the histogram of the data
histvals, binvals, patches = plt.hist(x, bins=50, normed=True, facecolor='g', alpha=0.75)

plt.xlabel('Smarts')
plt.ylabel('Probability')
plt.title('Histogram of IQ')
plt.text(60, .025, r'$\mu=100,\ \sigma=15$')
plt.axis([40, 160, 0, 0.03])
plt.grid(True)
```

![../_images/pyplot_text.png](https://python4astronomers.github.io/_images/pyplot_text.png)

All of the [text()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.text) commands return an `matplotlib.text.Text` instance.  Just as with with lines above, you can customize the properties by passing keyword arguments into the text functions or using [setp()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.setp):

```
t = plt.xlabel('my data', fontsize=14, color='red')
```

These properties are covered in more detail in [text-properties](http://matplotlib.sourceforge.net/users/text_props.html).

Exercise: Overlaying histograms

Make an additional normal distribution with a mean of 130.  Make a new plot where the two distributions are overlayed.  Use a different color and choose the opacities so it looks reasonable.

Hint:

- You might want to use the `bin` parameter with an `arange(min, max, step)` so both histograms are binned the same.

Click to Show/Hide Solution

### Getting the fonts just right

The global font properties for various plot elements can be controlled using the [rc()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.rc) function:

```
plt.rc("font", size=10, family='normal', weight='bold')
plt.rc("axes", labelsize=10, titlesize=10)
plt.rc("xtick", labelsize=10)
plt.rc("ytick", labelsize=10)
plt.rc("legend", fontsize=10)
```

The inconsistency here is one of the warts in matplotlib.  Ironically my favorite way to find these valuable commands is to google [“matplotlib makes me hate”](http://www.google.com/search?sourceid=chrome&ie=UTF-8&q=matplotlib+makes+me+hate&qscrl=1) which brings up a blog post ranting about the problems with matplotlib.

All of the attributes that can be controlled with the [rc()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.rc) command are listed in `$HOME/.matplotlib/matplotlibrc` and [Customizing matplotlib](http://matplotlib.sourceforge.net/users/customizing.html).

See also the [Advanced plotting](https://python4astronomers.github.io/plotting/advanced.html#advanced-plotting) page.

## Using mathematical expressions in text

matplotlib accepts TeX equation expressions in any text expression. For example to write the expression ![\sigma_i=15](https://python4astronomers.github.io/_images/math/31cb1ba88f52950387d4121bf638b51f64a6c7c9.png) in the title, you can write a TeX expression surrounded by dollar signs:

```
plt.title(r'$\sigma_i=15$')
```

The `r` preceeding the title string is important – it signifies that the string is a *raw* string and not to treate backslashes as python escapes. matplotlib has a built-in TeX expression parser and layout engine, and ships its own math fonts – for details see the [mathtext-tutorial](http://matplotlib.sourceforge.net/users/mathtext.html).  Thus you can use mathematical text across platforms without requiring a TeX installation.  For those who have LaTeX and dvipng installed, you can also use LaTeX to format your text and incorporate the output directly into your display figures or saved postscript – see the [usetex-tutorial](http://matplotlib.sourceforge.net/users/usetex.html).

## Annotating text

The uses of the basic [text()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.text) command above place text at an arbitrary position on the Axes.  A common use case of text is to annotate some feature of the plot, and the [annotate()](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib.pyplot.annotate) method provides helper functionality to make annotations easy.  In an annotation, there are two points to consider: the location being annotated represented by the argument `xy` and the location of the text `xytext`.  Both of these arguments are `(x,y)` tuples:

```
plt.clf()
t = np.arange(0.0, 5.0, 0.01)
s = np.cos(2*pi*t)
lines = plt.plot(t, s, lw=2)

plt.annotate('local max', xy=(2, 1), xytext=(3, 1.5),
         arrowprops=dict(facecolor='black', shrink=0.05))
plt.ylim(-2,2)
```

![../_images/pyplot_annotate.png](https://python4astronomers.github.io/_images/pyplot_annotate.png)

In this basic example, both the `xy` (arrow tip) and `xytext` locations (text location) are in data coordinates.  There are a variety of other coordinate systems one can choose – see the [Annotations introduction](http://matplotlib.org/users/annotations_intro.html) for more details and links to examples.

## Plotting 2-d data

A deeper tutorial on plotting 2-d image data will have to wait for another day:

- For simple cases it is straightforward and everything you need to know is in the [image tutorial](http://matplotlib.sourceforge.net/users/image_tutorial.html)
- For making publication quality images for astronomy you should be using [APLpy](http://aplpy.github.com).

## Plotting 3-d data

Matplotlib supports plotting 3-d data through the `mpl_toolkits.mplot3d` module.  This is a somewhat specialized functionality but it’s worth quickly looking at an example of the 3-d viewer that is available:

```
from mpl_toolkits.mplot3d import Axes3D

def randrange(n, vmin, vmax):
    return (vmax-vmin)*np.random.rand(n) + vmin

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
n = 100
for c, m, zl, zh in [('r', 'o', -50, -25), ('b', '^', -30, -5)]:
    xs = randrange(n, 23, 32)
    ys = randrange(n, 0, 100)
    zs = randrange(n, zl, zh)
    ax.scatter(xs, ys, zs, c=c, marker=m)

ax.set_xlabel('X Label')
ax.set_ylabel('Y Label')
ax.set_zlabel('Z Label')
```

![../_images/pyplot_3d.png](https://python4astronomers.github.io/_images/pyplot_3d.png)

To get more information check out the [mplot3d tutorial](http://matplotlib.sourceforge.net/mpl_toolkits/mplot3d/tutorial.html).

## Appendix: Pylab and Pyplot and NumPy

You may see examples that use the `pylab` mode of IPython by using `ipython --pylab` or the `%pylab` magic function. Let’s demystify what’s happening in this case and clarify the relationship between **pylab** and **pyplot**.

[matplotlib.pyplot](http://matplotlib.sourceforge.net/api/pyplot_api.html#matplotlib-pyplot) is a collection of command style functions that make matplotlib work like MATLAB.  This is just a package module that you can import:

```
import matplotlib.pyplot
print(sorted(dir(matplotlib.pyplot)))
```

Likewise pylab is also a module provided by matplotlib that you can import:

```
import pylab
```

This module is a thin wrapper around `matplotlib.pylab` which pulls in:

- Everything in `matplotlib.pyplot`
- All top-level functions `numpy`, `numpy.fft`, `numpy.random`, `numpy.linalg`
- A selection of other useful functions and modules from matplotlib

There is no magic, and to see for yourself do

```
import matplotlib.pylab
matplotlib.pylab??       # prints the source code!!
```

When you do `ipython --pylab` it (essentially) just does:

```
from pylab import *
```

There is one technical detail about GUI event loops and plot window interaction which makes it useful to use `--pylab` even if you are not directly using all the top-level functions like `plot()` that get imported.

In a lot of documentation examples you will see code like:

```
import matplotlib.pyplot as plt  # set plt as alias for matplotlib.pyplot
plt.plot([1,2], [3,4])
```

Now you should understand this is the same `plot()` function that you get in Pylab.

See [Matplotlib, pylab, and pyplot: how are they related?](http://matplotlib.sourceforge.net/faq/usage_faq.html#matplotlib-pylab-and-pyplot-how-are-they-related) for a more discussion on the topic.