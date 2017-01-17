#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
RPMSIGN='rpmsign'
SPACKAGES_DIR="${RDIR}/SPackages"

{
  _srpms=( )

  if [[ -d "$SPACKAGES_DIR" ]]
  then
    _srpms=( $(find "$SPACKAGES_DIR" -type f -name '*.src.rpm') )

    for _srpm in ${_srpms[@]}
    do
      command "$RPMSIGN" --addsign "$_srpm"
    done
  fi

  # No need to deal with return value because '-e' has set.
}

