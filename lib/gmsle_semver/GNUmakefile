#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

## WARNING: We cannot use of the '__gmsle_has_guile' because it would create
## a recursive dependency, so this loader MUST perform the same check itself.

ifndef gmsle_semver
    ifeq '$(GMSLE_SEMVER_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_semver/gmsle_semver_shell.mk
        gmsle_semver = $(call gmsle_semver_shell,$(1),$(2),$(3))
    else
        ifneq '$(GMSLE_SEMVER_PREFER)' '$(GMSLE_PREFER_GUILE)'
            ifndef __gmsle_include_ifndef
                include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
            endif
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_SEMVER_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_semver' will be loaded.)
        endif
        define __gmsle_has_guile
        #t
        endef
        __gmsle_has_guile := $(guile $(__gmsle_has_guile))
        ifneq '$(__gmsle_has_guile)' ''
            include $(LIB_GMSLE_PATH)/lib/gmsle_semver/gmsle_semver_guile.mk
            gmsle_semver = $(call gmsle_semver_guile,$(1),$(2),$(3))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_semver/gmsle_semver_shell.mk
            gmsle_semver = $(call gmsle_semver_shell,$(1),$(2),$(3))
        endif
    endif
endif #gmsle_semver
