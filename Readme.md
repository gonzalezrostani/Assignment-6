# Read Me: Dev
In this branch I changed my Makefile. I aim to create both an html file and a pdf file with pandoc (2 targets).

## Creating a new branch
If you want to create a new branch you should type
```
git checkout -b dev
```
where _dev_ in this case is the name of the new brach. Then you can use a very similar code to move from one branch to the other. For example, imagine I want to come back to the master then I will type _git checkout master_

To confirm in which branch you are you should type:
```
git branch -a 
```
This will signalize where you are and which are the other branches. The outcome will be something like this: 
```
* dev
  master
  remotes/repodev/dev
  remotes/repodev/main
  remotes/repodev/master
  remotes/valentina/master
  ```
  The * symbol shows where you are working. In this example master is another branch in my local repo. Then I also have remotes lines, which are the remotes depo that I have commited. 
  
  ## Connecting the new branch with your _GitHub_
  This is a relatively similar process as the one I explained in the [labNote](https://github.com/gonzalezrostani/Assignment-6/blob/master/labNotes.md), but now you should be carefull because once you remote and push your new branch, then if you continue working in your local repository you will have to add an extra step. 
  
  To sum: 
  * The first time you push a branch:
    * git remote add repodev https://github.com/gonzalezrostani/Assignment-6
    * git push -u repodev dev
  * Once you have your branch in the remote, then if you want to change a file from your local repository you should
    * git pull: this will compare the branches and confirm that there are no conflict between your local repo and the remote. You will see a message like this

```
remote: Enumerating objects: 85, done.
remote: Counting objects: 100% (83/83), done.
remote: Compressing objects: 100% (73/73), done.
remote: Total 79 (delta 42), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (79/79), done.
From https://github.com/gonzalezrostani/Assignment-6
   011f70d..8220566  dev        -> repodev/dev
 * [new branch]      main       -> repodev/main
 * [new branch]      master     -> repodev/master
Merge made by the 'recursive' strategy.
 Readme.md | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)
 ```

  * Then, you can pus _git push_
