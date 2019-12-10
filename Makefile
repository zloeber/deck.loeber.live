SHELL := /bin/bash
.DEFAULT_GOAL := help

ENV ?= local
PROJECTPATH := $(abspath $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))))
CONTENTPATH = ./content

# Deployment configuration settings
dpl ?= $(PROJECTPATH)/config/$(ENV).env
-include $(dpl)
export $(shell sed 's/=.*//' $(dpl))

# Some sane defaults
PUBLISHPATH ?= preview
AUTHOR_NAME ?= Zachary Loeber
AUTHOR_EMAIL ?= zloeber@gmail.com
BASEURL ?= http://localhost/
DISQUSSHORTNAME ?= zacharyloeber-com

# Construct the hugow wrapper for most operations (may take this out later)
HUGO := hugo --contentDir "${CONTENTPATH}" --baseURL "${BASEURL}" --configDir "${PROJECTPATH}" --config config.toml --destination "${PUBLISHPATH}"

.PHONY: help install start stop destroy init init-submodules serve publish show-info generate/preview commit

help: ## This help.
	@echo "Deployment Environment: ${ENV}"
	@grep -E -o -h '^([a-zA-Z_-/])+:.*?##( .*)$$' ./$(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

git/init: ## Initializes git with author information
	git config user.name "${AUTHOR_NAME}"
	git config user.email "${AUTHOR_EMAIL}"

init: git/init ## Initialize project if required

init-submodules: show-info ## Initialize all git submodules
	git submodule init
	git submodule update --recursive --init
	git submodule foreach 'git checkout master'

serve: show-info ## Start a local http server on all interfaces
	${HUGO} server -w

preview: ## Generate the website content (with drafts)
	${HUGO} --buildDrafts --gc

new/post: ## Create a new post
	$(HUGO) new  -k default ${CONTENTPATH}/posts/$(filter-out $@,$(MAKECMDGOALS)).md

%:  ## Passed in argument
	@true

show-info: ## Information about env vars used in this deployment
	@echo "ENV: ${ENV}"
	@echo "SITE: ${SITE}"
	@echo "CONTENTPATH: ${CONTENTPATH}"
	@echo "BASEURL: ${BASEURL}"
	@echo "PUBLISHPATH: ${PUBLISHPATH}"
	@echo "AUTHOR_NAME: ${AUTHOR_NAME}"
	@echo "AUTHOR_EMAIL: ${AUTHOR_EMAIL}"
	@echo "HUGO (cmd): ${HUGO}"
