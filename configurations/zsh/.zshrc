export EDITOR=nano

ZSH_THEME="powerline"

plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/santoshganti/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# Firefox wayland
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
fi

# Load from the .env file contains vars that cant be hidden using comments
#export $(envsubst < /home/santoshganti/.env)

# XDG Desktop Directories
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Steam Scaling
export STEAM_FORCE_DESKTOPUI_SCALING='0.25'

# Wayland related Settings
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export VDPAU_DRIVER=nvidia
export LIBVA_DRIVER_NAME=nvidia

# Wayland Firefox Settings
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
fi

# Podman and Docker configs
export PATH="${PATH}:/home/santoshganti/.local/share/containers/podman-desktop/extensions-storage/podman-desktop.compose/bin"

# Docker Specific
#export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# Podman Specific
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"

# Nvidia RTX and Proton Gaming related env
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json

# This fixes game overlay library not being found in steam
export LD_PRELOAD="$LD_PRELOAD:/usr/\$LIB/libgamemode.so.0"

# Enables PROTON NVIDIA comptability
export PROTON_ENABLE_NVAPI=1
export VKD3D_CONFIG=dxr11,dxr

# Game Overlays
#export MANGOHUD=1
#export ENABLE_VKBASALT=1
export LD_LIBRARY_PATH=/usr/lib32/nvidia:/usr/lib/nvidia:$LD_LIBRARY_PATH

#export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json
