if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    autocmd BufNewFile,BufRead *.ctl setfiletype sqlldr
    autocmd BufNewFile,BufRead *.ftl,*ftlh setfiletype ftl
    autocmd BufNewFile,BufRead *.pc setfiletype esqlc
augroup END
