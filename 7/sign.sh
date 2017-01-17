#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
SUBDIRS=("${RDIR}/Source" "${RDIR}/x86_64")
SIGN_SH='sign.sh'

{
  for _dir in ${SUBDIRS[@]}
  do
    { echo '======================================='
      echo "Sign packages for directory \"${_dir}\""
      echo '======================================='
    }

    if [[ -d "$_dir" && -x "${_dir}/${SIGN_SH}" ]]
    then
      command "${_dir}/${SIGN_SH}"
    fi
  done

  # No need to deal with return value because '-e' has set.
}

