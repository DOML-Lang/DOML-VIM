" Vim indent File
" Language:		DOML
" Maintainer:	Braedon Wooding <braedonww@gmail.com> https://github.com/DOML-DataOrientedMarkupLanguage/DOML-VIM
" Last Change:  2017-10-09 (YY-MM-DD)

" 0. Init

" Only load if no other indentation is done
if exists("b:did_indent")
	finish
endif

finish

let b:did_indent = 1

setlocal nosmartindent

setlocal indentexpr=GetDOMLIndent()
setlocal indentkeys=0{,0},0),0[,

" Only build function once
if exists("*GetDOMLIndent")
	finish
endif

let s:cpo_save = &cpo
set cpo&vim

" 1. Variables


