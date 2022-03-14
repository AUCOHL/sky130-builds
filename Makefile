INSTALL_DIR ?= $(HOME)/bin
PYTHON_BIN ?= python3
.PHONY: install
install:
	mkdir -p $(INSTALL_DIR)
	cp ./get_pdk $(INSTALL_DIR)/get_pdk
	chmod +x $(INSTALL_DIR)/get_pdk

.PHONY: deps
deps:
	python3 -m pip install 'click>7' 'pyyaml'