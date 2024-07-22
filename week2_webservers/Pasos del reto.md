# README.md

## Introduction

Objetivo: Configurar un entorno utilizando Vagrant y Nginx para hostear la aplicación React app desde el repositorio proporcionado. 

## Pasos antes del ejercicio

Tuve problemas con vagrant con la version para macOS y tuve que realizar estos pasos:

https://dev.to/luizgadao/easy-way-to-change-ruby-version-in-mac-m1-m2-and-m3-16hl

        Ya que para ARM la version que tenía dejó de funcionar despues de una actualización. Es interesante ya que la version de Ruby que viene en las macOS es bastante viejo y se recomieda actualizarlo
        ruby 2.6.10p210 (2022-04-12 revision 67958) [universal.arm64e-darwin23]

        Se actualizó la version de Ruby a la 3.3.4
        y la version de nokogiri arch -arm64 gem install nokogiri

        Se vuelve a instalar Vagrant con la version 2.4.2

        Se vuelve a instalar el plugin de parallels

        OK para iniciar el lab

## Paso 1: Preparación de la Aplicación de React
git clone https://github.com/falconcr/react-demo se ejecuta correctamente.
                                ### error al ejecutar
                                    pc@pcserver:~/react-demo$ npm install
                                    Command 'npm' not found, but can be installed with:
                                    sudo apt install npm
                                    Ser procede a instalar  sudo apt install npm

    npm install
    npm run build

Al chequear el directorio si esta /build

## Paso 2: Configuración de Nginx

    sudo apt-get update
    sudo apt-get install nginx

- en el directorio de /etc/nginx/sites-available existe un archivo llamado default

### Cambiando por la info de mi proyecto.
    
    sudo nano react-demo
    
    Usando esta configuración para el archivo:
        server {
            listen 80;
            server_name 10.211.55.9;

            location / {
                root /home/pc/react-demo/build;
                try_files $uri $uri/ /index.html;
            }
        }

**Dar permisos par aque NGINX use el proyecto:**
sudo chown -R www-data:www-data /home/pc/react-demo/build
sudo chmod -R 755 /home/pc/react-demo/build
sudo chmod 755 /home/pc
sudo systemctl restart nginx

### Activar el Sitio y Reiniciar Nginx:
    sudo ln -s /etc/nginx/sites-available/react-demo /etc/nginx/sites-enabled/ 

    revisar cuales symbolics links existen y confirmar que exite el que cree
    sudo ln -s /etc/nginx/sites-available/react-demo /etc/nginx/sites-enabled/

    Reiniciar NGINX para ver que funcione
    sudo systemctl restart nginx

## Paso 3: Verificación
http://10.211.55.9
Obtengo la misma pantalla.