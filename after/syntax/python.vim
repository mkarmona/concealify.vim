" python.vim - vim conceal enhanvement for python
" Maintainer:   Miguel C

" :set foldmethod=marker
if exists('g:no_python_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax keyword pythonNiceOperator lambda conceal cchar=λ
syntax keyword pythonNiceOperator def conceal cchar=ƒ
syntax keyword pythonNiceOperator  conceal cchar=Γ
syntax match pythonNiceOperator "<-" conceal cchar=←
syntax match pythonNiceOperator "->" conceal cchar=→
syntax match pythonNiceOperator "\<sqrt\>" conceal cchar=√ 
syntax match pythonNiceOperator "\<==\>" conceal cchar=≡
syntax match pythonNiceOperator "<>" conceal cchar=≠
syntax match pythonNiceOperator "||" conceal cchar=∨
syntax match pythonNiceOperator "<=\ze[^<]" conceal cchar=≲
syntax match pythonNiceOperator ">=\ze[^>]" conceal cchar=≳
syntax match pythonNiceOperator "++" conceal cchar=⧺

hi link pythonNiceOperator Operator
hi! link Conceal Operator
