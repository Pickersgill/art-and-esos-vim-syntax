if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=>

syntax keyword esosOperator ->
syntax keyword esosLineSeperator ---
syntax keyword esosSigma _sig _sigP

syntax match esosOperator "|>"


syntax match esosTermVariable "\<_\w*\>"

syntax match esosBuiltInValue "__bottom\|__done\|__empty\|__quote\|__binding\|__boolean\|__char"
syntax match esosBuiltInValue "__intAP\|__int32\|__realAP\|__real64\|__array\|__list\|__flexArray"
syntax match esosBuiltInValue "__string\|__set\|__map\|__mapChain"

syntax match esosBuiltInFunction "__compare\|__eq\|__ne\|__gt\|__lt\|__ge\|__le\|__not\|__and\|__or\|__xor"
syntax match esosBuiltInFunction "__cnd\|__lsh\|__rsh\|__ash\|__rol\|__ror\|__neg\|__add\|__sub\|__mul\|__div"
syntax match esosBuiltInFunction "__mod\|__exp\|__size\|__prepend\|__append\|__put\|__get\|__slice\|__slice"
syntax match esosBuiltInFunction "__contains\|__remove\|__extract\|__union\|__intersection\|__difference"
syntax match esosBuiltInFunction "__cast\|__user\|__tlm\|__termRoot\|__termArity\|__termChild"
syntax match esosBuiltInFunction "__termConstruct"

syntax match esosRuleName "-\w*$"

syntax match esosComment "//.*"
syntax match esosTODO "//TODO\|//FIXME\|XXX"

syntax match esosConstant "\<\d*\.\d*\>\|\<\d*\>\|True\|False"

hi def link esosOperator Operator
hi def link esosLineSeperator Operator
hi def link esosTermVariable Constant
hi def link esosBuiltInValue Type
hi def link esosBuiltInFunction Normal
hi def link esosComment Comment
hi def link esosRuleName Comment
hi def link esosConstant Constant
hi def link esosTODO Todo
hi def link esosSigma Special

