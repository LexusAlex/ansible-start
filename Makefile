UBUNTU_INVENTORY_FILE=inventory.ini
UBUNTU_ROLES=roles/main.yml
UBUNTU_USER=root
UBUNTU_HOST=ubuntu-server

ping:
	ansible $(UBUNTU_HOST) -i $(UBUNTU_INVENTORY_FILE) -u $(UBUNTU_USER) -m ping
ubuntu-add-soft:
	ansible-playbook -i $(UBUNTU_INVENTORY_FILE) $(UBUNTU_ROLES) -l $(UBUNTU_HOST) -u $(UBUNTU_USER)