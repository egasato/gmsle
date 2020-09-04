#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

# Setup the variable
export GMSLE_NO_TEST_GUILE="yes"
for word in $(make -f .ci/features.mk); do
	if test $word = guile; then
		export GMSLE_NO_TEST_GUILE=""
	fi
done
echo "GMSLE_NO_TEST_GUILE = ${GMSLE_NO_TEST_GUILE}"
