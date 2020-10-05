---
title: "labNotes"
author: "Valentina Gonzalez Rostani"
date: "4/10/2020"
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Beggining with Git

## Introduction
Hi! This is a labnote that aims to explain how to create a _git repository_ and connect it with _gitHub_. In what follows, I explain how to create a git repository, then I provide instructions to clone the remote repository and how it can be used to create the *website* "Not so accurate: Why accuracy is poor performance metric for computational social science applications" 

## Create a new git repository
The first step is to create your git repository in the right directory. For doing that we are going to use _git init_, but be careful, you need to first posit yourself in the directory. 

* Go intro your directory, the place were you have the files that you want to share with your co-author. 
* Type _git init_, this command has the function fo setting up a rep
* Work! Here you should create the files that you need for example a _Readme.md_ file explaining what is the contents of your repository. 
* Once you have all your files you should type _git add_ and the names of the files that you want to add. For example: _git add Readme.md Myproject.txt_. This command basically “stage” files and directories until the next commit.
* Then, type _git commit_ by doing this you are telling your computer "I'm done, and ready to commit the changes". By doing this, git will save a "photo"of your repo until that moment and will assign a new _commit id_ to identify the stage.
* After you commited git will give you the option of providing a brief description of what you are doing. This step is very important to avoid fogetting what you were doing, so write something! Don't be scared once you finish writting your description, in my first attemp I did not know how to escape! If you are using Window Shell you can write _Ctrl + X_ and then _Y_ or _N_ depending if you want to write out. If you are using vim just write _:wq_. Another shorter way is to write:

```
git commit -m "This is the description of the commit"
```

Congratulation! You have your first git repository!

## Connect your git repository to github

### Starting by GitHub
If you want to work with others then you need more than a local repository, you need to build a home in github. So, the step zero is to *register in gitHub*. 

Following, I will continue explaining assuming you have your account ready.

* Go to [GitHub](https://github.com/)
* Login into your account
* Create a new repository, here you can click the green button at the top that says _New_ or you can go directly making click [here](https://github.com/new). 
* Here you should follow the instructions of _GitHub_
  * start by defining a repository name
  * You can also add a description. 
  * You have to decide if your repo is going to be public or private
  * You can also choose to add a README file. This is a file where you can write a long description for your project. This is useful for you, but also to share with other people that can read this file and understand what is inside of the repo. 
* Once you completed the mandatory steps such as defining a name you will be able to press the button _Create repository_

### Pushing your local repository to _GitHub_
Now, you have a local git repository in your computer, and another one your GitHub account. The next step is to connect these two things. For doing this, we are going to use _git remote_ and _push_.  


```
git remote add repo https://github.com/username/your_new_repo
```
For example in my case I would write: git remote add repo https://github.com/gonzalezrostani/Assignment-6

It is worth to notice that instead of repo you can write any name you want.

Now, we need one step more! We have to push it: 

```
 git push -u repo master
```
Then you will be asked for your username and password. 

## Contribute with others: clone a repository
If you want to clon a repository and colaborate, I will provide here some of the steps you should follow. As an example, I will explain how to clone my _Assignment-6_ repository, which is an assignment for my class Scientific Computation for Social Scientists, Instructor [Michael Colaresi](https://github.com/colaresi). 

* Go to the repository on github (for example, [Assignment-6](https://github.com/gonzalezrostani/Assignment-6))
* Click the button that says "Fork" at the top right.
* Then, you will see among your repositories my repo in your github account. It will have a description saying: _Forked from gonzalezrostani/Assignment-6_

Now, we are going to work in your terminal/shell. That is open your shell, in my case I opened Ubuntu. Then you should type: 

```
git clone https://github.com/username/call_the_repo_you_are_cloning
```
where _username_ is your account, and _call the repo you are cloning_ will be _Assignment-6_. In my example:

```
git clone https://github.com/gonzalezrostani/Assignment-6
```
* Once you clone the repo in your computer you can change the directory and start to work directly in the directory

```
cd Assignment-6
```
Once you are here, you can see what are the files inside by typing _ls_

### Make
Now, I want to invite you to create my _Website_ about "Not so accurate: Why accuracy is poor performance metric for computational social science applications", and let me make you aware that this step is going to be easy!

I assume you are in your shell, and your _pwd_ is my repo _Assignment-6_, if your answer is yes, let' continue! Now you just type: 

```
make
```
By typing make, then the Makefile that is inside of my repo will be executed. After that you will see that the target that I used are created. For example after running check that you will have a file called _"content.md"_. If you don't want then you can write: 

```
make clean
```
This line will eliminate the target of the makefile. 

As you can see now in your directory you see my outcome _Website.html_

### Working in the clonned repository

After all these steps you have now a local copy of your version of the repository.  At this step you can also add a connection to the orignal owner repository

```
git remote add owner git://github.com/owner/call_the_repo_you_are_cloning
```
To check this remote you can write "git remote -v" and you will see a list like this example, where I clonned the repository of the assignment:

```
colaresi        git://github.com/colaresi/ScientificComputationAssignment67 (fetch)
colaresi        git://github.com/colaresi/ScientificComputationAssignment67 (push)
origin  https://github.com/gonzalezrostani/ScientificComputationAssignment67 (fetch)
origin  https://github.com/gonzalezrostani/ScientificComputationAssignment67 (push)
```
Now, you can work. Remember, that if you make changes in any of the files you should then write _git add Name of the file_, then _git commit_, and add a description. Then, to send to _GitHub_ in your repo, you should write _git push_. This means that you have changed a file in *your clonned repository*. 

### Proposing changes to the clonned repository
* After this change, for example in my file _Makefile_ you will see the last commitment in your _Github_ and there will be a message saying _"This branch is 1 commit ahead of gonzalezrostani:master."_ (or more than one, depending on how many commits you have done). 
* Here you can press the button at the top "Pull Request" to ask the master of the repository to add this branch.  

I would be happy if you pull request to my git repository. 

 Thanks!
