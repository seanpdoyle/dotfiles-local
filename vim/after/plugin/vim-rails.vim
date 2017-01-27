let g:rails_projections = {
      \ "app/services/*.rb": {
      \   "command": "service",
      \   "template": "class {camelcase|capitalize|colons}\nend",
      \   "test": [
      \     "spec/services/{}_spec.rb"
      \   ]
      \ }
      \}
