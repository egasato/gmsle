#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

if command -v grep > /dev/null; then
	echo "Output of 'grep --version':"
	grep --version
fi
exit 0
