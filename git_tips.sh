#-------------------------------------------- Git Tips -------------------------------------------- 

# Remeber User
git config —global user.name “echoaj”
git config —global user.email “aljoslin13@yahoo.com”
# Save User and Password --next time you log in it should save
git config --global credential.helper store
# View git config settings
git config —list
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

# PRIVATE
# if you clone a private repo, you must enter your username and password into the URL
# Like this: https://echoaj25:echovids2u@github.com/echoaj25/UnitConverter.git
# Too add a person to private repo you must to that in the settings in GitHub.
# Then everything is the same from then on.
