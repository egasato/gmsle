#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

## WARNING: We cannot use of the '__gmsle_has_guile' because it would create
## a recursive dependency, so this loader MUST perform the same check itself.

ifndef gmsle_true
    ifeq '$(GMSLE_TRUE_PREFER)' '$(GMSLE_PREFER_GUILE)'
        define __gmsle_has_guile
        #t
        endef
        __gmsle_has_guile := $(guile $(__gmsle_has_guile))
        ifneq '$(__gmsle_has_guile)' ''
            include $(LIB_GMSLE_PATH)/lib/gmsle_true/gmsle_true_guile.mk
            gmsle_true = $(gmsle_true_guile)
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_true/gmsle_true_make.mk
            gmsle_true = $(gmsle_true_make)
        endif
    else ifeq '$(GMSLE_TRUE_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_true/gmsle_true_shell.mk
        gmsle_true = $(gmsle_true_shell)
    else
        ifneq '$(GMSLE_TRUE_PREFER)' '$(GMSLE_PREFER_MAKE)'
            ifndef __gmsle_include_ifndef
                include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
            endif
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_TRUE_PREFER' has an invalid value.)
            $(call __gmsle_warning,The make version of 'gmsle_true' will be loaded.)
        endif
        include $(LIB_GMSLE_PATH)/lib/gmsle_true/gmsle_true_make.mk
        gmsle_true = $(gmsle_true_make)
    endif
endif #gmsle_true
