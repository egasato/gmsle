#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

if command -v awk > /dev/null; then
	echo "Output of 'awk --version':"
	awk --version
fi
exit 0
