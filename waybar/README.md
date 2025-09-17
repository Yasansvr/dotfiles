# Dotfiles

Personal configuration files for my Linux setup.  
Currently includes **Waybar** configs. More (Hyprland, Neovim, etc.) may be added later.

---

## 🚀 Usage

### Clone the repo
```
git clone git@github.com:Yasansvr/dotfiles.git
cd ~/dotfiles
```
Option 1 — Copy files:

```
cp -r waybar/* ~/.config/waybar/
```
Option 2 — Use symlinks (recommended):

```
ln -s ~/dotfiles/waybar/config ~/.config/waybar/config
ln -s ~/dotfiles/waybar/style.css ~/.config/waybar/style.css
```
Restart waybar:
```
pkill waybar && waybar &
```
This way, changes to your dotfiles repo automatically apply to your system.

🖼 Screenshot
![Waybar Screenshot](waybar.png)


🔧 Requirements

Waybar
wlogout
vlc 

A compositor (e.g. Hyprland)
