#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
blackColour="\e[0;30m\033[1m"

function ctrl_c(){
    echo -e "\n\n${redColour}[!] Script Canceled....\n${endColour}"
    tput cnorm; exit 1
}

 echo -e "\n${greenColour}[+]${endColour} ${grayColour}Welcome to the balcony script now installing the AUR${endColour}\n"

sudo pacman -S --noconfirm base-devel git
git clone https://aur.archlinux.org/yay.git --noconfirm
cd yay
makepkg -si
cd

echo -e "${greenColour}[+]${endColour} ${grayColour}Script is Initiating...${endColour}"

echo -e "${greenColour}[+]${endColour} ${grayColour}Installing Dependencies${endColour}"

yay -S --noconfirm hyprland-git 

yay -S --noconfirm waybar-hyprland rofi dunst kitty swaybg swaylock-effects-git swayidle pamixer light brillo canva 

echo -e "${greenColour}[+]${endColour} ${grayColour}Downloading Fonts${endColour}"

mkdir -p ~/.fonts
cd ~/.fonts
wget --noconfirm https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
wget --noconfirm https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Iosevka.zip
yay -S --noconfirm ttf-font-awesome
fc-cache -fv 
cd 

echo -e "${greenColour}[+]${endColour} ${grayColour}Copying Files${endColour}"

git clone -b balcony🚊 --noconfirm https://github.com/iamverysimp1e/dots
cd dots
cp -r ./configs/* ~/.config/

echo -e "${greenColour}[+]${endColour} ${grayColour}Rebooting...${endColour}"
echo -e "${greenColour}[+]${endColour} ${grayColour}This bash script reboots your system at the end of its installation, make sure to always close and save all applications beforehand, i am not responsible for any lost data.${endColour}"

sudo reboot

# This bash script reboots your system at the end of its installation, make sure to always close and save all applications beforehand, i am not responsible for any lost data.
