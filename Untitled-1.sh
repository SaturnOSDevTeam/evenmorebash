#!/bin/bash

echo -e "\n${greenColour}[+]${endColour} ${grayColour}Welcome to the balcony script now installing the AUR${endColour}\n"

sudo pacman -S --noconfirm base-devel git
git clone https://aur.archlinux.org/yay.git --noconfirm
cd yay
makepkg -si

sudo pacman -Syu lolcat --noconfirm

echo -e 
 BBBBBBBBBBBBBBBBB   EEEEEEEEEEEEEEEEEEEEEE               AAA               RRRRRRRRRRRRRRRRR                                NNNNNNNN        NNNNNNNNIIIIIIIIII      CCCCCCCCCCCCC     
 B::::::::::::::::B  E::::::::::::::::::::E              A:::A              R::::::::::::::::R            @@@@@@@@@          N:::::::N       N::::::NI::::::::I   CCC::::::::::::C     
 B::::::BBBBBB:::::B E::::::::::::::::::::E             A:::::A             R::::::RRRRRR:::::R         @@:::::::::@@        N::::::::N      N::::::NI::::::::I CC:::::::::::::::C     
 BB:::::B     B:::::BEE::::::EEEEEEEEE::::E            A:::::::A            RR:::::R     R:::::R      @@:::::::::::::@@      N:::::::::N     N::::::NII::::::IIC:::::CCCCCCCC::::C     
   B::::B     B:::::B  E:::::E       EEEEEE           A:::::::::A             R::::R     R:::::R     @:::::::@@@:::::::@     N::::::::::N    N::::::N  I::::I C:::::C       CCCCCC     
   B::::B     B:::::B  E:::::E                       A:::::A:::::A            R::::R     R:::::R     @::::::@   @::::::@     N:::::::::::N   N::::::N  I::::IC:::::C                   
   B::::BBBBBB:::::B   E::::::EEEEEEEEEE            A:::::A A:::::A           R::::RRRRRR:::::R      @:::::@  @@@@:::::@     N:::::::N::::N  N::::::N  I::::IC:::::C                   
   B:::::::::::::BB    E:::::::::::::::E           A:::::A   A:::::A          R:::::::::::::RR       @:::::@  @::::::::@     N::::::N N::::N N::::::N  I::::IC:::::C                   
   B::::BBBBBB:::::B   E:::::::::::::::E          A:::::A     A:::::A         R::::RRRRRR:::::R      @:::::@  @::::::::@     N::::::N  N::::N:::::::N  I::::IC:::::C                   
   B::::B     B:::::B  E::::::EEEEEEEEEE         A:::::AAAAAAAAA:::::A        R::::R     R:::::R     @:::::@  @:::::::@@     N::::::N   N:::::::::::N  I::::IC:::::C                   
   B::::B     B:::::B  E:::::E                  A:::::::::::::::::::::A       R::::R     R:::::R     @:::::@  @@@@@@@@       N::::::N    N::::::::::N  I::::IC:::::C                   
   B::::B     B:::::B  E:::::E       EEEEEE    A:::::AAAAAAAAAAAAA:::::A      R::::R     R:::::R     @::::::@                N::::::N     N:::::::::N  I::::I C:::::C       CCCCCC     
 BB:::::BBBBBB::::::BEE::::::EEEEEEEE:::::E   A:::::A             A:::::A   RR:::::R     R:::::R     @:::::::@@@@@@@@        N::::::N      N::::::::NII::::::IIC:::::CCCCCCCC::::C     
 B:::::::::::::::::B E::::::::::::::::::::E  A:::::A               A:::::A  R::::::R     R:::::R      @@:::::::::::::@       N::::::N       N:::::::NI::::::::I CC:::::::::::::::C     
 B::::::::::::::::B  E::::::::::::::::::::E A:::::A                 A:::::A R::::::R     R:::::R        @@:::::::::::@       N::::::N        N::::::NI::::::::I   CCC::::::::::::C     
 BBBBBBBBBBBBBBBBB   EEEEEEEEEEEEEEEEEEEEEEAAAAAAA                   AAAAAAARRRRRRRR     RRRRRRR          @@@@@@@@@@@        NNNNNNNN         NNNNNNNIIIIIIIIII      CCCCCCCCCCCCC | lolcat -S -5
echo -e "${grayColour}by${endColour} ${blueColour}bear@nic${endColour}"
sleep 5;

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

sudo reboot -f

# This bash script reboots your system at the end of its installation, make sure to always close and save all applications beforehand, i am not responsible for any lost data.