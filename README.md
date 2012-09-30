My vim configuration ( only for Windows )
=

Setup
=
You can follow the steps below or just download [the whole files](https://sourceforge.net/projects/mygvim/files/)<br/>
1. Make a new folder.<br/>
    `mkdir frank`
2. Get my configuration files<br/>
    `cd frank`<br/>
    `git clone https://github.com/FrankFang/vim.git.`<br/>
    or download the zip file.  than your folder looks like this:
    + frank
    	+ vim
            + vimfiles
            + _vimrc
            + README.md
            + gvim.reg
            + .gitignore
3. Download [gvim73_46.zip](http://ftp.vim.org/pub/vim/pc/gvim73_46.zip) and [vim73_46rt.zip](http://ftp.vim.org/pub/vim/pc/vim73_46rt.zip), and unzip it into the folder<br/>
    `cp ...\gvim73_46.zip frank\gvim73_46.zip`<br/>
    `cp ...\vim73_46rt.zip frank\vim73_46rt.zip`<br/>
    `cd frank`<br/>
    `unzip vim73_46rt.zip -d ./`<br/>
    `unzip gvim73_46.zip -d ./`<br/>
    than your folder looks like this:
    + frank
    	+ vim
            + vim73
            + vimfiles
            + _vimrc
            + README.md
            + gvim.reg
            + .gitignore
4. Run frank\vim\vim73\gvim.exe.
5. Hava fun. 

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
For better experience, you could 
1. use Yahei Mono font.
2. Edit gvim.reg and run it.

