if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax match osbrdOperator "|\|::=\|\^"

syntax match osbrdLiteral "'.\{-}'"

syntax match osbrdBadHat "\^\{3,}"
syntax match osbrdBuiltInType "&\w\+"

syntax region osbrdComment start="(\*" end="\*)"

hi def link osbrdOperator Operator
hi def link osbrdComment Comment
hi def link osbrdLiteral Constant
hi def link osbrdBadHat Error
hi def link osbrdBuiltInType Type
