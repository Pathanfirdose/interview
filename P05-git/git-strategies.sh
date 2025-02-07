 #sharing code and versioning,git is distributed version control system
 #centralised vcs
 cvs
 svn
 #distributed vcs
 git

fork is a copy of original source code which will be in local system

git vs github



git init #
git status
git add <file-name> #git will keep the track
git diff #to see the changes made to code
git commit -m "this is v1"
git add <file-name>
git commit -m "this is v2"
git log
git reset --hard <commit id> #to come to previos version
Git branching strategy
Master
main
feauture
release
hot fix branches

git add .
git commit -m "message"
git push origin main
git pull
git fetch

how to create git repo 
git init

git remote -v

clone vs fork

git checkout -b <branch-name>
git checkout main

git log <branch-name>
git checkout <branch-name> && git log #both are same

git cherry-pick <commitid> #to merge from another branch into main

git log --oneline #to see logs in short

git merge vs git rebase
both merge the code but with rebase we get linear history

