# .system

scripts and dotfiles for setup and deployment of my (Arch-based) Linux systems. 

## contents
- dotfiles - My usual configuration dotfiles, including my NeoVim, Polybar, and Window Manager configs.
- rcs - My rc(s) files, stuff like `bashrc`, `zshrc`, `vimrc`, as well as custom ones like `exportsrc` or `aliasrc`.
- scripts - Useful & fun helper scripts.
- software - List of useful software I often install, categorized into different folders.

## install
since this repository contains git submodules, you need to specify it in the clone command:
```bash
git clone --recurse-submodules -j8 git://github.com/xtrm-en/.system.git ~/.system
```
