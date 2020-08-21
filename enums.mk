#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Represents the inclusion policy
GMSLE_INCLUDE_AUTOMATIC := 1
GMSLE_INCLUDE_MANUAL    := 2

# Represents the warning policy
GMSLE_WARNINGS_NO  := 1
GMSLE_WARNINGS_YES := 2

# Represents the error policy
GMSLE_ERRORS_NO  := 1
GMSLE_ERRORS_YES := 2

# Represents the implementation preference policy
GMSLE_PREFER_MAKE  := 1
GMSLE_PREFER_GUILE := 2
GMSLE_PREFER_SHELL := 3
GMSLE_PREFER_AWK   := 4
GMSLE_PREFER_SED   := 5
GMSLE_PREFER_GREP  := 6
