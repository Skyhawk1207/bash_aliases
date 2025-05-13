alias upgrade="printf 'Running sudo apt update \n\n'&&
	       sudo apt update&& 
               printf '\n\nRunning sudo apt upgrade\n\n'&&
               sudo apt upgrade"

alias rb="sudo reboot now"
alias off="sudo shutdown now"

alias clean="printf '\n\nRunning sudo apt autoremove\n\n'&&
             sudo apt autoremove&&
             printf '\n\nRunning sudo apt autoclean\n\n'&&
             sudo apt autoclean"

alias xwsc="windscribe disconnect"
alias maintain="upgrade&&clean&&clcache"
alias bt="sudo systemctl start bluetooth"
alias big-clean="rm -rf ./cache ./local ./config && sync && rb"

alias clcache="printf '\n\nCleaning RAM cache... \n\n'&&
               sync; echo 3 | sudo tee /proc/sys/vm/drop_caches && 
               sync; echo 2 | sudo tee /proc/sys/vm/drop_caches &&
               sync; echo 1 | sudo tee /proc/sys/vm/drop_caches && echo Done."  

uinst(){
printf 'Running sudo apt update\n\n' &&
sudo apt update &&
printf '\n\nInstalling '"$1"'!\n\n'&&
sudo apt install "$1"
}

install(){
printf '\n\nInstalling '"$1"'!\n\n'&&
sudo apt install "$1"
}


wsc(){
windscribe connect "$1"
}
