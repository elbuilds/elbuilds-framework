#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
SUBDIRS=("${RDIR}/Source" "${RDIR}/x86_64")
CREATEREPO_SH='createrepo.sh'

{
  for _dir in ${SUBDIRS[@]}
  do
    { echo '====================================='
      echo "Create repo for directory \"${_dir}\""
      echo '====================================='
    }

    if [[ -d "$_dir" && -x "${_dir}/${CREATEREPO_SH}" ]]
    then
      command "${_dir}/${CREATEREPO_SH}"
    fi
  done

  # No need to deal with return value because '-e' has set.
}

