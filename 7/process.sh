#!/usr/bin/env bash
set -ex

RDIR=$(dirname $(readlink -f "$0"))
CREATEREPO_SH="${RDIR}/createrepo.sh"
SIGN_SH="${RDIR}/sign.sh"

LANG=en_US.UTF-8 && {
  command "$SIGN_SH"
  command "$CREATEREPO_SH"
  # No need to deal with return value because '-e' has set.
} 2>&1 | tee last.log

