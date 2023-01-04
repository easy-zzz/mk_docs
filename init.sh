#!/usr/bin/env fish

set p (command -v python3)
$p -V

# Neoformat: no change necessary
if ! test -d .venv
    echo yes
    $p -m venv .venv
else
    echo venv install yes
end

# set pi (command -v pip)
# $pi -V

pi -r requirements.txt
pi mkdocs-minify-plugin mkdocs-redirects
npm install
