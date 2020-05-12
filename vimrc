" BREAK6700 VIMRC
"
" VUNDLE:
" Enter current millennium (Don't use vi mode)
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
" VimWiki and Plugins
 Plugin 'vimwiki/vimwiki'
 Plugin 'junegunn/fzf'
 Plugin 'junegunn/fzf.vim'
 Plugin 'michal-h21/vim-zettel'
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this liner FAQ

" FILE FINDER:
" Search down into sub-folders for all file realated tasks
" Enable Fuzzy Finding with *
set path+=**

" Display all matching files when tab complete
set wildmenu

" :b lets you autocomplete any open buffer

" TAGS:
" Create 'tags' file (may need to install ctags first)
" Use ^] to jump to tag under cursor
" Use g^] for ambiguous tags
" Use ^t to jump to tag stack

command! MakeTags !ctags -R

" AutoComplete:
" Nothing needed but use <C-n> to open local search
" <C-n> and <C-p> to move in list
"
" This file only: ^x^n
" Just file names: ^x^f
" Tags only: ^x^]
"
" VimWIKI SETTINGS:
"
" Set Syntax to Markdown by defualt
let g:vimwiki_list = [{'path': 'PATH/TO/FILE','syntax': 'markdown', 'ext': '.md'}, {"path":"~/scratchbox/vimw
iki/wiki/"}]
" VIMZETTEL SETTINGS:
" Filename format. The filename is created using strftime() function
 let g:zettel_format = "%y%m%d-%H%M"
" " command used for VimwikiSearch
" " default value is "ag". To use other command, like ripgrep, pass the
" " command line and options:
 let g:zettel_fzf_command = "rg --column --line-number --ignore-case --no-heading --color=always "
"  " Disable default keymappings
  let g:zettel_default_mappings = 0
"  " This is basically the same as the default configuration
  augroup filetype_vimwiki
    autocmd!
      autocmd FileType vimwiki imap <silent> [[ [[<esc><Plug>ZettelSearchMap
        autocmd FileType vimwiki nmap T <Plug>ZettelYankNameMap
          autocmd FileType vimwiki xmap z <Plug>ZettelNewSelectedMap
            autocmd FileType vimwiki nmap gZ <Plug>ZettelReplaceFileWithLink
            augroup END
"
"            " Set template and custom header variable for the second Wiki
            let g:zettel_options = [{},{"front_matter" : {"tags" : ""},"template" :  "PATH/TO/FILE/template.t
pl"}]
" NOTE: PLEASE INSTALL RG (GET FZF WORKING!) - sudo apt-get install ripgrep
let g:nv_search_paths = ['PATH/TO/FILE']
