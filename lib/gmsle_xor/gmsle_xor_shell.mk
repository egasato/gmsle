#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Logical/boolean XOR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_xor_shell = $(shell $(GMSLE_TEST) -z '$(1)' && $(GMSLE_ECHO) '$(2)' || $(GMSLE_TEST) -z '$(2)' && $(GMSLE_ECHO) '$(1)' || $(GMSLE_ECHO) '')
