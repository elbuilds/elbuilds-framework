#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f $0))
CREATEREPO='createrepo'
COMPS_XML="${RDIR}/comps.xml"
PACKAGES_DIR="${RDIR}/Packages"

{
  command "$CREATEREPO" -v -p -g "$COMPS_XML" -o "$RDIR" "$RDIR"
  # No need to deal with return value because '-e' has set.
}

