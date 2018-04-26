#!/bin/bash

BDIR=~/tmp/REMARK.2018-Apr-23_CodeEurope_DevMicroServicesWithKubernetes

[ "$1" = "-x" ] && BASH="bash -x"

$BASH ~/z/bin/Deployed/backup_files.sh --bd $BDIR

ls -altr $BDIR

