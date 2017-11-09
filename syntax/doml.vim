" Vim syntax File
" Language:		DOML
" Maintainer:	Braedon Wooding <braedonww@gmail.com> https://github.com/DOML-DataOrientedMarkupLanguage/DOML-VIM
" Last Change:  2017-10-09 (YY/MM/DD)

runtime! ftplugin/doml.vim

if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endi
	let main_syntax = 'DOML'
endif

syn keyword DOMLKeyword System
syn keyword DOMLBoolean true false

syn match DOMLInteger "\<-\=\d\+\%([Ee][-+]\=\d\+\)\=\>"    " Standard Int
syn match DOMLInteger "\<-\=0[xX]\x\+\>"					" Hexadecimal
syn match DOMLInteger "\<-\=0\o\+\>"						" Octal
syn match DOMLIntegerError "\<-\=0\o*[89]\d*\>"				" Octal Error
syn match DOMLInteger "\<-\=0\b\+\>"                        " Binary
syn match DOMLIntegerError "\<-\=0\b*[23456789]\d*\>"		" Binary Error

hi def link DOMLInteger Number
hi def link DOMLIntegerError Error

syn match DOMLNumber "\<-\=\d\+\.\d*\%([Ee][-+]\=\d\+\)\=\>"
syn match DOMLNumber "\<-\=\.\d\+\%([Ee][-+]\=\d\+\)\=\>"
syn match DOMLNumber "\<-\=\$\d\+\.\d*\%([Ee][-+]\=\d\+\)\=\>"
syn match DOMLNumber "\<-\=\$\.\d\+\%([Ee][-+]\=\d\+\)\=\>"

hi def link DOMLNumber Float

syntax region DOMLComment start="//" end="$"
syntax region DOMLBlockComment start="/\*" end="\*/"

syntax region DOMLString start=/"/ skip=/\\"/ end=/"/

hi def link DOMLKeyword Keyword
hi def link DOMLString String
hi def link DOMLNumber Number
hi def link DOMLComment Comment
hi def link DOMLBoolean Boolean
hi def link DOMLBlockComment Comment

syntax sync minlines=200
syntax sync maxlines=500
