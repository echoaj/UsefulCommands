# Python
## Enforce PEP8 Convention
`python3 -m pip install black  # only required the first time`\
`black <file_path>`

## Ensure no line exceeds 88 characters
`flake8 . --ignore=E203,W503  --max-line-length=88 --show-source`
