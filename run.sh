#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

__token_file="./config/token/token"  

#. ./add_env.sh  $__token_file

. $__token_file
export FRP_SERVER_ADDR FRP_SERVER_PORT FRP_VISTOR_KEY FRP_TOKEN

./frpc -c ./config/client/op-proxy.toml 
