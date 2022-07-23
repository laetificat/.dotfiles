# Dotfiles
Currently contains
- neomutt
- urlview
- zsh
  - zsh-syntax-highlighting (antigen)
  - zsh-autosuggestions (antigen)
- starship
- alacritty
  - FuraCode Nerd Font
  - MesloLGS NF font
  - LF
- neovim
  - vim-plug
  - nodejs + npm (for coc plugin)
- X11
- picom

# Install MacOS
- HomeBrew
  - Neovim
  - Starship
  - FNM
  - LF
- Alacritty
- FuraCode Nerd Font
- MesloLGS NF font
- vim-plug

```shell
brew install neovim starship fnm lf
mkdir ~/.config
cd ~/.config
ln -s ~/.dotfiles/.config/* .
```

Open neovim and do a :PlugInstall

# Gotchas
The neomutt/mutt config needs email creds, gotta enter them manually.  
There is no bootstrapping script yet, you gotta `ln -s` it all manually lol.  
