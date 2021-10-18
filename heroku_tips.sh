
# DEPLOY FLASK APP USING HEROKU CLI

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

