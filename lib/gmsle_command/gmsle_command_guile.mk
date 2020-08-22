#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_command/gmsle_command_guile.scm"))

## Checks if a command exists:
## - 1: The command.
gmsle_command_guile = $(guile (gmsle_command "$(1)"))
