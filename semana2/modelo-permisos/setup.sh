#!/bin/bash

set -e

# Instalar herramienta de ACL
sudo apt update -y
sudo apt install -y acl

# Crear grupos
getent group developers || sudo groupadd developers
getent group auditors || sudo groupadd auditors

# Crear usuarios
id dev1 &>/dev/null || sudo useradd -m -g developers -s /bin/bash dev1
id dev2 &>/dev/null || sudo useradd -m -g developers -s /bin/bash dev2
id auditor1 &>/dev/null || sudo useradd -m -g auditors -s /bin/bash auditor1

# Crear directorio del proyecto
sudo mkdir -p /srv/project
sudo chown :developers /srv/project
sudo chmod 2760 /srv/project

# Crear archivo de ejemplo
sudo touch /srv/project/app.py
sudo chown :developers /srv/project/app.py
sudo chmod 640 /srv/project/app.py

# Aplicar permisos específicos al usuario auditor
sudo setfacl -m u:auditor1:r /srv/project/app.py
sudo setfacl -m u:auditor1:x /srv/project
sudo setfacl -m d:u:auditor1:r /srv/project