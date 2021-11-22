
# DEPLOY FLASK APP USING HEROKU CLI

# Flask Directory Hierarchy
https://flask.palletsprojects.com/en/2.0.x/tutorial/layout/?highlight=gitignore

# Sign up
# Creat new app on Heroku.com
# Download Heroku CLI
# If download fails, go to environment variables and edit
# the path too c:\Program Files\heroku\bin
# Download Git Bash
heroku  # to see if it works

# Open flask app from root directory
# Edit imports
# Remove debug=True from app.run()

# Using git bash navigate to project directory
pip3 install gunicorn   # installs heroku server
touch Procfile
# In profile type: web: gunicorn app:<file_name_where_main_is_at>
pip freeze > requirements.txt

git init
git add .
git commit -am "initial commit"

heroku login
control c
heroku git:remote -a task-manger-tcs
git push heroku master

heroku logs --tail

# deploy flask on heroku trough github
touch .gitignore
# Place the followng below in .gitignore file
https://flask.palletsprojects.com/en/2.0.x/tutorial/layout/?highlight=gitignore
or
https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore
# Add requirements.txt, Procfile, install gunicorn
pip3 install --upgrade pip --user
pip3 freeze > requirements.txt
pip install gunicorn
touch Procile
echo "web: gunicorn app:app" > Procfile
# create app on heroku
# create github repo and upload files
# connect to github repo through heroku