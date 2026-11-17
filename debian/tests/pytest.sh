#!/bin/bash

set -euo pipefail

cp -a data/ test/ "$AUTOPKGTEST_TMP"
cd "$AUTOPKGTEST_TMP"

for py3vers in $(py3versions -s); do 
	echo "=== ${py3vers} ==="
	"${py3vers}" -m pytest
done
