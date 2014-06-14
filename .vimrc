let g:mapleader = ","
filetype plugin on

""""""""""""""""""""""""""""""" Juan's Stuff """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
set history=750			" number of lines to remember

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on				" syntax highlighting on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title				" show filename in title bar
set scrolloff=4			" scroll screen when 4 lines form the bottom/top
set ruler				" show cursor coordinates at bottom
set number				" show line numbers
set ttymouse=xterm2		" allow mouse to move cursor around
set mouse=a 			" allow mouse to interact with vim
set ww+=<,>h,l			" left and right arrow words properly
"set noerrorbells		" don't make noise

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase			" ignore case when searching
set incsearch			" incremental search
set hlsearch			" highlight when searching
						" :nohl to clear highlighted text after search
set showmatch			" shows matching brackets
set mat=10				" 10ths of seconds to blink matching brackets
set novisualbell		" don't blink
set laststatus=2		" always show status line
"set cursorline			" highlight current cursor line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4			" tab spacing (settings below to unify it)
set softtabstop=4		" unify
set shiftwidth=4		" unify
set autoindent			" indent based on previous line
set noexpandtab			" does not expand tab to real spaces
set wrap				" wraps lines
set nopaste				" nopaste when using code snippets
"set expandtab			" convert tabs to real spaces!
"set smarttab			" uses tabs @ start of lines and spaces elsewhere
"set paste 				" better pasting with paste mode, breaks snipMate
"set nomagic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fixes problems with F keys
set <F1>=[11~
set <F2>=[12~
set <F3>=[13~
set <F4>=[14~

nmap <F1> :call CleanXML()<CR>
nmap <F2> :call RemoveID()<CR>
set pastetoggle=<F3>
nmap <F4> :set wrap! wrap?<cr>
nmap <F5> :call Tabber(0)<cr>
nmap <F6> :call Tabber(1)<cr>
nmap <F7> :set syntax=xml<cr>
nmap <F8> :set syntax=css<cr>
nmap <F9> :set syntax=javascript<cr>
nmap <F10> :set syntax=python<cr>
nmap <F11> :set syntax=csv<cr>
nmap <F12> :set syntax=html<cr>
nmap <C-n> :tabnext<cr>
nmap <C-p> :tabprev<cr>

"fixes screen conflict (<C-a>)
nnoremap <S-a> <C-a>
nnoremap <S-x> <C-x>
"tabbed vim shortcuts, similar to screen

function! RemoveID()
"remove id=""
    %s/ id="\w\{5\}">/>/g
endfunction

function! CleanXML()
"remove xmlns declarations
    1,s/ xmlns:\w\+="[^"]*"//g

"fix survey tag on each line
    1,s/<survey /<survey 
 /g
    1,s/" /"
 /g

"add break after suspends
    %s/<suspend id="[^"]*"\/>/<suspend\/>
/g
endfunction

function! Tabber(tab)
  if a:tab
    if &wrap
      set nowrap
    endif
    set ts+=2 ts?
  else
    set ts-=2 ts?
  endif
endfunction

function! Bolding(str)
  let result = "<b>" . a:str . "</b>"
  return result
endfunction
vnoremap ,bb ygv"=Bolding(@")<CR>Pgv

function! Italicize(str)
  let result = "<i>" . a:str . "</i>"
  return result
endfunction
vnoremap ,ii ygv"=Italicize(@")<CR>Pgv

function! Underline(str)
  let result = "<u>" . a:str . "</u>"
  return result
endfunction
vnoremap ,uu ygv"=Underline(@")<CR>Pgv

function! List(str)
  let result = "<li>" . a:str . "</li>"
  return result
endfunction
vnoremap ,li ygv"=List(@")<CR>Pgv

function! Span(str)
  let result = "<span>" . a:str . "</span>"
  return result
endfunction
vnoremap ,sp ygv"=Span(@")<CR>Pgv

function! DBolding(str)
  let result = "&lt;b&gt;" . a:str . "&lt;/b&gt;"
  return result
endfunction
vnoremap ,dbb ygv"=DBolding(@")<CR>Pgv

function! DItalicize(str)
  let result = "&lt;i&gt;" . a:str . "&lt;/i&gt;"
  return result
endfunction
vnoremap ,dii ygv"=DItalicize(@")<CR>Pgv

function! DUnderline(str)
  let result = "&lt;u&gt;" . a:str . "&lt;/u&gt;"
  return result
endfunction
vnoremap ,duu ygv"=DUnderline(@")<CR>Pgv

function! MailTo(str)
  let result = "<a href='mailto:" . a:str . "' target='_blank'>" . a:str . "</a>"
  return result
endfunction
vnoremap ,am ygv"=MailTo(@")<CR>Pgv

function! AnchorLink(str)
  let result = "<a href='" . a:str . "' target='_blank'>" . a:str . "</a>"
  return result
endfunction
vnoremap ,al ygv"=AnchorLink(@")<CR>Pgv
