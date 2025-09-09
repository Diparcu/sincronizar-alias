#!/bin/bash
cd /home/diego/Codigo/sincronizar-alias || exit 1

# Actualizar desde git
git pull --quiet

# Copiar el archivo actualizado a /etc/profile.d/
sudo cp aliases.sh /etc/profile.d/aliases.sh
sudo chmod 644 /etc/profile.d/aliases.sh
