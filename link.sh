#!/bin/sh

CFG=$HOME/.cfg

# Top level dotfiles
ln -sf $CFG/vimrc $HOME/.vimrc 
ln -sf $CFG/tmux.conf $HOME/.tmux.conf
ln -sf $CFG/xinitrc $HOME/.xinitrc

# Gnupg
mkdir -p $HOME/.gnupg
ln -sf $CFG/apps/gnupg/gpg.conf $HOME/.gnupg/gpg.conf

# Gtk 2/3
mkdir -p $HOME/.config/gtk-2.0
ln -sf $CFG/apps/gtk/gtkfilechooser.ini $HOME/.config/gtk-2.0/gtkfilechooser.ini
mkdir -p $HOME/.config/gtk-3.0
ln -sf $CFG/apps/gtk/settings.ini $HOME/.config/gtk-3.0/settings.ini

ln -sf $CFG/gtkrc-2.0 $HOME/.gtkrc-2.0

# i3status
mkdir -p $HOME/.config/i3status
ln -sf $CFG/apps/i3status/config $HOME/.config/i3status/config

# catfish search
mkdir -p $HOME/.config/catfish
ln -sf $CFG/apps/catfish/catfish.rc $HOME/.config/catfish/catfish.rc

# Hexchat IRC
mkdir -p $HOME/.config/hexchat
ln -sf $CFG/apps/hexchat/hexchat.conf $HOME/.config/hexchat/hexchat.conf

# Thunar file manager
mkdir -p $HOME/.config/Thunar
ln -sf $CFG/apps/Thunar/thunarrc $HOME/.config/Thunar/thunarrc

# VLC
mkdir -p $HOME/.config/vlc
ln -sf $CFG/apps/vlc/vlcrc $HOME/.config/vlc/vlcrc

# Redshift
mkdir -p $HOME/.config/redshift
ln -sf $CFG/apps/redshift/redshift.conf $HOME/.config/redshift/redshift.conf

# Polybar status bar
mkdir -p $HOME/.config/polybar
ln -sf $CFG/apps/polybar/config $HOME/.config/polybar/config
ln -sf $CFG/apps/polybar/launch.sh $HOME/.config/polybar/launch.sh

# Ranger terminal file manager config
mkdir -p $HOME/.config/ranger
ln -sf $CFG/apps/ranger/commands_full.py $HOME/.config/ranger/commands_full.py
ln -sf $CFG/apps/ranger/commands.py $HOME/.config/ranger/commands.py
ln -sf $CFG/apps/ranger/rc.conf $HOME/.config/ranger/rc.conf
ln -sf $CFG/apps/ranger/rifle.conf $HOME/.config/ranger/rifle.conf
ln -sf $CFG/apps/ranger/scope.sh $HOME/.config/ranger/scope.sh
