#!/bin/sh
#eval "$(ssh-agent -s)" && ssh-add ~/.ssh/git
git add . && git commit -m "update" && git push
sudo nixos-rebuild switch --upgrade
sudo nix-collect-garbage --delete-older-than +3