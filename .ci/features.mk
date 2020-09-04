#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Print the supported features
$(info $(.FEATURES))

# A phony target
.PHONY: test
test:
	@#noop
