set number

let g:livepreview_previewer = 'mupdf'

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

syntax on

autocmd FileType html inoremap ;i <em></em><Esc>T>i
autocmd FileType html inoremap ;b <strong></strong><Esc>T>i
autocmd FileType html inoremap ;ul <ul class="" id="" role=""></ul><Esc>T>i
autocmd FileType html inoremap ;li <li class="" id=""></li><Esc>T>i
autocmd FileType html inoremap ;ol <ol class="" id=""></ol><Esc>T>i
autocmd FileType html inoremap ;p <p class="" id=""></p><Esc>T>i
autocmd FileType html inoremap ;a <a href="#" title=""></a><Esc>T#i
autocmd FileType html inoremap ;img <img src="#" alt="" class="" id=""/><Esc>T#i
autocmd FileType html inoremap ;h1 <h1 class="" id=""></h1><Esc>T>i
autocmd FileType html inoremap ;h2 <h2 class="" id=""></h2><Esc>T>i
autocmd FileType html inoremap ;h3 <h3 class="" id=""></h3><Esc>T>i
autocmd FileType html inoremap ;h4 <h4 class="" id=""></h4><Esc>T>i
autocmd FileType html inoremap ;div <div class="" id=""></div><Esc>T>i
autocmd FileType html inoremap ;sp <span class="" id=""></span><Esc>T>i

autocmd FileType tex inoremap ;s \section{}
autocmd FileType tex inoremap ;ss \subsection{}
autocmd FileType tex inoremap ;sss \subsubsection{}
autocmd FileType tex inoremap ;c \begin{center}<Enter><Enter>\end{center}
autocmd FileType tex inoremap ;g \includegraphics[scale=1]{}
autocmd FileType tex inoremap ;t \begin{tabular}{\| X \| X \| X \|}<Enter><Enter>X & X & X<Enter><Enter>\end{tabular}
autocmd FileType tex inoremap ;i \textit{}
autocmd FileType tex inoremap ;b \textbf{}
autocmd FileType tex inoremap ;u \underline{}
autocmd FileType tex inoremap ;p \usepackage{}
