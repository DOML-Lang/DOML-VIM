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
syntax match DOMLNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match DOMLNumber "\v<0b[01]+>"
syntax match DOMLNumber "\v<0o\o+>"

syntax region DOMLComment start="//" end="$"
syntax region DOMLBlockComment start="/\*" end="\*/"

syntax region DOMLString start=/"/ skip=/\\"/ end=/"/

highlight link DOMLKeyword Keyword
highlight link DOMLString String
highlight link DOMLNumber Number
highlight link DOMLComment Comment
highlight link DOMLBoolean Boolean
highlight link DOMLBlockComment Comment

syntax sync minlines=200
syntax sync maxlines=500
