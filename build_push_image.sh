#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 mokacinno/item-app:v1

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u mokacinno --password-stdin

# Mengunggah image ke Docker Hub
docker push mokacinno/item-app:v1
