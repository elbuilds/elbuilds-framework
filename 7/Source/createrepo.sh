#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
CREATEREPO='createrepo'
SPACKAGES_DIR="${RDIR}/SPackages"

{
  command "$CREATEREPO" -v -o "$RDIR" "$RDIR"
  # No need to deal with return value because '-e' has set.
}

