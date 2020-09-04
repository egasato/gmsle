#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

if command -v sed > /dev/null; then
	echo "Output of 'sed --version':"
	sed --version
fi
exit 0
