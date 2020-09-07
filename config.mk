#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/enums.mk

## Define the default configuration

GMSLE_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)
GMSLE_WARNINGS ?= $(GMSLE_WARNINGS_YES)
GMSLE_ERRORS   ?= $(GMSLE_ERRORS_YES)

<<<<<<< HEAD
GMSLE_AWK     ?= awk
GMSLE_COMMAND ?= command -v
GMSLE_ECHO    ?= echo
GMSLE_GREP    ?= grep
GMSLE_SED     ?= sed
GMSLE_TEST    ?= test
GMSLE_TR      ?= tr
=======
GMSLE_AWK      ?= awk
GMSLE_CMP      ?= cmp
GMSLE_COMMAND  ?= command -v
GMSLE_CP       ?= cp
GMSLE_ECHO     ?= echo
GMSLE_GREP     ?= grep
GMSLE_LN       ?= ln
GMSLE_READLINK ?= readlink
GMSLE_REALPATH ?= realpath
GMSLE_RM       ?= rm
GMSLE_RMDIR    ?= rmdir
GMSLE_SED      ?= sed
GMSLE_TEST     ?= test
GMSLE_TOUCH    ?= touch
GMSLE_TR       ?= tr
>>>>>>> 9f33cbec... Add 'GMSLE_TARGET_CLEAN_PREFER' default configuration

GMSLE_ABSPATH_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_ABSPATH_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_ABSPATH_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_ADDPREFIX_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_ADDPREFIX_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_ADDPREFIX_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_ADDPREFIX_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_ADDSUFFIX_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_ADDSUFFIX_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_ADDSUFFIX_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_ADDSUFFIX_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_AND_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_AND_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_AND_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_AND_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_BASENAME_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_BASENAME_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_BASENAME_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_BASENAME_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_COMMAND_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_COMMAND_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_COMMAND_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_DIR_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_DIR_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_DIR_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_DIR_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_EVAL_PREFER  ?=
GMSLE_EVAL_INCLUDE ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_FALSE_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_FALSE_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_FALSE_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_FALSE_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_FINDSTRING_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_FINDSTRING_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_FINDSTRING_PREFER ?= $(GMSLE_PREFER_GREP)
# GMSLE_FINDSTRING_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_FINDSTRING_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_FIRSTWORD_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_FIRSTWORD_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_FIRSTWORD_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_FIRSTWORD_PREFER ?= $(GMSLE_PREFER_SED)
# GMSLE_FIRSTWORD_PREFER ?= $(GMSLE_PREFER_GREP)
GMSLE_FIRSTWORD_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_IF_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_IF_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_IF_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_JOIN_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_JOIN_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_JOIN_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_LASTWORD_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_LASTWORD_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_LASTWORD_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_LASTWORD_PREFER ?= $(GMSLE_PREFER_SED)
# GMSLE_LASTWORD_PREFER ?= $(GMSLE_PREFER_GREP)
GMSLE_LASTWORD_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_NAND_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_NAND_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_NAND_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_NAND_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_NEWLINE_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_NEWLINE_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_NEWLINE_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_NEWLINE_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_NOR_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_NOR_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_NOR_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_NOR_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_NOT_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_NOT_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_NOT_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_NOT_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_NOTDIR_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_NOTDIR_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_NOTDIR_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_NOTDIR_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_OR_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_OR_PREFER ?= $(GMSLE_PREFER_MAKE)
# GMSLE_OR_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_OR_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_REALPATH_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_REALPATH_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_REALPATH_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_SEMVER_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_SEMVER_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_SEMVER_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_SORT_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_SORT_PREFER ?= $(GMSLE_PREFER_SHELL)
# GMSLE_SORT_PREFER ?= $(GMSLE_PREFER_AWK)
GMSLE_SORT_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_STRIP_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_STRIP_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_STRIP_PREFER ?= $(GMSLE_PREFER_SED)
# GMSLE_STRIP_PREFER ?= $(GMSLE_PREFER_GREP)
GMSLE_STRIP_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_SUBST_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_SUBST_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_SUBST_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_SUBST_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_SUFFIX_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_SUFFIX_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_SUFFIX_PREFER ?= $(GMSLE_PREFER_SED)
GMSLE_SUFFIX_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_TARGET_PREFER  ?=
GMSLE_TARGET_INCLUDE ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_TARGET_CLEAN_PREFER   ?=
GMSLE_TARGET_CLEAN_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)
GMSLE_TARGET_CLEAN_UPTODATE ?=

GMSLE_TRUE_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_TRUE_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_TRUE_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_TRUE_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_WORD_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_WORD_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_WORD_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_WORDLIST_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_WORDLIST_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_WORDLIST_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_WORDS_PREFER   ?= $(GMSLE_PREFER_GUILE)
# GMSLE_WORDS_PREFER ?= $(GMSLE_PREFER_AWK)
# GMSLE_WORDS_PREFER ?= $(GMSLE_PREFER_SED)
# GMSLE_WORDS_PREFER ?= $(GMSLE_PREFER_GREP)
GMSLE_WORDS_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)

GMSLE_XOR_PREFER   ?= $(GMSLE_PREFER_MAKE)
# GMSLE_XOR_PREFER ?= $(GMSLE_PREFER_GUILE)
# GMSLE_XOR_PREFER ?= $(GMSLE_PREFER_SHELL)
GMSLE_XOR_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)
