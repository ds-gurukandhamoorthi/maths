#!/bin/bash
FN=$1
FN_WITHOUT_EXTENSION="${FN%.*}"
cat header-partial-template | sed -e "/<title>/s/>/&$FN_WITHOUT_EXTENSION/"
cat $FN
cat footer-partial-template

