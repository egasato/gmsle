#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_wordlist
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_wordlist,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_wordlist.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_wordlist)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_native.mk
        gmsle_wordlist = $(call gmsle_wordlist_native,$(1),$(2),$(3))
    else ifeq '$(GMSLE_WORDLIST_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_shell.mk
        gmsle_wordlist = $(call gmsle_wordlist_shell,$(1),$(2),$(3))
    else
        ifneq '$(GMSLE_WORDLIST_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_WORDLIST_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_wordlist' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_guile.mk
            gmsle_wordlist = $(call gmsle_wordlist_guile,$(1),$(2),$(3))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_shell.mk
            gmsle_wordlist = $(call gmsle_wordlist_shell,$(1),$(2),$(3))
        endif
    endif
endif #gmsle_wordlist
