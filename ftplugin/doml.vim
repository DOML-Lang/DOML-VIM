" Vim ftplugin File
" Language:		DOML
" Maintainer:	Braedon Wooding <braedonww@gmail.com> https://github.com/DOML-DataOrientedMarkupLanguage/DOML-VIM
" Last Change:  2017-10-09 (YY-MM-DD)

" uncomment below to enable folding
" setlocal foldmethod=syntax

" have warnings by defualt
if !exists("g:vim_doml_warnings")
	let g:vim_doml_warnings = 1
end

setlocal commentstring=//\ %s
" setlocal iskeyword+=;,@-@
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal completefunc=syntaxcomplete#Complete
