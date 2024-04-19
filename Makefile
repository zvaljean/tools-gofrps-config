-include .secret

.PHONY: var

var:
ifndef SERVER_ADDR
SERVER_ADDR := "127.0.0.1"
endif

ifndef TOKEN
TOKEN := "123456"
endif

ifndef VISTOR_KEY
VISTOR_KEY := "abcdefg"
endif

.SILENT:
.ONESHELL:
run: var
	export FRP_SERVER_ADDR=$(SERVER_ADDR)
	export FRP_TOKEN=$(TOKEN)
	export FRP_VISTOR_KEY=$(VISTOR_KEY)
	./frpc -c ./config/client/client.toml
