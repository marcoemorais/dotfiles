" ---> general settings
:set ch=4
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set nohlsearch
:set noincsearch
:set number
:set ruler
:set showmatch
:set matchtime=8
:set matchpairs=(:),{:},[:],<:>
:set showfulltag
:syntax on
:set tags=~/.tags
:filetype on
" adding path allows gf to open files under cursor
:set path=**,/usr/include/**,/usr/local/include/**,/opt/geo/ext/**,~/include/**

" ---> search path for tag files
" ./.tags will search for file named '.tags' in directory where current file is
" .tags will search file file named '.tags' in the current directory
:set tags=./.tags,.tags,~/.tags

" ---> managing vim plugins with pathogen
" Install:
" https://github.com/tpope/vim-pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -Sso ~/.vim/autoload/pathogen.vim --location \
"     https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
"
execute pathogen#infect()

" ---> navigating source code
" CTRL-]            jump to first matching tag based on text under cursor
" :ts [ident]       list all tags matching ident (regex start with '/')
"                   use <TAB> completion to scroll through possible matches
" g]                like :ts except shows list based on text under cursor
" CTRL-T            jump back to previous tag
" :tags             bring up list of the entire tag stack
" :find [ident]     find and open file matching ident (uses path)
" gf                find and open file matching text under cursor, :e# to go back
" :n [ident]        find and open first file matching ident
" :vimgrep [pattern] **/*.{extension}       use :cn to navigate fwd/bwd
" [[ or ]]          go to previous or next class definition

" ---> navigating between files
" :e#               open previous file being editted in current window
" :buffers          list all buffers
" :buffer [N]       open the file number N from the list returned by :buffers
" :saveas           save the current buffer under a new filename
" :cd -             return to previous directory
" :r !<command>     insert the output from <command> into the current file
" change current window directory to same as file being editted
map ,cd :lcd %:p:h<CR>:pwd<CR>
" insert contents of directory listing in current edit buffer
" map ,f :r !find .

" ---> navigating make output
" :cfirst           first error
" :cn               next error
" :cp               previous error
" :clast            last error
" :cc               compiler message for current error
" :cl               list all errors

" ---> editting source code
" http://www.vim.org/scripts/script.php?script_id=955
" type /*, then your comments, then <Enter> + / to terminate block
" zR open all folds in the file
" [{ jump to previous enclosing { in current code block
" ]} jump to next enclosing { in current code block
" <CTRL-V><TAB> (INSERT mode) inserts hard tabs
" * to search for text matching the text under the cursor

" ---> macros
" qd    start recording to register d
" ...   your complex series of commands
" q     stop recording
" @d    execute your macro
" N@d   execute your macro N times

" ---> copy-paste registers
" "xy to copy into register x where x is the name of register
" "x(p|P) to paste from register x after or before current position
" :reg lists the contents of copy-paste registers

" ---> mark registers
" mx to set a mark at register x where x is the name of register
" `x to move to mark at register x
" :marks lists the contents of mark registers

" ---> for manpage plugin
:runtime! ftplugin/man.vim

" ---> for python_pydoc plugin
" http://www.vim.org/scripts/script.php?script_id=910
" K                     invoke pydoc on the word under the cursor
" :Pydoc [a.b.c]        invoke pydoc on module a.b.c
" :PydocSearch [term]   invoke pydoc search for 'term'
" :Pydoc modules        list all available modules
" :Pydoc topics         list all topics in documentation
" :Pydoc keywords       list all language keywords
" don't highlight search term when displaying documentation
let g:pydoc_highlight=0
" open pydoc files in vertical split
let g:pydoc_open_cmd = 'vsplit'

" ---> for snipMate plugin
" cd ~/.vim/bundle && git clone https://github.com/msanders/snipmate.vim
:filetype plugin on

" ---> for google protocol buffer syntax file
" http://code.google.com/p/protobuf/source/browse/trunk/editors/proto.vim
augroup filetype
au! BufRead,BufNewFile *.proto set filetype=proto
augroup end

" ---> for thrift syntax file
" http://svn.apache.org/repos/asf/thrift/trunk/contrib/thrift.vim
augroup filetype
au! BufRead,BufNewFile *.thrift set filetype=thrift
augroup end

" ---> for tagList plugin
" XXX(mmorais): Use tagbar instead
" cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git
" :help taglist.txt
" q     close the taglist window
" o     open selected tag in split
" let Tlist_Ctags_Cmd='ctags'
" let Tlist_WinWidth=80
" let Tlist_Compact_Format=1
" nnoremap <silent> TT :TlistToggle<CR>

" --> for tagbar plugin
" cd ~/.vim/bundle && git clone git://github.com/majutsushi/tagbar
let g:tagbar_width = 100
nmap TB :TagbarToggle<CR>

" ---> for xmledit plugin
" http://www.vim.org/scripts/script.php?script_id=301
" :help xml-plugin

" ---> xml editting
" reformat xml file inside of editor
map ,x :%!xmllint --format --encode UTF-8 -<CR>
" surround visually highlighted text with a new tag
" \x

" ---> NERD_tree
" cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git
"
" :help NERD_tree
" ?     toggles help in the NERD_tree window
" i     open selected file in split
" s     open selected file in vsplit
" O     recursively open children of current parent
" X     recursively open children of current parent
" e     open the directory in a file split
" cd    change CWD to current parent
" r     refresh the current directory
" A     toggle whether nerd tree window is maximized
let g:NERDTreeWinSize = 60
nnoremap <silent> NT :NERDTreeToggle<CR>

" ---> PIG syntax highlighting
" cd ~/.vim/bundle && git clone https://github.com/motus/pig.vim.git

" ---> Protobuf syntax highlighting
" cd ~/.vim/bundle && git clone https://github.com/uarun/vim-protobuf.git

" ---> Ctrlp plugin
" cd ~/.vim/bundle && git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"---> Vim-markdown plugin
" cd ~/.vim/bundle && git clone https://github.com/plasticboy/vim-markdown.git
let g:vim_markdown_folding_disabled = 1

" ---> navigating window splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" ---> unicode, utf8
" ga and g8 are useful in vim to see the escape code for the char under the cursor.
" ga shows value in decimal, hex, octal.
" g8 shows the utf8 code  eg (e2 80 9c)

" ---> toggle a highlight that runs across the screen at 80 characters
noremap <silent> CC :set colorcolumn=80<CR>
noremap <silent> NCC :set colorcolumn=""<CR>
" for environments with vim < 7.2
":au BufWinEnter *.java let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
":au BufWinEnter *.java let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" remove trailing whitespace from file with .py extension on save
autocmd BufWritePre * :%s/\s\+$//e

" show nonprinting characters
" set list

" set newline characters
" set ff=(unix|dos)

" scroll multiple windows simultaneously
" set scrollbind
" toggle the state of scrollbind
" set scb!

" *** deprecated settings

