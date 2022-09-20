OS := $(shell uname)

ifeq ($(OS), Darwin)
	INSTALL_FLAG = "install-unix"
	INSTALL_DIR = "~/Library/Rime"
endif
ifeq ($(OS), Linux)
	INSTALL_FLAG = "install-unix"
	INSTALL_DIR = "~/.config/ibus/rime"
endif
ifeq ($(OS), Windows_NT)
	INSTALL_FLAG = "install-win"
	INSTALL_DIR = "%APPDATA%\Rime"
endif


install:
	@make $(INSTALL_FLAG)

install-unix:
	@eval "ln -sf $(CURDIR)/default.custom.yaml     $(INSTALL_DIR)/default.custom.yaml"
	@eval "ln -sf $(CURDIR)/luna_pinyin.custom.yaml $(INSTALL_DIR)/luna_pinyin.custom.yaml"
	@eval "ln -sf $(CURDIR)/squirrel.custom.yaml    $(INSTALL_DIR)/squirrel.custom.yaml"
	@eval "ln -sf $(CURDIR)/pinyin_simp.custom.yaml $(INSTALL_DIR)/pinyin_simp.custom.yaml"
	@eval "ln -sf $(CURDIR)/pinyin_simp.dict.yaml $(INSTALL_DIR)/pinyin_simp.dict.yaml"
	@eval "ln -sf $(CURDIR)/pinyin_simp.schema.yaml $(INSTALL_DIR)/pinyin_simp.schema.yaml"
	@curl -fsSL https://raw.githubusercontent.com/rime/plum/master/rime-install | bash
	@bash rime-install emoji:customize:schema=pinyin_simp
	@bash rime-install pinyin-simp

install-win:
	@eval "cp $(CURDIR)/default.custom.yaml     $(INSTALL_DIR)\default.custom.yaml"
	@eval "cp $(CURDIR)/luna_pinyin.custom.yaml $(INSTALL_DIR)\luna_pinyin.custom.yaml"
	@eval "cp $(CURDIR)/squirrel.custom.yaml    $(INSTALL_DIR)\squirrel.custom.yaml"

uninstall:
	@eval "rm $(INSTALL_DIR)/default.custom.yaml"
	@eval "rm $(INSTALL_DIR)/luna_pinyin.custom.yaml"
	@eval "rm $(INSTALL_DIR)/squirrel.custom.yaml"
