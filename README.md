My vim configuration ( only for Windows )
=

Setup
=
1. Download [vim73_46rt.zip](http://ftp.vim.org/pub/vim/pc/vim73_46rt.zip), and unzip it into a dictionary, say "frank".<br/>
    `mkdir frank`<br/>
    `unzip vim73_46rt.zip -d frank/`
2. Download [gvim73_46.zip](http://ftp.vim.org/pub/vim/pc/gvim73_46.zip), and unzip it into the same dictionary.<br/>
    `unzip gvim73_46.zip -d frank/`
3. Go into "frank/vim/".
4. Get my configuration files
    git clone https://github.com/FrankFang/vim.git.
    or download the zip file.  than your dictionary looks like this:
    + frank
    	+ vim
            + vim73
            + vimfiles
            + _vimrc
            + README.md
5. Edit gvim.reg and run it.
6. Hava fun. 

Hotkeys
=
* `<Ctrl-S>` / `<Ctrl-A>` / `<Ctrl-C>` / `<Ctrl-V>` / `<CTRL-X>` : save / select all / copy / paste / cut, as you expected.
* `,nt` : toggle NerdTree.
* `,tt` : next tab.
* `,tl` : open TaskList.
* `,m` : add colorful mark; `,n` : remove colorful mark.
* `<space>` : fold/unfold the code.
* `Tab` : complete the code automatically.
* `,js` : format JaveScript.
* `<F4>c` /`<F4>f` / `<F4>e` : open html/htm/shtml file in Chrome/Firefox/IE. It doesn't work unless you add their full path to Path, the environment variable.

P.S.
=
For better experience, you could use Yahei Mono font.

