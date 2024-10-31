#!/bin/bash

# Verifica el estado del repositorio
git status

# Solicita un mensaje de commit al usuario
echo "Introduce el mensaje de commit:"
read commit_message
git commit -m "$commit_message"

# Verifica el estado nuevamente
git status

# Sincroniza con la rama principal
git pull origin main
git push origin main

