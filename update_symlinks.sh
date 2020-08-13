#!/usr/bin/zsh
# TODO: Add check to ensure we are in the .dotfiles directory

# Aliases
GIT=/usr/bin/git
LN=/usr/bin/ln
RM=/usr/bin/rm

# Remove old files; link new files
for n in **/.*
do
  $RM -rf ../$n
  $RM -rf ../.bash\*
  $RM -rf ../.profile
  $LN -s `pwd`/$n ../$n
done

# Grab plugins and put in the $HOME directory itself
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/zsh/zsh-autosuggestions
git clone https://github.com/seebi/dircolors-solarized.git $HOME/dircolors-solarized \
  && ln -s $HOME/dircolors-solarized $HOME/.dir_colors

