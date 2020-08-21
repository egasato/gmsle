#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## A constant that represents a logical/boolean 'true'.
gmsle_true_shell := $(shell $(GMSLE_ECHO) '\#t')
