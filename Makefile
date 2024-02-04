ping:
	ansible $(UBUNTU_HOST) -i $(UBUNTU_INVENTORY_FILE) -u $(UBUNTU_USER) -m ping