# Set ls colors
eval $(dircolors ~/.dotfiles/dircolors/solarized/dircolors.256dark)

# Additional dircolors
export LS_COLORS="${LS_COLORS}*.zst=00;38;5;61:"
export LS_COLORS="${LS_COLORS}*.iso=01;38;5;61:"

# Set background color
printf %b '\e]11;#1d2021\a'
