# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_HANDBOOK="true"
inherit kde5

DESCRIPTION="Five-in-a-row Board Game"
HOMEPAGE="https://www.kde.org/applications/games/bovo/"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdbusaddons)
	$(add_frameworks_dep kdeclarative)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep knewstuff)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_kdeapps_dep libkdegames)
	dev-qt/qtconcurrent:5
	dev-qt/qtdeclarative:5[widgets]
	dev-qt/qtgui:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5
"

RDEPEND="${DEPEND}"

DOCS=( AUTHORS HISTORY TODO )
