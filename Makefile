.PHONY: apply force-init init init-upgrade plan update

apply:
	@if [ -d "secrets" -a -f "secrets/mysql_users.tfvars" ]; then \
		terraform apply -var-file=./secrets/mysql_users.tfvars; \
	else \
		terraform apply; \
	fi

force-init:
	terraform init -reconfigure

init:
	terraform init

init-upgrade:
	terraform init -upgrade

plan:
	@if [ -d "secrets" -a -f "secrets/mysql_users.tfvars" ]; then \
		terraform plan -var-file=./secrets/mysql_users.tfvars; \
	else \
		terraform plan; \
	fi

update:
	git pull -v
	@if [ ! -f "modules/.git" ]; then \
		git submodule init; \
	fi
	git submodule update
	cd modules; git checkout main; git pull -v; cd ..
