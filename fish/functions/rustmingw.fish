# wengwengweng

function rustmingw -d "fix rust mingw"
	pushd $HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/x86_64-pc-windows-gnu/lib/
	mv crt2.o crt2.o.bak
	cp /usr/local/opt/mingw-w64/toolchain-x86_64/x86_64-w64-mingw32/lib/crt2.o ./
	popd
end

