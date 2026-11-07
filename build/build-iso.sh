#!/usr/bin/env bash
# Usage: ./build/build-iso.sh <forensics|netsec|base>
set -euo pipefail
PROFILE="${1:?usage: $0 <forensics|netsec|base>}"
[ -d live-build-config ] || { echo "run build/setup-build-env.sh first"; exit 1; }
LIST="config/profiles/${PROFILE}.list"
[ -f "$LIST" ] || { echo "unknown profile: $PROFILE"; exit 1; }
# TODO(agent): verify Kali's current variant dir layout before enabling these lines:
# cp config/profiles/base.list live-build-config/kali-config/variant-xfce/package-lists/einux-base.list.chroot
# cp "$LIST" live-build-config/kali-config/variant-xfce/package-lists/einux-${PROFILE}.list.chroot
# (cd live-build-config && ./build.sh --distribution kali-rolling --variant xfce --verbose)
echo "Skeleton only - enable after review."
