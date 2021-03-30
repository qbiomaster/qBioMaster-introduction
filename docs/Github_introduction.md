---
title: github introduction
tags: presentation
slideOptions:
  theme: dark
  transition: 'fade'
spotlight:
    enabled: true
progress: true
---

<style>
.reveal {
  font-size: 18px;
}
</style>

# github introduction

*version mar18/21*

---


## Why do we need to keep versions of our work?


1. Sometimes we skrew up and need to come back to a previous version<!-- .element: class="fragment" -->

![](https://i.imgur.com/Rs54oxr.png)


---


## Why do we need to keep versions of our work?

1. Sometimes we skrew up and need to come back to a previous version
2. We may want to give the text to someone for corrections

![](https://i.imgur.com/F52IBTS.png)

---


## Why do we need to keep versions of our work?

3. Our current version of the document is corrupted !


![](https://i.imgur.com/Pydqnqa.png)

---

# Old school method...

This method relies on saving the same file over and over again with different names...<!-- .element: class="fragment" -->

![](https://i.imgur.com/3SUTQIS.png)<!-- .element: class="fragment" -->

- it is cumbersome! <!-- .element: class="fragment" -->
- difficult to track changes between versions<!-- .element: class="fragment" -->
- needs discipline<!-- .element: class="fragment" -->
- who wants to continue doing this!<!-- .element: class="fragment" -->

---


# Welcome to version control

## but what is version control?<!-- .element: class="fragment" -->

---


# code versions

pyHiM-v1.py 10 months ago

```python=
    if args.rootFolder:
        rootFolder = args.rootFolder
    else:
        rootFolder = os.getcwd()

    print("parameters> rootFolder: {}".format(rootFolder))
    now = datetime.now()

    labels2Process = [
        {"label": "fiducial", "parameterFile": "infoList_fiducial.json"},
        {"label": "barcode", "parameterFile": "infoList_barcode.json"},
        {"label": "DAPI", "parameterFile": "infoList_DAPI.json"},
        {"label": "RNA", "parameterFile": "infoList_RNA.json"},
    ]
```
<!-- .element: class="fragment" -->

pyHiM-v220.py yesterday<!-- .element: class="fragment" -->

```python=
    runParameters=HiM_parseArguments()

    HiM = HiMfunctionCaller(runParameters, sessionName="HiM_analysis")
    HiM.initialize()
    session1, log1=HiM.session1, HiM.log1

    HiM.lauchDaskScheduler()

    for ilabel in range(len(HiM.labels2Process)):
```
<!-- .element: class="fragment" -->

---

# tracking changes

### from day to day, there are smaller differences though<!-- .element: class="fragment" -->


```python=
    for ilabel in range(len(HiM.labels2Process)):
        print("Analyzing label: 1")
```
<!-- .element: class="fragment" -->

```python=
    for ilabel in range(len(HiM.labels2Process)):
        print("Analyzing label:{}".format(nlabel))
```
<!-- .element: class="fragment" -->

**How do we automatically spot differences?** <!-- .element: class="fragment" -->

---


# diff tools


**Diff** is a way to calculate automatically the differences between any two text documents (can be markdown, python, etc). 

---

# diff command  - ca 1974

![](https://i.imgur.com/cr0XFlz.png)


---

# diff command  - today

![](https://i.imgur.com/YL9h1wF.png)

---

# GUI-based diffs

- diffMerge, kdiff3, etc 

![](https://i.imgur.com/JzphqOu.png) <!-- .element: class="fragment" -->


---

# git

Git is an **Open Source Distributed Version Control System**. Now that’s a lot of words to define Git.

- **Control System:** This basically means that Git is a content tracker.<!-- .element: class="fragment" -->
- **Version Control System**: The code which is stored in Git keeps changing as more code is added. So Version Control System helps in handling this by maintaining a history of what changes have happened.<!-- .element: class="fragment" -->
- **Distributed Version Control System**: Git has a remote repository which is stored in a server and a local repository which is stored in the computer of each developer. <!-- .element: class="fragment" -->

This means that the code is not just stored in a central server, but the full copy of the code is present in all the developers’ computers.<!-- .element: class="fragment" -->

Git is a Distributed Version Control System since the code is present in every  developer’s computer. <!-- .element: class="fragment" -->

---

# commits


```python=
        print("Analyzing label: 1")
```

```python=
        print("Analyzing label:{}".format(nlabel))
```

A commit is a way to stamp a change to a file or list of files. <!-- .element: class="fragment" -->

every time you do a commit, you usually provide a *commit message* that best describes the change you made.<!-- .element: class="fragment" -->


This will be useful in the future if you want to identify what you did in every commit.<!-- .element: class="fragment" -->


In every commit you only really record ***the changes*** that were made with respect to last commit!<!-- .element: class="fragment" -->

---

# commits

<a href="#">
  <img class="r-frame" src="https://i.imgur.com/yNh9Xau.png" width="200">
</a>

Each of these comments means a <commit> has been made !<!-- .element: class="fragment" -->

---

# What is a branch?


a branch is a time-connected series of commits. In the image below, you see a single branch.<!-- .element: class="fragment" -->

<img src="https://i.imgur.com/qAnyGx9.png" width="300">
<!-- .element: class="fragment" -->

---

# branches

Up until now we have not created any branch in Git. By default, Git commits go into the **master** branch.

<img src=https://i.imgur.com/IZtCanu.png width="300">


---

# branches

You can also have parallel branches. This means that several parallel versions of your code exist in the repository.

![](https://i.imgur.com/EpPxx1R.png)

---

# branches

<section data-background-color="rgb(70, 70, 255)">
  <h2>This can get very complex indeed!</h2>
</section>

![](https://i.imgur.com/tf74ciq.png)

---

# branches

Our example for pyHiM

<img src=https://i.imgur.com/vSATZOF.png width="400">


---

# Why are multiple branches needed?

Multiple branches are needed to support multiple parallel developments. <!-- .element: class="fragment" -->

These can be made without breaking the code base!<!-- .element: class="fragment" -->


![](https://i.imgur.com/tf74ciq.png)<!-- .element: class="fragment" -->

The Test Branch and the Master Branch have diverged here and have different code — the code from Test Branch can be merged with the Master.<!-- .element: class="fragment" -->

---

# Github 

![](https://i.imgur.com/ziDpJiw.png)

---

# Github 

- online system for synchronizing local git repository <!-- .element: class="fragment" -->
- Can host public and private repositories<!-- .element: class="fragment" -->
- does not do well with large files (e.g. large images)<!-- .element: class="fragment" -->

---

# interacting with github

- create account<!-- .element: class="fragment" -->
- create repository<!-- .element: class="fragment" -->
- clone locally<!-- .element: class="fragment" -->
- copy content locally<!-- .element: class="fragment" -->
- ready to synchronize!<!-- .element: class="fragment" -->

---

# git push, pull, commit, add

- **git add**: first need to add files to the local tracking system<!-- .element: class="fragment" -->
- **git commit**: everytime tracked files change, you need to commit changes locally<!-- .element: class="fragment" -->
- **git push**: these changes are then *pushed* to the repository online (e.g. github)<!-- .element: class="fragment" -->
- **git pull**: If you want to get the changes you made from another local repository (e.g another computer), then you need to do git pull.<!-- .element: class="fragment" -->

Do your own tutorial here:<!-- .element: class="fragment" -->
https://lab.github.com/<!-- .element: class="fragment" -->

---


# GitHub

Here we will be using GitHub for the remote repository.

Go to https://github.com/ and create an account.

After registering in the GitHub homepage, click on **Start a Project** to create a new Git repository. Give the repository a name and click “Create Repository”

Give the name as `git-blog-demo`.

This will create a remote repository in GitHub, and when you open the repository, a page like the image below will open up:

![img](https://cdn-media-1.freecodecamp.org/images/LWpWCg5LTo7m-IkZW1io-194VWZ61di5CIGY)

The repository URL is the highlighted portion `**https://github.com/aditya-sridhar/git-blog-demo.git**`

---


# Using a Graphical User Interface: Git Cola 

Get started with Git Cola, a graphical user interface for Git.

To install Git Cola on Linux, open your application installer (called **Software** on GNOME) from your **Applications** menu and search for **git-cola** and install it.

![Search for Git-cola installation](https://opensource.com/sites/default/files/uploads/application-installer-search.png)

On macOS, you can use Homebrew to install it. Search for **git-cola** and install.

On Windows, use [Chocolatey](https://opensource.com/article/20/3/chocolatey) to install. Search for **git-cola** and install.


---

#### Launch Git Cola

- Start Git Cola from your Application menu. Since it's a graphical interface for Git, you won't be typing commands.

- When Git Cola starts, it doesn't have any repositories. Just as a  word processor or music player isn't of much use without a file loaded,  Git Cola isn't very useful without a project loaded into it. If you have a Git repository that you need to contribute to, you can clone it by  clicking the **Clone** button in the lower-left Git Cola window. Otherwise, click the **New** button.

![Git-cola splash screen](https://opensource.com/sites/default/files/uploads/git-cola-splash.png)


---

# Launch Git Cola

- Create a new directory called **example-project.git** somewhere on your hard drive. The folder doesn't have to end in **.git,** but it's a convention for a Git repository to end in **.git**, so it's a good idea to get into the habit of appending that to the end  of a project. 
- And that's an important concept in Git: The directory you  create to house a project is actually a Git repository. 
- It's hard to  tell without digging around for it, but there's a hidden directory  inside your project folder called **.git**, and it contains important history and configuration files so that changes you make inside that project can be tracked.


---

# Launch Git Cola

Git Cola's main interface looks pretty lonely and empty at this stage.

![empty Git-cola window](https://opensource.com/sites/default/files/uploads/git-cola-main.jpg)

It's up to you to populate your project with files, so for the  moment, leave Git Cola behind. Using your OS's file manager (Files on  GNOME, Finder on macOS, Explorer on Windows), add some files to your  project directory on your hard drive.


---

# Files types compatible with Git

- Git is primarily intended for use with text-based formats.  
- Technically, Git doesn't really care what kinds of files you add to your project. Its job is to track changes. 
- But there's a catch: not all file formats are suitable for version tracking. 
- For instance, a JPEG image  is actually a complex matrix of pixel values and positions passed  through a compression algorithm.
-  If you change a JPEG file in any way,  you're essentially creating a brand new file because, while it's possible to generate the difference (a "diff" or "delta" in software  terminology) between one version and the other, the amount of data  required to represent that likely will be larger than both images combined.

---

# Files types compatible with Git


- Text formats are more prevalent than you may think. Besides actual  text files, there are many file formats that are based on raw text. 
- For  instance, HTML and CSS are pure text formats. So is anything based in JSON or XML, such as the SVG graphics format, the PostScript (PS, the  basis of PDF files) format, source code (PY, JAVA, and so on), and many  more. 
- And just because Git is intended primarily for text, that doesn't  mean you can't make an exception here and there. 
- For very diverse  projects that involve lots of binary (non-text) data, there are tools  like [git-annex](https://opensource.com/life/16/8/how-manage-binary-blobs-git-part-7) and [Git-portal](https://opensource.com/article/19/4/manage-multimedia-files-git) to enable you to benefit from Git without suffering from its aversion to large files.

This article focuses on text files because Git Cola doesn't natively support external Git extensions.

---

# Staging files

- The first thing you typically do with a file in Git is *stage* it. Staging a file means that you've marked the file for inclusion in  the next code commit. 
- It's little more than a tag, and it's easily  undone. It doesn't change or preserve your data. It's just a way to keep track of what you have in progress.
- Once you have a file in your project directory, it's listed in the **Status** pane of Git Cola. Right-click on the file and select **Stage Selected**.

![Staging a file in Git-cola](https://opensource.com/sites/default/files/uploads/git-cola-staging.jpg)

A staged file is marked with a green triangle next to its name. You  can unstage a file basically the same way you staged it: right-click and select **Unstage Selected**.


---

# Making a commit

When you're ready to commit a file to Git's permanent history, you make a *commit*. A commit represents exactly what it sounds like: You're committing to  having a file in your Git repository, ostensibly forever.

To commit all staged files, type a brief description of your work in the **Commit** text field. This is the *commit message*, which is visible forever in the repository's Git log. It's a useful  message—sometimes to explain to collaborators what you intended by  committing certain files and other times to remind yourself.


![Committing a file in Git-cola](https://opensource.com/sites/default/files/uploads/git-cola-commit.jpg)


---

# Publishing with git push

Right now, your Git project exists only on your local machine. It's  common to use Git to collaborate with others, so it's very common for a  Git repository to exist on a server accessible to others. 

You can [create a repository](https://opensource.com/life/16/7/creating-your-first-git-repository) on a free Git host like GitLab and interface with it through Git Cola.  

Once you've created an empty remote repository, you can add it to Git  Cola.

To add a remote server, click on the **File** menu in Git Cola and select **Edit Remotes**. In the **Edit Remotes** window, click the plus (**+**) symbol in the lower-left corner. 

In the dialog box that appears, enter a name for the remote and the URL. The name can be anything, but it's  conventional (and therefore expected by most experienced users) for your primary remote to be named **origin**. 

The URL is provided by your Git host and usually starts with **git@** (there are other protocols, such as **https://** and **git://**, but they have limitations, so they're rarely used).


---

# Publishing with git push

Once you have a remote configured, you can push your commits to the server.

To push your commits to your remote repository, navigate to the **Actions** menu and select **Push**, or just press **Ctrl+P**. 

A **git push** sends only your committed files to the server. If a file has never been staged or hasn't been staged since you've made changes, then that data  will not get pushed to the server. Sometimes that's a good thing.

Git is designed to be an excellent workspace: You can have works-in-progress alongside old reliable files without worrying about the two negatively affecting one another. However, if you forget to add an important file to staging or to commit what's in staging, then you aren't pushing the  data you think you're pushing.


---

# Updating with git pull

If you're working with other people on a project, it's very likely  that they'll commit files to the repository from their own computer. 

To  keep your work environments in sync, you must regularly perform a **git pull**. To pull all the latest commits from the server, navigate to the **Actions** menu and select **Pull**, or just press **Ctrl+Shift+P**.


---

# Everything else

- Git Cola can do all the typical Git actions and a few more. 
- And Git  has plenty of great features to help you be creative and daring in the  way you work, with the assurance that the known-good version of what  you've done is safe. 
- [Git branches](https://opensource.com/article/18/5/git-branching), for instance, afford you the ability to have parallel versions of your project existing at the same time, and **git merge** provides you with tools to combine those versions when you decide one  could benefit the other. 
- The possibilities are endless with Git, and  that's why it's so popular.