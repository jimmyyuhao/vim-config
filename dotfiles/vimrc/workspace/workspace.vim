let g:workspace_autosave_always = 0
let g:workspace_autosave_ignore = ['Quickfix', 'Location', 'gitcommit', 'qf', 'nerdtree', 'tagbar', 'YankRing', 'undo', 'diff']
set sessionoptions-=blank "make workspace_autosave_ignore works"
let g:workspace_persist_undo_history = 1
let g:workspace_undodir='~/.undodir'
