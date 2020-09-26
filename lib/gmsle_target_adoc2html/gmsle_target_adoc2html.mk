#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifneq '$(GMSLE_TARGET_ADOC2HTML_AUTOCLEAN)' ''
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        $(call __gmsle_include_ifndef,gmsle_dir,$(LIB_GMSLE_PATH)/lib/gmsle_dir/GNUmakefile)
        $(call __gmsle_include_ifndef,gmsle_notdir,$(LIB_GMSLE_PATH)/lib/gmsle_notdir/GNUmakefile)
        $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        $(call __gmsle_include_ifndef,gmsle_target_clean,$(LIB_GMSLE_PATH)/lib/gmsle_target_clean/GNUmakefile)
    endif
endif

# Define a helper variable
ifndef __gmsle_has_command_asciidoctor
__gmsle_has_command_asciidoctor := $(call gmsle_command,$(GMSLE_ASCIIDOCTOR))
endif #__gmsle_has_command_asciidoctor

## Creates a target that converts a AsciiDoc text document to HTML:
## - 1: The source file.
## - 2: The output name.
define gmsle_target_adoc2html

# Define the target
$(call gmsle_target_adoc2html_name,$(1),$(2)): $(call gmsle_target_adoc2html_deps,$(1),$(2))
ifneq '$(__gmsle_has_command_asciidoctor)' ''
ifeq '$(GMSLE_ASCIIDOCTORFLAGS)' ''
	$(GMSLE_ASCIIDOCTOR) -b html5 $$<
else
	$(GMSLE_ASCIIDOCTOR) -b html5 $(GMSLE_ASCIIDOCTORFLAGS) $$<
endif
ifneq '$(2)' ''
	mv $(call gmsle_target_adoc2html_name,$(1),) $$@
endif
else
ifeq '$(GMSLE_ASCIIDOCFLAGS)' ''
	$(GMSLE_ASCIIDOC) $$<
else
	$(GMSLE_ASCIIDOC) $(GMSLE_ASCIIDOCFLAGS) $$<
endif
ifneq '$(2)' ''
	mv $(call gmsle_target_adoc2html_name,$(1),) $$@
endif
endif

# Create a cleaning target if necessary
ifneq '$(GMSLE_TARGET_ADOC2HTML_AUTOCLEAN)' ''
$(call gmsle_target_clean,$(call gmsle_target_adoc2html_name,$(1),$(2)))
endif

endef
