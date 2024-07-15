# Create devuser
sudo useradd -m -s /bin/bash devuser

# Create devuser password
sudo passwd devuser

# Create developers group
sudo groupadd developers

# Add devuser to  developers group
sudo usermod -aG developers devuser

# Create directory /opt/devproject
sudo mkdir -p /opt/devproject

# Change properties
sudo chown devuser:developers /opt/devproject

# Assign properties
sudo chmod 770 /opt/devproject