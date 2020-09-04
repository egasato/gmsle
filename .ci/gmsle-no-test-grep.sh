#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

# Setup the variable
if command -v grep > /dev/null; then
	export GMSLE_NO_TEST_GREP=""
else
	export GMSLE_NO_TEST_GREP="yes"
fi
echo "GMSLE_NO_TEST_GREP = ${GMSLE_NO_TEST_GREP}"
