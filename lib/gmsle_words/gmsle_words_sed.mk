#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Returns the number of words in a text:
## - 1: The text.
gmsle_words_sed = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_TR) "[:space:]" "\n" | $(GMSLE_SED) -n -f $(LIB_GMSLE_PATH)/lib/gmsle_words/gmsle_words_sed.sed)
