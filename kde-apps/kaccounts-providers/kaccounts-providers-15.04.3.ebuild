# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_AUTODEPS="false"
inherit kde5

DESCRIPTION="KDE accounts providers"
HOMEPAGE="https://community.kde.org/KTp"
LICENSE="LGPL-2.1"

KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep extra-cmake-modules)
	dev-util/intltool
	net-libs/libaccounts-glib
"
RDEPEND="
	net-im/telepathy-connection-managers[xmpp]
	net-libs/signon-ui
	net-libs/signon-oauth2
"
