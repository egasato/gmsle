#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Shows an internal warning message (up to 2 parameters or 1 colon)
ifndef __gmsle_warning
    ifeq '$(GMSLE_WARNINGS)' '$(GMSLE_WARNINGS_NO)'
        __gmsle_warning :=
    else
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_name.mk
        __gmsle_warning = $(if $(2),                                 \
                            $(warning $(__gmsle_name) >>> $(1),$(2)),\
                            $(warning $(__gmsle_name) >>> $(1)))
    endif
endif
