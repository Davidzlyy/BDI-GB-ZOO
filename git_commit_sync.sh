#!/bin/bash

git status

echo "Introduce el nombre de lo que quieres agregar"
read add_name
git add $add_name

echo "Introduce el mensaje de commit:"
read commit_message
git commit -m "$commit_message"

git status

git pull origin main
git push origin main

