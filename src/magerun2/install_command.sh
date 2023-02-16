#!/usr/bin/env bash

set -e

MAGERUN_VERSION="${VERSION:-"latest"}"

curl -sS -o /usr/local/bin/magerun https://files.magerun.net/n98-magerun2-${MAGERUN_VERSION}.phar
chmod +x /usr/local/bin/magerun

echo 'Done!'
