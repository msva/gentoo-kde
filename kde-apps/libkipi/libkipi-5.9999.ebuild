# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

EGIT_BRANCH="frameworks"
KDE_TEST="true"
inherit kde5

DESCRIPTION="A library for image plugins accross KDE applications"
KEYWORDS=""
IUSE=""

DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kxmlgui)
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
"

RDEPEND="${DEPEND}"
