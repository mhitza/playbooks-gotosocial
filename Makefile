.PHONY: install backup

install:
	ansible-playbook playbooks/install.yaml

backup:
	ansible-playbook playbooks/backup.yaml
