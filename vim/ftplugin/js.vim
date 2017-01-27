" Insert a js debugger
nmap <leader>jd odebugger;<esc>^<esc>:w<CR>

" Insert a pauseTest statement
nmap <leader>pt oreturn pauseTest();<esc>:w<CR>

" test suite with qnit
map <Leader>t :!./node_modules/.bin/qunit -c index.js -t %<CR>
