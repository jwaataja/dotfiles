" Roughly follows http://geosoft.no/development/cppstyle.html
" I don't prefer these but they're okay. Particularly shiftwidth, cinoptions=:s
" which indents case labels, and gs, which indents public and private.
setlocal cinoptions=>1s,:s,=s,gs,N-s,(0,Us,Ws
setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab
setlocal textwidth=80

" My preferred settings. Doesn't indent case labels or C++ scope declarations
" like public and private.
" setlocal cinoptions=>1s,:0,=s,g0,N-s,(0,Us,Ws
" setlocal shiftwidth=4
" setlocal tabstop=4
" setlocal expandtab
" setlocal textwidth=79