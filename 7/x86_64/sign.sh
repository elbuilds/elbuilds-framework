#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
RPMSIGN='rpmsign'
PACKAGES_DIR="${RDIR}/Packages"

{
  _rpms=( )

  if [[ -d "$PACKAGES_DIR" ]]
  then
    _rpms=( $(find "$PACKAGES_DIR" -type f -name '*.rpm') )

    for _rpm in ${_rpms[@]}
    do
      command "$RPMSIGN" --addsign "$_rpm"
    done
  fi

  # No need to deal with return value because '-e' has set.
}

