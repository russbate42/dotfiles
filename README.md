# dotfiles
A repository for config files for various software tools for both remote machines and local machines.

## Current Work
Working on configuration for luasnips with latex and nvim complete

## Navigation
### NeoVim

**MiniMap**

- :Minimap opens the map
- :MinimapClose closes the map

**LuaSnip**

- Tab expands the luasnips
- 

**VimTex**

- placeholder

**Telescope**

- remap.lua
- " "pf uses fuzzy finder to search files
- " "ps uses ripgrep to search

**Packer**

- :PackerUpdate updates packages
- :PackerSync syncs packages

**Autoclose**

- No remaps

**Nvim Markdown**

- placeholder

**TreeSitter**

- requires treesitter cli for latex
- cargo install tree-sitter-cli
 
### TMux
 - Ctrl-b as a prefix
 - Ctrl-g as a nested prefix (only two levels)
 - Ctrl-Shift <arrow> to move between panes
 - Ctrl-Shift-alt <arrow> to move between windows
 - :rew renames window
 - :res renames session
 - [ ] vim key bindings in copy mode pending
 - C-b r reloads tmux conf
 - C-b S-I installs tpm plugins

## TMUX
### Package Manager
https://github.com/tmux-plugins/tpm

### Plugins
tmux-yank
[ ] tmux-copycat (not yet)

## Rust


## LaTeX
Assuming the installation on Ubuntu is:
sudo apt-get install texlive
Install instructions: https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages

I have not used texlive-full for space reasons.
To install specific packages, use the following instructions
1) make the directory ```/usr/local/share/texmf/tex/latex```
2) Download the package from CTAN

    ```sudo curl -O https://mirrors.ctan.org/macros/latex/contrib/lipsum.zip```
3) Use the command: ```unzip <package>.zip -d \<package_name\>```
    - Make sure the directory structure is

    ```/usr/local/share/texmf/tex/latex/\<package\>```
4) run latex to on the ```package.ins``` file to produce the .sty file in the package folder, if it already exists do nothing

    ```latex packagename.ins```
5) run the command: ```sudo texhash``` to install the package.

List of extra packages for my work:
physics
pgf
import
blindtext
lipsum
silence
lipsum
wrapfig
