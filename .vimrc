if $TERM == "xterm-256color"
  set t_Co=256
endif

let g:solarized_bold = 0
"let g:solarized_contrast = "low"
"let g:solarized_termcolors = 256
set background=light
colorscheme solarized

"set cursorline
"set cursorcolumn

set report=0	" Show all lines changed.
set nomodeline	" Do not interpret modeline directives in files we open (more secure)
set clipboard=unnamedplus
set ic
set nu
set nobackup
set nowritebackup
set noswapfile
set noshowmode
set encoding=utf-8

syn on

nmap <silent> ,, !}jq .<CR>}
nmap <silent> ;; :%s/\\n/\r/g<CR>

