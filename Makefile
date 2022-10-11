install:
	@./scripts/install.sh
build:
	@docker build -t $(shell basename $(PWD)) .
