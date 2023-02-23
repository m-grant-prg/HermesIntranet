#! /usr/bin/env bash

#########################################################################
#									#
# Script ID: D60-apt-get-update.sh					#
# Author: Copyright (C) 2018, 2021, 2023  Mark Grant			#
#									#
# This file is maintained in the project at:-				#
#	https://github.com/m-grant-prg/pbuilder-config			#
#		new versions are merely copied to consumer projects.	#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
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
# 03/12/2021	MG	1.0.2	Tighten SPDX tag.			#
# 23/02/2023	MG	1.0.3	Add a comment that this file is		#
#				maintained in another project.		#
#									#
#									#
#########################################################################


apt-get update

