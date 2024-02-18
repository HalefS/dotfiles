OS := $(shell uname)

PACKAGES := git python3 npm gcc gdb gem zig rustup cargo go

ifeq ($(OS),Darwin)
    P_MANAGER=brew
else ifeq ($(OS),Linux)
    P_MANAGER=sudo apt
else
    $(error Unsupported operating system: $(OS))
endif

.PHONY: install

install:
	@echo "Installing packages using $(P_MANAGER)..."
	$(P_MANAGER) install $(PACKAGES)
