" lifted from Chris Toomey's dotfiles
"
" https://github.com/christoomey/dotfiles/blob/e3bff3d0842688ef4173d65df24c9f53e432604d/vim/rcplugins/ale-lint#L12-L20
"
" Linting on all changes felt too aggressive. The below settings calls lint on
" certain events, either when I stop interacting or when entering / leaving
" insert mode
set updatetime=1000
autocmd CursorHold * call ale#Lint()
autocmd CursorHoldI * call ale#Lint()
autocmd InsertLeave * call ale#Lint()
autocmd TextChanged * call ale#Lint()
let g:ale_lint_on_text_changed = 0
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
