#!/bin/bash

timestamp() {
  date +"%Y-%m-%d"
}

dest_dir="dotfiles-""$(timestamp)"

mkdir $dest_dir

# Copy i3 config
cp -r $HOME/.config/i3 $dest_dir/

# Copy polybar config
cp -r $HOME/.config/polybar $dest_dir/

# Copy rofi config
cp -r $HOME/.config/rofi $dest_dir/

# Copy compton.conf
cp -r $HOME/.config/compton.conf $dest_dir/

# Copy myscripts
cp -r $HOME/bin/ $dest_dir/

# Copy gtk theme
cp -r $HOME/.themes/warna $dest_dir/

source ~/.cache/wal/colors.sh

mkdir $dest_dir/wallpaper/

echo $wallpaper
# Copy wallpaper
#cp $wallpaper $dest_dir/wallpaper/

cp -r /home/adil/.mozilla/firefox/mr26nshi.default/chrome $dest_dir/
