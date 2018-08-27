 #! /data/data/com.termux/files/usr/bin/bash
termux-setup-storage

pembaruan tepat
menginstal apt -y git zsh
git clone https://github.com/Cabbagec/termux-ohmyzsh.git " $ HOME / termux-ohmyzsh " --depth 1

mv " $ HOME /.termux "  " $ HOME /.termux.bak. $ ( tanggal +% Y.% m.% d-% H:% M:% S ) "
cp -R " $ HOME /termux-ohmyzsh/.termux "  " $ HOME /.termux "

git clone git: //github.com/robbyrussell/oh-my-zsh.git " $ HOME /.oh-my-zsh " --depth 1
mv " $ HOME /.zshrc "  " $ HOME /.zshrc.bak. $ ( tanggal +% Y.% m.% d-% H:% M:% S ) "
cp " $ HOME /.oh-my-zsh/templates/zshrc.zsh-template "  " $ HOME /.zshrc "
sed -i ' / ^ ZSH_THEME / d '  " $ HOME /.zshrc "
sed -i ' 1iZSH_THEME = "agnoster" '  " $ HOME /.zshrc "
echo  " alias chcolor = ' $ HOME /.termux/colors.sh' "  >>  " $ HOME /.zshrc "
echo  " alias chfont = ' $ HOME /.termux/fonts.sh' "  >>  " $ HOME /.zshrc "
chsh -s zsh

echo  " install oh-my-zsh selesai! \ nPilih skema warna Anda sekarang ~ "
$ HOME /.termux/colors.sh

echo  " Pilih font Anda sekarang ~ "
$ HOME /.termux/fonts.sh

echo  " Silakan restart aplikasi Termux ... "

keluar
