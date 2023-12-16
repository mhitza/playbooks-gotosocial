.PHONY: install backup upgrade

install:
	@ansible-playbook playbooks/install.yaml

backup:
	@ansible-playbook playbooks/backup.yaml

upgrade:
	@ansible-playbook playbooks/upgrade.yaml
	@cat ./local/cache/migration_notes.txt
