# Python Virtual Environment

## Start Python Virtual Environment
(Windows Only)\
`python -m venv path/to/app_name`
`.\django\Scripts\Activate.ps1`\
[Resource](https://docs.python.org/3/library/venv.html)

## Display System Path Variables.
```
echo %PATH%
```
This is where the console will look for program names to run.\
When you type `python3 app.py` it will search for `python.exe` in.

# NodeJS & NPM
## Create package.json
`npm init`\
`npm init -y` to skip questions.
## Download dependencies
`npm install`\
`npm i` 

### Generate Icons of different sizes
npx pwa-asset-generator img.png icons

### Firebase Storage & Google Cloud CLI
#### How to enable cors on firebase project
1. Download Google Cloud CLI
2. Log in using the CLI
3. Create cors.json file in the project directory and type the code below.
```
[
  {
    "origin": ["*"],
    "method": ["GET"],
    "maxAgeSeconds": 3600
  }
]
```
1. Navigate to the directory containing cors.json with the Google Cloud CLI
2. In the CLI type: `gsutil cors set cors.json gs://<app_name>.appspot.com`

## Generate gitignore file CLI
gen gitignore