map <c-e> :PreviewTag <CR><c-w>jzz<c-w>k
nnoremap <c-e><c-e> <c-w>PzzmZ<c-w>z'Zzz

let g:preview#preview_position = "bottom"
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose <cr>
