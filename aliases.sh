# Alias personalizados - Inicio

## Una serie de alias agregados por miii DIO (Diego)
alias ñs='ls'
alias ñs='l'

alias espacios='df -h'
alias espacio='df -h'

alias instalar='actualizar && sudo apt install'
alias instala='actualizar && sudo apt install'

alias desinstalar='sudo apt remove -y '
alias desinstala='sudo apt remove -y '

alias eliminar='rm -rf'
alias elimina='rm -rf'

# Rutas predefinidas
alias frontend="cd /var/www/html/"
alias front="cd /var/www/html/"

alias backend="cd /var/www/backend/"
alias back="cd /var/www/backend/"

alias bagdad-back="cd /var/www/backend/bagdad-back"

alias bagdad-front="cd /var/www/html/bagdad-front"

alias materiales="clear && cd /var/www/html/gestion_materiales && ls"

#alias services="cd src/app/services/"
alias system="cd /etc/systemd/system/"

alias torrc="sudo nano /etc/tor/torrc"

alias codigo="cd ~/Codigo"


alias escritorio='clear && cd ~/Desktop && ls'
alias desktop='clear && cd ~/Desktop && ls'

alias descargas='clear && cd ~/Descargas && ls'
alias downloads='clear && cd ~/Descargas && ls'

# Homes
alias home='cd ~'
alias ~='cd ~'
alias casa='cd ~'
alias diego='clear && cd /HDD4TB3/home/diego && ls'
alias booru='clear && cd /HDD4TB3/home/booru && pwd && ls'

function home() {
    if [ -z "$1" ]; then
        echo "Falta nombre de usuario. Uso: home \"usuario\""
        return 1
    fi
    cd /HDD4TB3/home/"$1"
}


# Rutas desarrollo web
alias www='cd /var/www/'
alias html='cd /var/www/html'

# Desarrollo angular y laravel 
alias ngserve='frontend && ng serve --host=0.0.0.0 --port=4200'

alias sitios='cd /etc/apache2/sites-available/'
alias sites-enabled='cd /etc/apache2/sites-enabled'
alias sitios-activos='cd /etc/apache2/sites-enabled'


# APT
alias actualizate='sudo apt update -y'
alias actualizar='sudo apt update -y'
alias actualiza='sudo apt update -y'

alias update='sudo apt update -y'
alias updatear='sudo apt update -y'

alias upgradear='sudo apt update && sudo apt upgrade -y'
alias upgrade='sudo apt update && sudo apt upgrade -y'

# Instrucciones generales

alias shutdown='sudo shutdown -h now'
alias apagar='sudo shutdown -h now'

alias reiniciar='sudo reboot now'
alias reiniciate='sudo reboot now'
alias reboot='sudo reboot now'

alias ..='cd ..'
alias ipconfig='ifconfig'

alias clera='clear'
alias clar='clear'
alias clea='clear'
alias cler='clear'
alias carle='clear'
alias cclear='clear'
alias cñear='clear'
alias cler='clear'
alias claer='clear'
alias cear='clear'
alias cñlar='clear'
alias clrea='clear'
alias ckear='clear'
alias clwear='clear'
alias clkear='clear'

# Permisos
permisos() {
    usuario="$1"
    if [ -z "$usuario" ]; then
        echo "Uso: permisos <usuario>"
        return 1
    fi
    sudo chown -R "$usuario":"$usuario" /home/"$usuario" /HDD4TB1/home/"$usuario" /HDD4TB2/home/"$usuario" /HDD4TB3/home/"$usuario"
    sudo chmod -R 775 /home/"$usuario" /HDD4TB1/home/"$usuario" /HDD4TB2/home/"$usuario" /HDD4TB3/home/"$usuario"
}

permisos1() {
    usuario="$1"
    if [ -z "$usuario" ]; then
        echo "Uso: permisos <usuario>"
        return 1
    fi
    sudo chown -R "$usuario":"$usuario" /HDD4TB1/home/"$usuario"
    sudo chmod -R 775 /HDD4TB1/home/"$usuario" 
}

permisos2() {
    usuario="$1"
    if [ -z "$usuario" ]; then
        echo "Uso: permisos <usuario>"
        return 1
    fi
    sudo chown -R "$usuario":"$usuario" /HDD4TB2/home/"$usuario"
    sudo chmod -R 775 /HDD4TB2/home/"$usuario" 
}

permisos3() {
    usuario="$1"
    if [ -z "$usuario" ]; then
        echo "Uso: permisos <usuario>"
        return 1
    fi
    sudo chown -R "$usuario":"$usuario" /HDD4TB3/home/"$usuario"
    sudo chmod -R 775 /HDD4TB3/home/"$usuario" 
}


# Sistema y hardware
alias cpu="lscpu"                         # Info del CPU
alias hdd="free -m -l -t"                 # Info de memoria en MB
#alias ip="curl ifconfig.me"               # Muestra la IP pública
alias ports="netstat -tulanp"             # Ver puertos abiertos y servicios

# Python y Desarrollo
alias py="python3"

# Recarga rápida de configuración global
alias reloadalias="source /etc/profile.d/aliases.sh"   # Recargar alias globales
alias editalias="sudo nano /etc/profile.d/aliases.sh"  # Editar alias globales

# Alias para juegos
alias journalzomboid='journalctl -u zomboid -f'
alias journalminecraft='journalctl -u minecraft -f'

alias matrix='greenrain'

#AndroidStudio
alias fronthualpenalerta='cd /HDD4TB2/home/diego/Codigo/front-HualpenAlerta/front-Naufrago-HualpenAlerta/hualpen-ionic/'
alias fronthualpenalertanaufrago='cd /HDD4TB2/home/diego/Codigo/front-HualpenAlerta/front-Naufrago-HualpenAlerta/hualpen-ionic/'
alias fronthualpenalertadiego='cd /HDD4TB2/home/diego/Codigo/front-HualpenAlerta/front-Diego-HualpenAlerta/hualpen-ionic/'
#El encantamiento sagrado para pre-compilar la apk de forma insegura
alias android-fullcompile='npm install -save && ionic capacitor sync android && ionic build && ionic capacitor copy android && ionic capacitor build android -prod && ng build --configuration development && npx cap sync'
alias android-fastcompile='ng build --configuration development && npx cap sync'

# Git
alias status="git status "
alias add="git add "
alias commit="git commit -m "
alias push="git push"
alias pull="git pull"

# Pusheo bacan
function pushear() {
    if [ -z "$1" ]; then
        echo "Falta mensaje de commit. Uso: pushear \"mensaje\""
        return 1
    fi
    git status
    git add -A
    git commit -m "$1"
    git push
}

alias bandcamp='bash /home/jfuser/scripts/bandcampsync/sync_bandcamp.sh'

# Alias personalizados - Fin
alias probando='echo funciona en este servidor'


# Alias para ver el peso de directorios
peso() {
    if [ $# -eq 0 ]; then
        # Si no se proporciona argumento, usar el directorio actual
        du -h --max-depth=1 . | sort -h
    else
        # Si se proporciona un argumento, usar esa ruta
        du -h --max-depth=1 "$1" | sort -h
    fi
}
