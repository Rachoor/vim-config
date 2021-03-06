" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T
  set guioptions-=m

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  if has('win32')
    au GUIEnter * simalt ~x
  elseif has('mac')
    set fuoptions=maxvert,maxhorz
  endif

" set a valid swap file location
  if has('win32')
    set directory=%TEMP%
  endif

" turn off beeping and prevent screen lighting flash
  if has('win32')
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
  endif

" set default font
" https://github.com/Lokaltog/powerline-fonts
  if has('mac') || has('win32')
    set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h11
  else
    set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline\ 10
  endif

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  colorscheme codeschool

runtime! custom_config/*.gvim

" Go to tab by number
  if has('mac')
    noremap <D-1> 1gt
    noremap <D-2> 2gt
    noremap <D-3> 3gt
    noremap <D-4> 4gt
  endif
