#!/bin/bash
### require spm_env.bash
[[ $(type -t log_info) != function ]] && source spm_env.bash
log_info "==================<[ Starting $0 ]>=================="

###
LOCALROOT=$(pwd)/.localroot
log_info "Will wipe local root ${LOCALROOT}"
[ ! -d "${LOCALROOT}" ] && log_ok "Nothing to do"
[ -d "${LOCALROOT}" ] && log_trace "Removing directory... " && rm -Rf "${LOCALROOT}" && log_ok "Done"