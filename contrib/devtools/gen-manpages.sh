#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MTC4EID=${MTC4EID:-$SRCDIR/mtc4eid}
MTC4EICLI=${MTC4EICLI:-$SRCDIR/mtc4ei-cli}
MTC4EITX=${MTC4EITX:-$SRCDIR/mtc4ei-tx}
MTC4EIQT=${MTC4EIQT:-$SRCDIR/qt/mtc4ei-qt}

[ ! -x $MTC4EID ] && echo "$MTC4EID not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MTC4VER=($($MTC4EICLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoind if --version-string is not set,
# but has different outcomes for bitcoin-qt and bitcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$MTC4EID --version | sed -n '1!p' >> footer.h2m

for cmd in $MTC4EID $MTC4EICLI $MTC4EITX $MTC4EIQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MTC4VER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MTC4VER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m