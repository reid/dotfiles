Reid's Dotfiles
===============

These dotfiles configure my shell environment just the way I like it. 

I don't recommend using these files verbatim. You should probably just pick and choose what works for you and remove everything else. After you've done that, place them somewhere like `~/.dotfiles` and install with a `rake install`.

Read the LICENSE file for license and copying information.

Terminal setup on OS X
----------------------

 1. Install Homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"`
 2. Install tmux: `brew install tmux`
 3. Fix pbcopy: `brew install reattach-to-user-namespace --wrap-launchctl --wrap-pbcopy-and-pbpaste`
 4. Install Node.js from the official installer.
 5. Install Nave: `npm i -g nave`

Vim color scheme
----------------

I use the [IR\_Black Vim color scheme][ir_black-vim]. If you use Vim in a terminal, it should be used with the [IR\_Black terminal colors][ir_black-term] for iTerm 2.

iTerm 2
-------

To use my iTerm 2 settings, copy `com.googlecode.iterm2.plist` into `~/Library/Preferences`.

Thanks
------

Thanks to [Isaac Schlueter][isaacs] and [Ryan Bates][ryanb] for their useful dotfiles on github.

  [ir_black-vim]: http://blog.infinitered.com/entries/show/8
  [ir_black-term]: http://blog.infinitered.com/entries/show/6
  [isaacs]: http://github.com/isaacs/dotfiles "isaacs' dotfiles"
  [ryanb]: http://github.com/ryanb/dotfiles "ryanb's dotfiles"
