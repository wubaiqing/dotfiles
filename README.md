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


### General

* `,a=` Tabularize on assignment (=)
	* `,a=>` Tabularize on hash rocket keys (=>)
	* `,a:` Tabularize on hash/object/dict keys (:)
	* `,a,` Tabularize on comma (,)
	* `,c` Toggle invisibles.
	* `,ls` Show buffers (same as `:buffers`).
	* `,p` Toggle paste mode.
	* `,qs` Toggle search highlight.
	* `,qq` Close Quickfix window (think Ack.vim).
	* `,rp` Toggle Rainbow Parenthesis.
	* `,ss` Strip all trailing whitespace in buffer.
	* `,W` Sudo write!
	* `Y` Yank from cursor to end of line (same as `y$`).
	* `,*` Replace word under cursor.
	* `,]` Indent current block.
	* `,[` Outdent current block.
	* `,⏎` Insert newline.
	* `'` Actually calls <code>`</code> for better mark jumping (line + column).
	* `J` Join lines and restore cursor position.

	Some handy aliases for hard to type things that I use often:

	* `>>` to `→`
	* `<<` to `←`
	* `^^` to `↑`
	* `VV` to `↓`
	* `aa` to `λ`

	As well `↑`, `↓`, `⏎`, and `⎋` may be used in completions menus. `<PageUp>` and `<PageDown>` work in both insert and command mode.


### Splits

	* `+` Increase split size.
	* `-` Decrease split size.
	* `^j` Go to split below.
	* `^k` Go to split above.
	* `^h` Go to split left.
	* `^l` Go to split right.


	Commands
	========

	* `:W` Alias to `:w` because I'm always typing it.
	* `:R` Get the output of shell commands.



## Depend

* vundle (vim plugin)
* GNU Coreutils
* monaco powerline-font

## Installation

Run following command

```
git clone https://github.com/wubaiqing/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
git submodule init
git submodule update
./install.sh
```
