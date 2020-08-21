#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Shows an internal error message (up to 2 parameters or 1 colon)
ifndef __gmsle_error
    ifeq '$(GMSLE_ERRORS)' '$(GMSLE_ERRORS_NO)'
        __gmsle_error :=
    else
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_name.mk
        __gmsle_error = $(if $(2),                                 \
                            $(error $(__gmsle_name) >>> $(1),$(2)),\
                            $(error $(__gmsle_name) >>> $(1)))
    endif
endif
