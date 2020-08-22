#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

##############################################################################
##                                 WARNING                                  ##
##--------------------------------------------------------------------------##
## This implementation does not work exactly the same as the built-in       ##
## 'or' function provided by GNU Make, because the evaluation of the        ##
## parameters is done prior to the execution, that is, when the 'call'      ##
## function is being invoked.                                               ##
##                                                                          ##
## This means that it is not recommended to use this function with          ##
## consequents or alternates that have side effects, unless you are 100%    ##
## sure that the side-effects of both the consequent and the alternate can  ##
## co-exist (which usually makes no sense) or that your 'make'              ##
## implementation supports the built-in 'or' function.                      ##
##############################################################################

## Logical/boolean OR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_or_native = $(or $(1),$(2))
