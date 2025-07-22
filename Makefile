commit:
	@read -p "Enter commit message: " msg; \
	git add . && \
	git commit -m "$$msg" && \
	sudo nixos-rebuild switch --flake .#kits
