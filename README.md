

# Q-bio Master

Created on Thu Nov 19 16:50:06 2020
@author: Marcelo Nollmann


## Introduction to Markdown

How are labbook pages written? Word? OpenOffice? Google Docs? **You guessed: none of the above.**

Labbooks are written in Markdown, a very *easy to use* programming language that allows you to concentrate on writing. Here are some examples of what you can do with it:

### Getting Markdown

There are many applications that support Markdown. I use [Typora](https://www.typora.io/#linux), or [Haroopad](http://pad.haroopress.com/) or [Atom](https://atom.io/) for **offline** editing (my favorite).

But you can also use on-line editors such as (Dillinger)[https://dillinger.io/] or [StackEdit](https://stackedit.io/app#) or (HackMD)[https://hackmd.io/].

I recently installed [codiMD](http://192.168.6.30:3000/) in one of our servers. It is *supposed* to be great for document collaboration.

Do your shopping and stick to what you like the best.

### Writing text in markdown

#### Headers

To write headers of sections you just use '#'. For instance:

```markdown
# header 1

## header 2

### header 3

... you get the idea
```
#### Emphasis

This is even easier. For example

```markdown
**bold**
*italic*
9^th
```
will appear as

**bold**
*italic*

#### Lists

List are done by just using '-' For instance, the following

``` markdown
- item 1
- item 2
- item 3
	- item 3.1
	- item 3.2
	- item 3.3
```
will appear as

- item 1
- item 2
- item 3
	- item 3.1
	- item 3.2
	- item 3.3

An ordered list

```markdown
1. item 1
2. item 2
3. item 3
44. item 4
4. etc
```

 will look like:

1. item 1
2. item 2
3. item 3
4. item 4
5. etc



#### Images

Let's say you have an image, called pinguin.jpeg in your directory ```2019_09_03_Create_Labbook```

You can insert the image by typing

```markdown
![pinguin](./pinguin.jpeg)
```

and it will appear as:

![pinguin](./pinguin.jpeg)

You can also add images from the internet by replacing the filename with a link.

Make sure you always use relative links! If you don't know what these are, ask around!

#### Tables

Tables are easy, for instance, do

```markdown
| strains | Date | Procedence|
| --------|------|----------|
|sdsdnk| 20-09-76| Cozzlab|
| pyt233| 19-01-81| SherrattLab|
```

will appear as:

| strains | Date | Procedence|
| --------|------|----------|
|sdsdnk| 20-09-76| Cozzlab|
| pyt233| 19-01-81| SherrattLab|

and so on.


### Conversion

Markdown documents can be easily converted to word, html, latex, pdf using [pandoc](https://pandoc.org/MANUAL.html).

