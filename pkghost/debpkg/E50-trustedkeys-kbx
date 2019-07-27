#! /usr/bin/env bash

#########################################################################
#									#
# Script ID: E50-trustedkeys-kbx.sh					#
# Author: Copyright (C) 2018-2019  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# A hook script to prepare for gpgv.					#
# The required keybox 'trustedkeys.kbx' is created if it does not exist	#
# then it is loaded or refreshed with m.grant.prg@gmail.com public key.	#
#									#
# With a script name starting with 'E' this is run during create and	#
# update after apt-get work is completed. (See man 8 pbuilder (the part	#
# under --hookdir=)).							#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 26/02/2018	MG	1.0.1	Created.				#
# 29/01/2019	NG	1.0.2	Change --recv-keys 20ECF9F0 to		#
#				--refresh-keys				#
# 27/07/2019	MG	1.0.2	Use --recv-keys for create and		#
#				--refresh-keys otherwise.		#
#									#
#########################################################################


echo "Installing gpg key for m.grant.prg@gmail.com"

gpg --no-default-keyring --keyring trustedkeys.kbx --fingerprint

if [[ $PBUILDER_OPERATION == create ]]; then
	gpg --no-default-keyring --keyring trustedkeys.kbx --recv-keys 20ECF9F0
else
	gpg --no-default-keyring --keyring trustedkeys.kbx --refresh-keys
fi

find /root/.gnupg -type s | xargs rm -fv

