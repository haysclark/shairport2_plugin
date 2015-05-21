#!/bin/bash

set -e

rm -fv ShairTunes2.zip

zip -r ShairTunes2.zip *.pm *.txt *.md *.xml helperBinaries

CHK=$(sha1sum -b ShairTunes2.zip|awk '{print $1}')

sed -i "s#<sha>.*</sha>#<sha>${CHK}</sha>#" public.xml
