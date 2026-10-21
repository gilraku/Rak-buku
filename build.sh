#!/bin/sh
# Bungkus src/app.html menjadi index.html yang bisa dibuka langsung di browser.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="id">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat src/app.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html dibuat"
