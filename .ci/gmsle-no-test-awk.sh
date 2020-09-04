#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

# Setup the variable
if command -v awk > /dev/null; then
	export GMSLE_NO_TEST_AWK=""
else
	export GMSLE_NO_TEST_AWK="yes"
fi
echo "GMSLE_NO_TEST_AWK = ${GMSLE_NO_TEST_AWK}"
