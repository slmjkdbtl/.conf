" wengwengweng

call ft#detect("*.toml", "toml")
call ft#detect("*.fish", "fish")
call ft#detect("*.dyon", "dyon")
call ft#detect('Tupfile', 'tup')

autocmd FileType * setlocal formatoptions-=cro

