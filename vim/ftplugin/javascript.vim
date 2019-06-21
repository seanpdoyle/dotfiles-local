" Insert a js debugger
nmap <BUFFER> <LEADER>jd odebugger;<ESC>^<ESC>:w<CR>

" Insert a pauseTest statement
nmap <BUFFER> <LEADER>pt oreturn pauseTest();<ESC>:w<CR>

" test suite with qnit
nmap <BUFFER> <LEADER>t :!./node_modules/.bin/qunit -c index.js -t %<CR>

let g:flow#autoclose=1
