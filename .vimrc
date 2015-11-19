set nocp
set number
set tabstop=4
syntax on
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
