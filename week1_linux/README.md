# README.md

## Introduction

This file aims to explain the steps taken to complete both parts of the challenge. The challenge is divided into two main tasks: creating users and assigning permissions, and creating a system maintenance script.

## Part 1: User Creation and Permission Assignment

### Instructions

1. **Create a User:**
    - Create a new user named `devuser`.
    - Assign a secure password to `devuser`.

2. **Developers Group:**
    - Create a group named `developers`.
    - Add `devuser` to the `developers` group.

3. **Project Directory:**
    - Create a directory named `/opt/devproject`.
    - Change the ownership of the directory to belong to `devuser` and the `developers` group.
    - Assign read, write, and execute permissions to the owner and the group, but only read and execute permissions for other users.

### Commands

```bash
# Create a new user
sudo useradd -m devuser
sudo passwd devuser

# Create the developers group
sudo groupadd developers

# Add devuser to the developers group
sudo usermod -aG developers devuser

# Create the project directory
sudo mkdir /opt/devproject

# Change ownership to devuser and developers group
sudo chown devuser:developers /opt/devproject

# Set the permissions
sudo chmod 770 /opt/devproject

# System Maintenance Script

## Part 2: Creating a System Maintenance Script

### Instructions

Create a Bash script called `system_maintenance.sh` that performs the following tasks:

1. **System Update:**
    - Updates the system packages.
2. **Package Cleanup:**
    - Removes unnecessary packages and cleans the cache.
3. **Disk Status Check:**
    - Displays disk usage.
4. **Active Users Check:**
    - Lists currently connected users.
5. **CPU Processes Check:**
    - Displays the top 5 CPU-consuming processes.

### Script steps to resolve
a. Review all the material
b. Check some web reference and videos on youtube about bash scripting
c. Create script first draft and check results.
d. And finally I did some special review for task 5, to figure it out the `ps` and flags combination to get first 5 consuming process and how to has a .txt output