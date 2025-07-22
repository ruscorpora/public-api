include .env
export $(shell sed 's/=.*//' .env)

ifndef version
$(error укажите version для модуля)
endif

build-python-app:
	python3 scripts/fix_openapi.py
	
	docker run \
		--rm -v ${PWD}:/local \
		openapitools/openapi-generator-cli generate \
		-i /local/dist/openapi_fixed.json \
		-g python \
		-o /local/dist/rnc-python-client \
		--git-repo-id $$GIT_PYTHON_APP_REPO_ID \
		--git-user-id $$GIT_USER_ID \
		--additional-properties=packageVersion=$(version)

	rm -rf dist/openapi_fixed.json


build-ts-app:
	python3 scripts/fix_openapi.py

	docker run \
		--rm -v ${PWD}:/local \
		openapitools/openapi-generator-cli generate \
		-i /local/dist/openapi_fixed.json \
		-g typescript \
		-o /local/dist/typescript \
		--git-repo-id $$GIT_TYPESCRIPT_APP_REPO_ID \
		--git-user-id $$GIT_USER_ID \
		--additional-properties=packageVersion=$(version)

	rm -rf dist/openapi_fixed.json


build-apps:
	mkdir -p dist
	make build-python-app version=$(version)
	make build-ts-app version=$(version)


publish-python-app:
	/bin/sh "$(PWD)/scripts/git_push.sh" $$GIT_USER_ID $$GIT_PYTHON_APP_REPO_ID "$(PWD)/dist/rnc-python-client" $(version) "$(message)" github.com

publish-typescript-app:
	/bin/sh "$(PWD)/scripts/git_push.sh" $$GIT_USER_ID $$GIT_TYPESCRIPT_APP_REPO_ID "$(PWD)/dist/rnc-python-client" $(version) "$(message)" github.com


publish-apps:
	make publish-python-app version=$(version) message=$(message)
	make publish-typescript-app version=$(version) message=$(message)


update-apps:
	echo "Собираем пакеты и публикуем..."
	make build-apps version=$(version)
	make publish-apps version=$(version) message=$(message)