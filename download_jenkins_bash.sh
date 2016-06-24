#!/bin/bash -e
##-------------------------------------------------------------------
## @copyright 2016 DennyZhang.com
## Licensed under MIT
##   https://raw.githubusercontent.com/DennyZhang/devops_public/tag_v1/LICENSE
##
## File : download_jenkins_bash.sh
## Author : DennyZhang.com <denny@dennyzhang.com>
## Description :
## --
## Created : <2015-07-03>
## Updated: Time-stamp: <2016-06-24 17:52:58>
##-------------------------------------------------------------------
download_file=${1?}
working_dir=${2:-"/var/lib/jenkins/code/devops_jenkins"}
enforce_refresh=${3:-""}

[ -n "$enforce_refresh" ] || enforce_refresh="$ENFORCE_REFRESH"
[ -n "$DOWNLOAD_TAG_NAME" ] || export DOWNLOAD_TAG_NAME="tag_v1"

export DOWNLOAD_PREFIX="https://raw.githubusercontent.com/DennyZhang/devops_jenkins/${DOWNLOAD_TAG_NAME}"

download_file="monitor/serverspec_check.sh"
bash_script="${working_dir}/${download_file}"
download_link="${DOWNLOAD_PREFIX}/${download_file}"

function download_script() {
    local bash_script=${1?}
    local download_link=${2?}

    dir_name=$(dirname "$bash_script")

    mkdir -p "$dir_name"
    wget -O "$bash_script" "${DOWNLOAD_PREFIX}/${download_file}"
    chmod 755 "$bash_script"
}

if [ "$enforce_refresh" = "true" ]; then
    download_script "$bash_script" "$download_link"
else
    if [ ! -f "$bash_script" ]; then
        download_script "$bash_script" "$download_link"
    fi
fi
## File : download_jenkins_bash.sh ends
