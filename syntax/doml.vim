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

syntax keyword DOMLKeyword System
syntax keyword DOMLBoolean true false

syntax match DOMLNumber "\v<\d+>"
syntax match DOMLNumber "\v<\d+\.\d+>"
syntax match DOMLNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match DOMLNumber "\v<Lx\d+>"
syntax match SSMNumber "\v<Sx\d+>"
syntax match SSMNumber "\v<Dx\d+\.\d+>"

syntax match SSMComment "\v//.*$"
syntax region SSMBlockComment start="/*" end="*/"

syntax match SSMOperator "\%(@\|;\|...\|.)=\?"

syntax region SSMString start=/"/ skip=/\\"/ end=/"/

highlight link SSMKeyword Keyword
highlight link SSMString String
highlight link SSMNumber Number
highlight link SSMComment Comment
highlight link SSMBoolean Boolean
highlight link SSMBlockComment Comment

syntax sync minlines=200
syntax sync maxlines=500
