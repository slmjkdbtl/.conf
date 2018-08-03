# wengwengweng

NVIM = ~/.config
FISH = ~/.config
MPV = ~/.config
SKHDRC = ~

.PHONY: link
link:

	echo "+ linking"
	echo "  - nvim -> $(NVIM)/nvim"
	ln -sf $(realpath nvim) $(NVIM)
	echo "  - fish -> $(FISH)/fish"
	ln -sf $(realpath fish) $(FISH)
	echo "  - mpv -> $(MPV)/mpv"
	ln -sf $(realpath mpv) $(MPV)
	echo "  - .skhdrc -> $(SKHDRC)/.skhdrc"
	ln -sf $(realpath .skhdrc) $(SKHDRC)
