

# Q-bio Master

Created on Thu Nov 19 16:50:06 2020
@author: Marcelo Nollmann & Luca Ciandrini

[TOC]

## Introduction to Markdown

How are document pages written in this github? Word? OpenOffice? Google Docs? **You guessed: none of the above.**

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

## Introduction to Git



You can find nice tutorials here:

- https://perso.liris.cnrs.fr/pierre-antoine.champin/enseignement/intro-git/ in French

  

Git is an **Open Source Distributed Version Control System**. Now that’s a lot of words to define Git.

Let me break it down and explain the wording:

- **Control System:** This basically means that Git is a content tracker. So Git can be used  to store content — it is mostly used to store code due to the other  features it provides.
- **Version Control System**:  The code which is stored in Git keeps changing as more code is added.  Also, many developers can add code in parallel. So Version Control  System helps in handling this by maintaining a history of what changes  have happened. Also, Git provides features like branches and merges,  which I will be covering later.
- **Distributed Version Control System**: Git has a remote repository which is stored in a server and a local  repository which is stored in the computer of each developer. This means that the code is not just stored in a central server, but the full copy of the code is present in all the developers’ computers. Git is a  Distributed Version Control System since the code is present in every  developer’s computer. I will explain the concept of remote and local  repositories later in this article.

### Why a Version Control System like Git is needed

Real life projects generally have multiple developers working in parallel.  So a version control system like Git is needed to ensure there are no  code conflicts between the developers.

Additionally, the  requirements in such projects change often. So a version control system  allows developers to revert and go back to an older version of the code.

Finally, sometimes several projects which are being run in parallel involve the  same codebase. In such a case, the concept of branching in Git is very  important.



### Branches

Up until now we have not created any branch in Git. By default, Git commits go into the **master** branch.

#### What is a branch?

A branch is nothing but a pointer to the latest commit in the Git  repository. So currently our master branch is a pointer to the second  commit `“demo.txt file is modified”`.

#### Why are multiple branches needed?

Multiple branches are needed to support multiple parallel developments. Refer the image below to see how branches work.

![img](https://cdn-media-1.freecodecamp.org/images/sww3mboJ61C4kpLWlQYHnHWvrjX8p--VMui2)

Initially, commit 1 and commit 2 were done in the master branch. After commit 2 a  new Branch called as “Test” is created, and commit 3 and commit 4 are  added to the test branch.

At the same time, a different commit 3  and commit 4 are added to the master branch. Here we can see that after  Commit 2, two parallel developments are being done in 2 separate  branches.

The Test Branch and the Master Branch have diverged here and have different code — the code from Test Branch can be merged with  the Master.



### The Remote Git Repository

Until now, we have been working only in the local repository. Each developer  will work in their local repository but eventually, they will push the  code into a remote repository. Once the code is in the remote  repository, other developers can see and modify that code.

![img](https://cdn-media-1.freecodecamp.org/images/O-6UdGYVsEjM-oJmtJ5KQpQnXIBOCZoB22X1)Showing Remote and Local Repositories



#### GitHub

Here we will be using GitHub for the remote repository.

Go to https://github.com/ and create an account.

After registering in the GitHub homepage, click on **Start a Project** to create a new Git repository. Give the repository a name and click “Create Repository”

Give the name as `git-blog-demo`.

This will create a remote repository in GitHub, and when you open the repository, a page like the image below will open up:

![img](https://cdn-media-1.freecodecamp.org/images/LWpWCg5LTo7m-IkZW1io-194VWZ61di5CIGY)

The repository URL is the highlighted portion `**https://github.com/aditya-sridhar/git-blog-demo.git**`



### Using a Graphical User Interface: Git Cola 

#### Get started with Git Cola, a graphical user interface for Git.

#### Install Git Cola

To install Git Cola on Linux, open your application installer (called **Software** on GNOME) from your **Applications** menu and search for **git-cola** and install it.

![Search for Git-cola installation](https://opensource.com/sites/default/files/uploads/application-installer-search.png)

On macOS, you can use Homebrew to install it. Search for **git-cola** and install.

On Windows, use [Chocolatey](https://opensource.com/article/20/3/chocolatey) to install. Search for **git-cola** and install.

#### Launch Git Cola

Start Git Cola from your Application menu. Since it's a graphical interface for Git, you won't be typing commands.

When Git Cola starts, it doesn't have any repositories. Just as a  word processor or music player isn't of much use without a file loaded,  Git Cola isn't very useful without a project loaded into it. If you have a Git repository that you need to contribute to, you can clone it by  clicking the **Clone** button in the lower-left Git Cola window. Otherwise, click the **New** button.

​    ![Git-cola splash screen](https://opensource.com/sites/default/files/uploads/git-cola-splash.png)

Create a new directory called **example-project.git** somewhere on your hard drive. The folder doesn't have to end in **.git,** but it's a convention for a Git repository to end in **.git**, so it's a good idea to get into the habit of appending that to the end  of a project. And that's an important concept in Git: The directory you  create to house a project is actually a Git repository. It's hard to  tell without digging around for it, but there's a hidden directory  inside your project folder called **.git**, and it contains important history and configuration files so that changes you make inside that project can be tracked.

Git Cola's main interface looks pretty lonely and empty at this stage.

![empty Git-cola window](https://opensource.com/sites/default/files/uploads/git-cola-main.jpg)

It's up to you to populate your project with files, so for the  moment, leave Git Cola behind. Using your OS's file manager (Files on  GNOME, Finder on macOS, Explorer on Windows), add some files to your  project directory on your hard drive.

###### Files types compatible with Git

Git is primarily intended for use with text-based formats.  Technically, Git doesn't really care what kinds of files you add to your project. Its job is to track changes. But there's a catch: not all file formats are suitable for version tracking. For instance, a JPEG image  is actually a complex matrix of pixel values and positions passed  through a compression algorithm. If you change a JPEG file in any way,  you're essentially creating a brand new file because, while it's  possible to generate the difference (a "diff" or "delta" in software  terminology) between one version and the other, the amount of data  required to represent that likely will be larger than both images  combined.

Text formats are more prevalent than you may think. Besides actual  text files, there are many file formats that are based on raw text. For  instance, HTML and CSS are pure text formats. So is anything based in  JSON or XML, such as the SVG graphics format, the PostScript (PS, the  basis of PDF files) format, source code (PY, JAVA, and so on), and many  more. And just because Git is intended primarily for text, that doesn't  mean you can't make an exception here and there. For very diverse  projects that involve lots of binary (non-text) data, there are tools  like [git-annex](https://opensource.com/life/16/8/how-manage-binary-blobs-git-part-7) and [Git-portal](https://opensource.com/article/19/4/manage-multimedia-files-git) to enable you to benefit from Git without suffering from its aversion to large files.

This article focuses on text files because Git Cola doesn't natively support external Git extensions.

#### Staging files

The first thing you typically do with a file in Git is *stage* it. Staging a file means that you've marked the file for inclusion in  the next code commit. It's little more than a tag, and it's easily  undone. It doesn't change or preserve your data. It's just a way to keep track of what you have in progress.

Once you have a file in your project directory, it's listed in the **Status** pane of Git Cola. Right-click on the file and select **Stage Selected**.

![Staging a file in Git-cola](https://opensource.com/sites/default/files/uploads/git-cola-staging.jpg)

A staged file is marked with a green triangle next to its name. You  can unstage a file basically the same way you staged it: right-click and select **Unstage Selected**.

#### Making a commit

When you're ready to commit a file to Git's permanent history, you make a *commit*. A commit represents exactly what it sounds like: You're committing to  having a file in your Git repository, ostensibly forever.

To commit all staged files, type a brief description of your work in the **Commit** text field. This is the *commit message*, which is visible forever in the repository's Git log. It's a useful  message—sometimes to explain to collaborators what you intended by  committing certain files and other times to remind yourself.


![Committing a file in Git-cola](https://opensource.com/sites/default/files/uploads/git-cola-commit.jpg)

#### Publishing with git push

Right now, your Git project exists only on your local machine. It's  common to use Git to collaborate with others, so it's very common for a  Git repository to exist on a server accessible to others. You can [create a repository](https://opensource.com/life/16/7/creating-your-first-git-repository) on a free Git host like GitLab and interface with it through Git Cola.  Once you've created an empty remote repository, you can add it to Git  Cola.

To add a remote server, click on the **File** menu in Git Cola and select **Edit Remotes**. In the **Edit Remotes** window, click the plus (**+**) symbol in the lower-left corner. In the dialog box that appears, enter a name for the remote and the URL. The name can be anything, but it's  conventional (and therefore expected by most experienced users) for your primary remote to be named **origin**. The URL is provided by your Git host and usually starts with **git@** (there are other protocols, such as **https://** and **git://**, but they have limitations, so they're rarely used).

Once you have a remote configured, you can push your commits to the server.

To push your commits to your remote repository, navigate to the **Actions** menu and select **Push**, or just press **Ctrl+P**. A **git push** sends only your committed files to the server. If a file has never been staged or hasn't been staged since you've made changes, then that data  will not get pushed to the server. Sometimes that's a good thing. Git is designed to be an excellent workspace: You can have works-in-progress  alongside old reliable files without worrying about the two negatively  affecting one another. However, if you forget to add an important file  to staging or to commit what's in staging, then you aren't pushing the  data you think you're pushing.

#### Updating with git pull

If you're working with other people on a project, it's very likely  that they'll commit files to the repository from their own computer. To  keep your work environments in sync, you must regularly perform a **git pull**. To pull all the latest commits from the server, navigate to the **Actions** menu and select **Pull**, or just press **Ctrl+Shift+P**.

#### Everything else

Git Cola can do all the typical Git actions and a few more. And Git  has plenty of great features to help you be creative and daring in the  way you work, with the assurance that the known-good version of what  you've done is safe. [Git branches](https://opensource.com/article/18/5/git-branching), for instance, afford you the ability to have parallel versions of your project existing at the same time, and **git merge** provides you with tools to combine those versions when you decide one  could benefit the other. The possibilities are endless with Git, and  that's why it's so popular.

If unfamiliarity with terminals has held you back from trying Git,  resist no more! Settle in for a nice cold Git Cola, and see what Git  opens up for you.