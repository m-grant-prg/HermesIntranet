#! /usr/bin/env bash

#########################################################################
#									#
# Script ID: D40-gpgv-check-dsc.sh					#
# Author: Copyright (C) 2018, 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# A hook script to run gpgv on all .dsc files.				#
#									#
# The gpgv run by pbuilder -always- fails. Whilst that pbuilder check	#
# still runs and fails, it is now followed by this hook script which	#
# works. gpgv requires the keybox 'trustedkeys.kbx'.			#
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
# 26/02/2018	MG	1.0.1	Created.				#
# 02/05/2020	MG	1.0.2	Update file comment above to include	#
#				note on the requirement for the		#
#				trustedkeys.kbx keybox.			#
#									#
#########################################################################


echo "Checking the following .dsc files:-"
ls /build/*.dsc

gpgv /build/*.dsc

