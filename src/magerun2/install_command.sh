#!/usr/bin/env bash

MAGERUN_VERSION="${VERSION:-"latest"}"

set -e

mkdir -p /usr/local/bin

if [ "$MAGERUN_VERSION" = "latest" ]; then
    curl -sS https://files.magerun.net/n98-magerun2.phar -o /usr/local/bin/magerun2
    curl -sS -o n98-magerun2-latest.phar.sha256 https://files.magerun.net/sha256.php?file=n98-magerun2-latest.phar
    shasum -a 256 -c n98-magerun2-latest.phar.sha256
else
    curl -sS https://files.magerun.net/n98-magerun2.phar -o /usr/local/bin/magerun2
fi

chmod +x /usr/local/bin/magerun2

echo 'Done!'
