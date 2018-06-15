#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# tell GTK to use wayland
GDK_BACKEND=wayland
CLUTTER_BACKEND=wayland

# tell QT to use wayland
QT_QPA_PLATFORM=wayland-egl

# tell SDL to use wayland
SDL_VIDEODRIVER=wayland

# tell Gnome to use wayland
XDG_SESSION_TYPE=wayland
