
P_MANAGER=
OS=$(shell uname -s)

PACKAGES=git gcc fzf

ifeq (OS, Linux)
	P_MANAGER=apt
else ifeq
	$(PM_MAC) install $(PACKAGES)
	P_MANAGER=brew
else
	$(error Unsupported operating system $(OS))
endif
	

.PHONY: install
instal:
	$(P_MANAGER) install $(PACKAGES)
