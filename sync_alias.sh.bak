#!/bin/bash
cd /HDD4TB3/home/diego/Codigo/sincronizar-alias || exit 1

# Sincronizar con Git
git pull --quiet
git add --all
git commit -m "Sync automático $(hostname) $(date)" --quiet || true
git push --quiet
