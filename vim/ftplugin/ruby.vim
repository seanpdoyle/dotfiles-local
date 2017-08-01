" Insert a pry statement
nmap <buffer> <LEADER>bp orequire "pry"; ::Kernel.binding.pry<ESC>^
nmap <buffer> <LEADER>bb orequire "byebug"; ::Kernel.byebug<ESC>^
