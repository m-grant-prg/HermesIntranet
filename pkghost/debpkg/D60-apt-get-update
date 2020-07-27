#! /usr/bin/env bash

#########################################################################
#									#
# Script ID: D60-apt-get-update.sh					#
# Author: Copyright (C) 2018  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# A hook script to update the package index files.			#
# This is useful when building a sequence of dependent packages so that	#
# any given package will always find the latest dependencies which may	#
# have just been built.							#
#									#
# This is not a substitute for pbuilder update.				#
#									#
# With a script name starting with 'D' this is run during chroot setup,	#
# before dependencies are evaluated and before package building has	#
# started. (See man 8 pbuilder (the part under --hookdir=)).		#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 23/02/2018	MG	1.0.1	Created.				#
#									#
#########################################################################


apt-get update

