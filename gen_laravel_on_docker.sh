#!/usr/bin/zsh
. ./Helper/DBHelper.lib
. ./Helper/AppHelper.lib
. ./Helper/DockerHelper.lib
. ./Helper/commonHelper.lib

typeset -a DB_KIND
typeset -a DB_NAME
typeset -a DB_USER
typeset -a DB_PWORD
typeset -a DB_PORT

typeset -a WEB_SERVER_PORT

setDB
setApp
runDocker