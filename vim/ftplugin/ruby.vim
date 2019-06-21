" Insert a pry statement
nmap <buffer> <LEADER>bp orequire "irb"; ::Kernel.binding.irb<ESC>^
nmap <buffer> <LEADER>bb orequire "byebug"; ::Kernel.byebug<ESC>^
