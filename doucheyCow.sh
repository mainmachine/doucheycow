#!/bin/bash
RSS_URL=http://doucheyaccountguy.tumblr.com/rss
wget ${RSS_URL} -O - 2>/dev/null | \
xmlstarlet sel -t -m "/rss/channel/item" \
  -v "title" -n | shuf | head -n 1 | iconv -f utf-8 -t ascii//translit | cowthink -f www
