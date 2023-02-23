#! /usr/bin/env bash

#########################################################################
#									#
# Script ID: E50-trustedkeys-kbx.sh					#
# Author: Copyright (C) 2018-2021, 2023  Mark Grant			#
#									#
# This file is maintained in the project at:-				#
#	https://github.com/m-grant-prg/pbuilder-config			#
#		new versions are merely copied to consumer projects.	#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# A hook script to prepare for gpgv.					#
# The keybox 'trustedkeys.kbx' is required by gpgv and is created if it #
# does not exist, then it is loaded or refreshed with			#
# m.grant.prg@gmail.com public key.					#
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
# 27/07/2019	MG	1.0.3	Use --recv-keys for create and		#
#				--refresh-keys otherwise.		#
# 28/02/2020	MG	1.0.4	In create mode add a server from which	#
#				to receive the key.			#
# 03/05/2020	MG	1.0.5	Use the keyserver option as this is a	#
#				fairly bare implementation in the	#
#				chroot.					#
# 25/01/2021	MG	1.0.6	Make the keyserver TLS certificate	#
#				known to dirmngr.			#
#				gpg to use hkps servers.		#
# 08/02/2021	MG	1.0.7	Add quirk for xenial to still use hkp.	#
# 09/02/2021	MG	1.0.8	Add stretch to xenial quirk.		#
#				Ensure .gnupg directory exists before	#
#				invoking dirmngr.			#
# 30/07/2021	MG	1.0.9	sks-keyservers has been shutdown,	#
#				replace with keyservers.ubuntu.com	#
# 03/12/2021	MG	1.0.10	Tighten SPDX tag.			#
# 23/02/2023	MG	1.0.11	Add a comment that this file is		#
#				maintained in another project.		#
#									#
#									#
#########################################################################


echo "Installing gpg key for m.grant.prg@gmail.com"
# Ensure the .gnupg directory exists.
gpg --list-keys

if [[ $REL == xenial || $REL == stretch ]]; then
	keyserver="hkp://keyserver.ubuntu.com"
else
	keyserver="hkps://keyserver.ubuntu.com"
fi

# The keybox 'trustedkeys.kbx' is required by gpgv.
gpg --no-default-keyring --keyring trustedkeys.kbx --fingerprint

if [[ $PBUILDER_OPERATION == create ]]; then
	gpg --no-default-keyring --keyring trustedkeys.kbx \
		--keyserver $keyserver --recv-keys 20ECF9F0
else
	gpg --no-default-keyring --keyring trustedkeys.kbx \
		--keyserver $keyserver --refresh-keys
fi

find /root/.gnupg -type s | xargs rm -fv

