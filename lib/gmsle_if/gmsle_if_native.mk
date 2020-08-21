#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

##############################################################################
##                                 WARNING                                  ##
##--------------------------------------------------------------------------##
## This implementation does not work exactly the same as the built-in       ##
## 'if' function provided by GNU Make, because the evaluation of the        ##
## parameters is done prior to the execution, that is, when the 'call'      ##
## function is being invoked.                                               ##
##                                                                          ##
## This means that it is not recommended to use this function with          ##
## consequents or alternates that have side effects, unless you are 100%    ##
## sure that the side-effects of both the consequent and the alternate can  ##
## co-exist (which usually makes no sense) or that your 'make'              ##
## implementation supports the built-in 'if' function.                      ##
##############################################################################

## Returns the consequent if the condition is not empty, otherwise returns the
## alternate.
## - 1: The condition.
## - 2: The consequent.
## - 3: The alternate.
gmsle_if_native = $(if $(1),$(2),$(3))
