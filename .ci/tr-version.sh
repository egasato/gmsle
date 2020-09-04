#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-3.0-or-later

if command -v tr > /dev/null; then
	echo "Output of 'tr --version':"
	tr --version
fi
exit 0
