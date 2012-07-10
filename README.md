# keepalived-syntax.vim

syntax highlighting for [Keepalived](http://www.keepalived.org/) config files.

syntax off

![](http://blog.glidenote.com/images/2012/04/keepalived0.png)

syntax on

![](http://blog.glidenote.com/images/2012/04/keepalived1.png)

## Setup

add this line to your `.vimrc`

    au BufRead,BufNewFile keepalived.conf setlocal ft=keepalived

## Install

Copy it to your syntax directory.

## License

License: Same terms as Vim itself (see [license](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license))
