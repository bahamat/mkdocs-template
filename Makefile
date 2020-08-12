# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

export PATH:=$(PWD)/node_modules/.bin:$(PWD)/py-venv/bin/:$(PATH)
SHELL:=/bin/bash

.PHONY: check serve clean deps

site: deps
	sh -c "mkdocs build"

check:
	sh -c "markdownlint docs"

serve: site
	sh -c "mkdocs serve"

clean:
	rm -rf node_modules py-venv package-lock.json

deps: node_modules py-venv

node_modules: package.json
	npm install

py-venv: requirements.txt
	virtualenv-3.7 py-venv
	source py-venv/bin/activate; pip install -r requirements.txt
	@touch py-venv
