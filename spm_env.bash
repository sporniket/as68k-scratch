#!/usr/bin/env bash
if [ "${BASH_SOURCE-}" = "$0" ]; then
    echo "You must source this script: \$ source $0" >&2
    exit 1
fi

######################################################################
### UTILITIES -- Logging
######################################################################
export LOG_TRACE="\e[90mTRACE\e[0m --"
export LOG_INFO="\e[96mINFO \e[0m --"
export LOG_OK="\e[92mOK   \e[0m --"
export LOG_WARN="\e[93mWARN \e[0m --"
export LOG_ERROR="\e[1;91mERROR\e[0m --"
export LOG_FATAL="\e[1;101mFATAL\e[0m --"

log_trace() {
  echo -e "${LOG_TRACE} $1"
}
export -f log_trace

log_info() {
  echo -e "${LOG_INFO} $1"
}
export -f log_info

log_ok() {
  echo -e "${LOG_OK} $1"
}
export -f log_ok

log_warn() {
  echo -e "${LOG_WARN} $1"
}
export -f log_warn

log_error() {
  echo -e "${LOG_ERROR} $1"
}
export -f log_error

log_fatal() {
  echo -e "${LOG_FATAL} $1"
}
export -f log_fatal
######################################################################
### UTILITIES -- File management
######################################################################
create_dir_if_not_exist () {
    [ ! -d "${1}" ] && log_trace "Make directory '${1}'" && mkdir -p "${1}"
}
######################################################################
# TODO : source local environment...
log_info "environment sourced and ready"
