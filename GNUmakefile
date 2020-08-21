#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# If the variable 'LIB_GMSLE_PATH' is defined, then make sure it is correct.
ifneq '$(LIB_GMSLE_PATH)' ''
    ifeq '$(LIB_GMSLE_PATH)' ''
        $(warning The variable 'LIB_GMSLE_PATH' is defined but empty.)
        $(warning It will be undefined to force the computation of the path.)
        undefine LIB_GMSLE_PATH
    else
        $(shell test -f $(LIB_GMSLE_PATH))
        ifeq '$(.SHELLSTATUS)' '0'
            ifneq '$(LIB_GMSLE_FILE)' ''
                $(warning The variable 'LIB_GMSLE_PATH' already points to a file.)
                $(warning The variable 'LIB_GMSLE_FILE' will be overwritten.)
            endif
            LIB_GMSLE_FILE := $(notdir $(LIB_GMSLE_PATH))
            LIB_GMSLE_PATH := $(dir $(LIB_GMSLE_PATH))
        else
            ifeq '$(LIB_GMSLE_FILE)' ''
                LIB_GMSLE_FILE := GNUmakefile
            endif
        endif
    endif
endif

# If the variable 'LIB_GMSLE_PATH' is not defined, then define it.
ifeq '$(LIB_GMSLE_PATH)' ''
    $(warning The path of the library 'libmake' is not defined.)
    $(warning Define the variable 'LIB_GMSLE_PATH' to remove this warning message.)
    ifeq '$(strip $(MAKEFILE_LIST))' ''
        $(error The variable 'MAKEFILE_LIST' is not defined or empty, which makes relative inclusion impossible)
    endif
    LIB_GMSLE_PATH := $(lastword $(MAKEFILE_LIST))
    ifeq '$(LIB_GMSLE_PATH)' ''
        LIB_GMSLE_PATH := $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
        ifeq '$(LIB_GMSLE_PATH)' ''
            $(error The variable 'LIB_GMSLE_PATH' could not be inferred)
        endif
    endif
    LIB_GMSLE_PATH := $(realpath $(LIB_GMSLE_PATH))
    LIB_GMSLE_FILE := $(notdir $(LIB_GMSLE_PATH))
    LIB_GMSLE_PATH := $(dir $(LIB_GMSLE_PATH))
endif

# Include the main loader
include $(LIB_GMSLE_PATH)/config.mk
include $(LIB_GMSLE_PATH)/lib/GNUmakefile
