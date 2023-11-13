#!/bin/bash
### require spm_env.bash
[[ $(type -t log_info) != function ]] && source spm_env.bash
log_info "==================<[ Starting $0 ]>=================="

###
LOCALROOT=$(pwd)/.localroot
log_info "Initializing local root into ${LOCALROOT}"
create_dir_if_not_exist "${LOCALROOT}/bin"
create_dir_if_not_exist "${LOCALROOT}/includes"
create_dir_if_not_exist "${LOCALROOT}/macrolib"
create_dir_if_not_exist "${LOCALROOT}/lib"

log_ok "Done"