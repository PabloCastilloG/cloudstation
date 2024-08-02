# Pasos para el reto 2:
## a. Crea red para el app
docker network create teemii-network

## b. Crea volumenes perisistentes
docker volume create teemii-data

## c. BE
name: teemii-backend 
docker run -d --name teemii-backend  -p 3000:3000 -v teemii-data:/app/data --network teemii-network dokkaner/teemii-backend:develop

## d. FE
name: teemii-frontend
docker run -d -p 8080:80 --name teemii-frontend --network teemii-network dokkaner/teemii-frontend:develop