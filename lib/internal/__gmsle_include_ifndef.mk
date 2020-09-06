#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include guard to avoid double inclusion
ifndef __gmsle_include_ifndef
    define __gmsle_include_ifndef__
        ifndef $(1)
            include $(2)
        endif
    endef
    __gmsle_include_ifndef = $(eval $(call __gmsle_include_ifndef__,$(1),$(2)))
endif
