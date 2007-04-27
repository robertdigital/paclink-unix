divert(-1)
#
#  paclink-unix client for the Winlink 2000 ham radio email system.
#
#  Copyright 2006 Nicholas S. Castellano <n2qz@arrl.net> and others,
#                 See the file AUTHORS for a list.
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Street #330, Boston, MA 02111-1307, USA.
#

MAILER_DEFINITIONS
Mwl2k,		P=/usr/local/libexec/mail.wl2k,
		F=cDFhmnSu,
		S=EnvFromSMTP/HdrFromSMTP,
		R=0/HdrToWL2K,
		E=\r\n,
		M=100000,
		T=X-WL2K/X-WL2K/X-WL2K,
		A=mail.wl2k $g $h $u

LOCAL_NET_CONFIG
R$+ < @ $+ . wl2k > $*	$#wl2k $@ localhost $: $1 < @ $2 >
R$+ < @ wl2k > $*	$#wl2k $@ localhost $: $1

LOCAL_RULESETS
SHdrToWL2K
R$+ < @ $+ . wl2k > $*	$1 < @ $2 >
R$+ < @ wl2k > $*	$1

VERSIONID(`$Id$')
