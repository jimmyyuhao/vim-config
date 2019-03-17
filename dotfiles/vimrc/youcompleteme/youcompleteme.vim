let g:ycm_add_preview_to_completeopt = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_log_level = "error"
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_comfirm_extra_conf=1

let g:ycm_key_invoke_completion = '<c-space>'
let g:ycm_key_list_select_completion = ['<c-j>']
let g:ycm_key_list_previous_completion=['<c-k>']
let g:ycm_use_ultisnips_completer=1
let g:ycm_auto_trigger=1
let g:ycm_cache_omnifunc=1
let g:ycm_max_num_candidates=30
let g:ycm_max_num_identifiers_candidates=50
let g:ycm_error_symbol ='错'
let g:ycm_warning_symbol = '警'

set completeopt=menu,menuone

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
nmap gf :YcmCompleter GoToInclude<CR>
nnoremap <silent><F9> :YcmForceCompileAndDiagnostics<CR>:YcmDiags<CR>
nmap <c-g> :YcmCompleter GoToDefinition<CR>
nmap <c-s> :YcmCompleter FixIt<CR>
