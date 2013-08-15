Installation
============

Prerequisites
-------------

* Git (1.8+ recommended)
* Vim (7.3+ recommended)

Optional, but recommended
* [Homebrew](http://mxcl.github.com/homebrew/) (OS X only)

Vim
===

Overview of the vim setup. Sensible defaults for all the things!



Mappings
--------

Reference to vim mappings.



General
--------

* `W` :w !sudo tee %
* `,.` NERDTreeToggle
* `,t` TlistToggle
* `,h:` MRU
* `,,e` Easymotion
* `,rc` :e $MYVIMRC (:)
* `,sh` :ConqueTermSplit bash (:)
* `,ct` ct :!ctags_php . (:)
* `,cs` :noh (:)
* `,ss` :%s/\s\+$//e (:)
* `,rrc` :source $MYVIMRC (:)

Some handy aliases for hard to type things that I use often:

* `>>` to `→`
* `<<` to `←`
* `^^` to `↑`
* `VV` to `↓`
* `aa` to `λ`

As well `↑`, `↓`, `⏎`, and `⎋` may be used in completions menus. `<PageUp>` and `<PageDown>` work in both insert and command mode.



Commands
========

* `:W` Alias to `:w` because I'm always typing it.
* `:R` Get the output of shell commands.



Depend
------

* vundle (vim plugin)
* GNU Coreutils
* monaco powerline-font

Installation
------------

Run following command

```
git clone https://github.com/wubaiqing/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
git submodule init
git submodule update
./bootstrap.sh
```
