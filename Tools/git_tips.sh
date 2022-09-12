#-------------------------------------------- Git Commands -------------------------------------------- 

# Remeber User
git config --global user.name “echoaj”
git config --global user.email “aljoslin13@yahoo.com”
# Save User and Password --next time you log in it should save
git config --global credential.helper store
# View git config settings
git config --list
# list all the remote origins in local repo
git remote -v 
# remove file to stop tracking repository from init
rm -rf .git   		
# put types of extensions to make git ignore these files
touch .gitignore 	
# check status of file.
git status   		
# removes file from staging area
git reset app.py
# check the commit you just made
git log 			
# show changes I have made to the code
git diff
# Rename local branch
git branch -m <oldname> <newname>
# Create local branch from remote branch
git checkout -b <new_branch_name> <remote_name>/<remote_branch_name>
# Undo staged file (undo add)
git restore --staged .
# Fetch ALL remote branches
git fetch
# Fetch remote branches not including the remote branches that have been deleted
git fetch -p    # -p is short for --prune

# WORKFLOW BRANCHING
git branch branch_name
git branch 					                        # list local branches
git checkout branch_name 			                # start working out branch_name
git branch 					                        # see what branch you are on
# make whatever file changes and save
git add -A
git commit -m “changes made”
# push branch to remote
git push -u origin branch_name
git branch -a //see all of our branches
# typically, you keep on pushing to remote until 
# you are confident that all of your code is 
# correct and can be pushed to master
# MERGE TO MASTER BRANCH
git checkout master 				                # pull from master branch
git pull origin master
git branch —merged 				                    # tell us what branches we have merged so far
git merge branch_name			                    # merge branch to master
git push origin master 			                    # push changes to remote repo
# DELETE BRANCH
git branch -d branch_name 			                # we don’t need it anymore so we delete it locally but we still have it in
git push origin —delete branch_name 	            # delete branch on our remote repo


# Sync Upstream (when you want to get updated code from repo you forked from)
git remote -v
git remote rm upstream 			                    # if needed
git remote add upstream https:url…		
git fetch upstream				                    # update origin
git checkout master				                    # go to branch you want to merge it with
git merge upstream/master			                # if already on master branch this will merge
# upstream master to your master
git pull origin master –allow—unrelated—histories   # did this because of error


# Create a local repo and push it to remote repo on github
# 1) Create new repo on github
# 2) Create local repo (follow steps below)
git init
git add .
git commit -m “first commit”
git remote add <name> <url>		                    # <name> usually origin
git push --set-upstream origin master               # git push --set-upstream <name> <remote-branch-name>


# Create a local branch and push to newly created remote branch
git branch 
git checkout
git add .
git commit -m "first commit"
# Make Remote branch
git fetch
git branch --set-upstream-to origin/taskgurufinal
# Unfinished

# errors and fixs
# Updates were rejected because the tip of your current branch is behind
git push -f origin master

# Contribute to open soure project
On github project page click fork
git clone https://github.com/echoaj/python-mini-projects.git
# Keep fork in sync before making changes
git remote add upstream https://github.com/Python-World/python-mini-projects.git    # adds upstream repo
git fetch upstream              # gets forked repo's remote branch
git pull upstream master        # pulls code & updates local repo
git push                        # pushes new code to your repo

# Pull Request resource
https://zippyzsquirrel.github.io/squirrel-u/1_SquirrelU/4_GitHub/2_basicConcepts/6_ApproveMerge/

# Resync .gitignore with remote git repo
git rm -r --cached .
git add .
git commit -m ".gitignore is now working"

# remove upstream
git remote remove upstream

# Delete remote branch
git push <remote_name> --delete <branch_name>
git push origin --delete prod # example

# Delete local branch
# First checkout to another branch
git branch -d <branch_name>

# Push local banch to other remote branch
git push -u origin <branch_name>:<remote_branch_name>
git push -u origin prod:S3Main  # example

# View local branches is tracking remote branches
git branch -vv 

# Create local branch from remote branch and track it
git checkout --track origin/<remote_banch_name>
git checkout --track origin/FirebaseMain        # will create local branch called Firebasemain, switch, and track origin/FirebaseMain

# Turn off LF / CRLF line Endings Warning for Windows
git config core.autocrlf true
git config --global core.safecrlf false

# PRIVATE
# if you clone a private repo, you must enter your username and password into the URL
# Like this: https://echoaj25:echovids2u@github.com/echoaj25/UnitConverter.git
# Too add a person to private repo you must to that in the settings in GitHub.
# Then everything is the same from then on.


# A person can't clone a private repo unless they are added to it.
# Or they need change their credentials on the computer

# Let's say I want to switch users from echoaj to eachoaj25
git config --global user.name "Alex Joslin"
git config --global user.email "aljoslinjunk@yahoo.com"
git config --global user.password "******"
git config credential.username "echoaj25"



#-------------------------------------------- Git Tips --------------------------------------------
# Great Commit
Golden rule: Only combine changes from the same topic in a single commit.
# Great Commit Message
1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line

subject: concise description of the change
body: more detailed explanation of the change
    -- Change: What is different from before
    -- Reason: Why this change is needed
    -- Notice: Anything to watch out for or any other details

# Great Branching
1. Use a branch for each new feature
2. Use a branch for each new bug fix
3. Use a branch for each new release
4. Use a branch for each new issue
5. Use a branch for each new task
6. Use a branch for each new experiment
7. Use a branch for each new test
8. Use a branch for each new user story
9. Use a branch for each new epic

Long Running Branches: are branches like main, master that are long lived and are used for all development.
Long Running Branches: Such as develop or staging represent stages of the development or release process.
Don not commit directly to long running branches.

Short Lived Branches: are branches that are short lived and are used for a single feature, bug fix, task, experiment, test, refactor.
Typically short lived branches are based on a long running branch
Typically short lived branches will be deleted after they are merged/rebase into a long running branch.

TWO PUPULAR MODELS FOR BRANCHING
1. GitHub Flow (very simple)
    -- Long Running Branches: main
    -- Short Lived Branches: feature branches
2. GitFlow (more structured)
    -- Long Running Branches: main, develop
    -- Short Lived Branches: feature branches, release branches
    features branches are branched from develop and develop is branched from main

# Pull Requests
They are a way to communicate code and review it.
Let us say you just finished a feature, without a pull request you would just push your code directly to the main, develop ect...
In some cases this may be ok but most of the time you want to review your code before you push it.
A fork is your own personal copy of a git repo

