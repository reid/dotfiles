Reid's Dotfiles
===============

These dotfiles configure my shell environment just the way I like it. 

I don't recommend using these files verbatim. You should probably just pick and choose what works for you and remove everything else. After you've done that, place them somewhere like `~/.dotfiles` and install with a `rake install`.

Read the LICENSE file for license and copying information.

Vim color scheme
----------------

I use the [IR\_Black Vim color scheme][ir_black-vim]. If you use Vim in a terminal, it should be used with the [IR\_Black terminal colors][ir_black-term] for the Mac OS X Terminal and the [TerminalColours][] [SIMBL][] plugin.

VimOutliner
-----------

VimOutliner is GPL, so I'm not including it here.

Download VimOutliner from here: <http://www.troubleshooters.com/projects/alt-vimoutliner-litt/download/0.3.4/vimoutliner-0.3.4.tgz>

Copy `.vim/colors/vo_dark.vim` to `vo_ir_black.vim`. Replace: `%s/ctermbg=black/ctermbg=NONE/g` and save.

Add this snippet to the end of `.vim/syntax/vo_base.vim`:

    setlocal runtimepath+=$HOME/.vimoutliner,$HOME
    runtime! .vimoutlinerrc vimoutlinerrc

Thanks
------

Thanks to [Isaac Schlueter][isaacs] and [Ryan Bates][ryanb] for their useful dotfiles on github.

  [ir_black-vim]: http://blog.infinitered.com/entries/show/8
  [ir_black-term]: http://blog.infinitered.com/entries/show/6
  [TerminalColours]: http://github.com/ciaran/terminalcolours
  [SIMBL]: http://www.culater.net/software/SIMBL/SIMBL.php
  [isaacs]: http://github.com/isaacs/dotfiles "isaacs' dotfiles"
  [ryanb]: http://github.com/ryanb/dotfiles "ryanb's dotfiles"
