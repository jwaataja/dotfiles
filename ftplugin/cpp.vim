" Roughly follows http://geosoft.no/development/cppstyle.html
" I don't prefer these but they're okay. Particularly shiftwidth, cinoptions=:s
" which indents case labels, and gs, which indents public and private.
"setlocal cinoptions=>1s,:s,=s,l1,gs,N-s,t0,(0,U1,Ws
"setlocal cindent
"setlocal shiftwidth=2
"setlocal tabstop=2
"setlocal expandtab
"setlocal textwidth=80

" My preferred settings. Doesn't indent case labels or C++ scope declarations
" like public and private.
setlocal cinoptions=>1s,:0,=s,g0,N-s,t0,(s,U1,Ws
setlocal cindent
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal textwidth=79

" For CSE333

" setlocal shiftwidth=2
" setlocal tabstop=2
" setlocal softtabstop=2
" setlocal expandtab
" setlocal textwidth=80

" setlocal cindent
" setlocal cinoptions=h1,l1,g1,t0,i4,+4,(0,w1,W4,N-s

" Use these linters with ALE
" let b:ale_linters = ['clangtidy', 'cpplint']
