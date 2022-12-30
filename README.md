# Introduction
This is my file configuration for any mac that will use the same things as me

# What I use
I use many things that are pretty commons like 
[Neovim](https://github.com/neovim/neovim)

[Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh)

[Hyper](https://github.com/vercel/hyper)

[Homebrew](https://github.com/Homebrew/brew)

Every configurations file are stored in the repo in ./usingFiles

# How to use
You simply need to clone the repo like this
```sh
git clone https://github.com/Alkaillo/configNewComputer ~/
```
Then you just need to run the shell script as root
```sh 
sudo sh ~/configNewComputer/script.sh
```
Everything will install, if something doesn't install correctly let me know.

# Configurations
## Themes
All color themes are from [Catppuccin](https://github.com/catppuccin) because I am use to using it, if you want to change it you need to follow these steps : 
### Neovim : 
if you only want to change the theme of catppuccin you need to change this line : 
```lua
flavour = "frappe", -- latte, frappe, macchiato, mocha
```
If you want to change the whole theme then change this line
```lua 
vim.cmd.colorscheme "change by the theme you want"
```
gruvbox is already config so you'd change it to 
```lua 
vim.cmd.colorscheme "gruvbox"
```
### Hyper :
You might need to download a plugin to change the theme and delete this line : 
```js
catppuccinTheme : "Frappé",
```
If you only want to change the theme of catppuccin then change "Frappé" to the other you want. 

