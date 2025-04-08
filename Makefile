.PHONY: 
.SILENT:
.ONESHELL:
op-proxy:
	. ./config/token/token
	export FRP_SERVER_ADDR FRP_SERVER_PORT FRP_VISTOR_KEY FRP_TOKEN
	./frpc -c ./config/client/op-proxy.toml
wk: 
	. ./config/token/token
	export FRP_SERVER_ADDR FRP_SERVER_PORT FRP_VISTOR_KEY FRP_TOKEN
	./frpc -c ./config/client/wk-client.toml
