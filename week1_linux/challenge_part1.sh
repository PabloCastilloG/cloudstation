#!/bin/bash

# Crear un nuevo usuario llamado devuser
sudo useradd -m -s /bin/bash devuser

# Asignar una contraseña segura a devuser
echo "Asigna una contraseña para devuser:"
sudo passwd devuser

# Crear un grupo llamado developers
sudo groupadd developers

# Agregar devuser al grupo developers
sudo usermod -aG developers devuser

# Crear un directorio llamado /opt/devproject
sudo mkdir -p /opt/devproject

# Cambiar la propiedad del directorio para que pertenezca a devuser y al grupo developers
sudo chown devuser:developers /opt/devproject

# Asignar permisos de lectura, escritura y ejecución al propietario y al grupo, pero solo permisos de lectura y ejecución para otros usuarios
sudo chmod 770 /opt/devproject

echo "Tareas de mantenimiento completadas."