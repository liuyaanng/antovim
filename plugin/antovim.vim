if exists("g:loaded_antovim") || &cp
  finish
endif

let g:loaded_antovim = '0.0.0' " version number
let s:keepcpo = &cpo
set cpo&vim

let g:antovim_definitions = [
  \   ['true', 'false']
  \ ]

autocmd FileType css,less let b:antovim_definitions = [
  \   ['top', 'bottom', 'left', 'right'],
  \   ['block', 'inline-block', 'inline', 'none'],
  \   ['absolute', 'fixed', 'relative', 'static'],
  \   ['px', 'em', 'rem', '%'],
  \ ]

autocmd FileType html,ejs, let b:antovim_definitions = [
  \   ['div', 'span']
  \ ]


command! Antovim call antovim#swap() | silent! call repeat#set("\<Plug>Antovim")

nnoremap <Leader>s :Antovim<cr>

let &cpo = s:keepcpo
unlet s:keepcpo
