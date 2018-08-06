XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates

OF_TEMPLATES_DIR=VIPER

install_viper_templates:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(OF_TEMPLATES_DIR)
	cp -R $(OF_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_viper_templates:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(OF_TEMPLATES_DIR)