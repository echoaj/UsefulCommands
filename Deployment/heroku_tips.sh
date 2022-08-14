
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
pip install gunicorn
pip3 freeze > requirements.txt
touch Procile
echo "web: gunicorn app:app" > Procfile
# create app on heroku
# create github repo and upload files
# connect to github repo through heroku

# Access Website Logs
heroku logs --app=finance-tracker-js --tail --num=10 --dyno=web

# Heorku CLI change project path to folder subdirectory
# Don't place the path but the name of the root folder
heroku config:set PROJECT_PATH=<name_of_root>
heroku config:set PROJECT_PATH=src      # Example FileBucket/src

# deploy static website
Add a file called composer.json to the root directory by running touch composer.json
Add a file called index.php to the root directory by running touch index.php
Rename the homepage (e.g. index.html) to home.html
In index.php, add the following line: <?php include_once("home.html"); ?>
In composer.json, add the following line: {}
Run git push heroku master
Add php build pack to the heroku settings for the app

# Deploy Java Spring Boot App (GitHub)
1. Connect to GitHub
2. In the pom.xml file under <build> -> <plugins> add the following:
    """
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.8.0</version>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
            </configuration>
        </plugin>
    """
# That's it!  Don't need to add Java build pack. Heroku detects java from pom.xml file.


# Deploy Node.js App (Heroku CLI)
1. PORT = process.env.PORT || 3000
2. heorku login
3. git init
4. heroku git:remote -a software-quiz
5. git add .
6. git commit -am "initial commit"
7. git push heroku master
