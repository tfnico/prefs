#!/bin/sh
# Compile and show [GFM](https://help.github.com/articles/github-flavored-markdown) docs in your browser.
# Before this works you need to `gem install bcat`
#
# Usage: gfm.sh FILE.md
#

curl --silent --data-binary @$1 https://api.github.com/markdown/raw -H "Content-Type: text/x-markdown" | bcat
