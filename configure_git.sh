#!/bin/bash

# First argument is user.name.
# Second argument is email address.

git config --global user.name $1
git config --global user.email $2
# Use nano as editor, wrapping lines after 72 characters
# http://git-scm.com/book/ch5-2.html#Commit-Guidelines
git config --global core.editor "nano -r 72"
