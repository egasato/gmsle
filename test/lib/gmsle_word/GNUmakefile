#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include the correct test
test_name := gmsle_word
ifeq '$(test_type)' 'native'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_word,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_word.mk)
    $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    ifeq '$(__gmsle_has_word)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
    endif
else ifeq '$(test_type)' 'guile'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
else ifeq '$(test_type)' 'shell'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
endif
