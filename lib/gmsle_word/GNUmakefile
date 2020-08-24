#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_word
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_word,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_word.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_word)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_native.mk
        gmsle_word = $(call gmsle_word_native,$(1),$(2))
    else ifeq '$(GMSLE_WORD_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_shell.mk
        gmsle_word = $(call gmsle_word_shell,$(1),$(2))
    else
        ifneq '$(GMSLE_WORD_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_WORD_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_word' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_guile.mk
            gmsle_word = $(call gmsle_word_guile,$(1),$(2))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_shell.mk
            gmsle_word = $(call gmsle_word_shell,$(1),$(2))
        endif
    endif
endif #gmsle_word
