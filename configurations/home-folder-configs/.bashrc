#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Load from the .env file contains vars that cant be hidden using comments
export $(envsubst < /home/santoshganti/.env)

# Podman and Docker configs
export PATH="${PATH}:/home/santoshganti/.local/share/containers/podman-desktop/extensions-storage/podman-desktop.compose/bin"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Nvidia RTX and Proton Gaming related env
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"

# This fixes game overlay library not being found in steam
export LD_PRELOAD="$LD_PRELOAD:/usr/\$LIB/libgamemode.so.0"