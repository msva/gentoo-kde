# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_HANDBOOK="true"
inherit kde5

DESCRIPTION="MathML-based graph calculator for KDE"
HOMEPAGE="https://www.kde.org/applications/education/kalgebra
https://edu.kde.org/kalgebra"
KEYWORDS=""
IUSE="ncurses opengl"

DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_kdeapps_dep analitza opengl?)
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtwebkit:5
	dev-qt/qtwidgets:5
	ncurses? (
		sys-libs/ncurses
		sys-libs/readline:0
	)
	opengl? (
		dev-qt/qtopengl:5
		dev-qt/qtprintsupport:5
		virtual/glu
	)
"
RDEPEND="${DEPEND}
	!kde-apps/analitza:4
"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package ncurses Curses)
		$(cmake-utils_use_find_package ncurses Readline)
		$(cmake-utils_use_find_package opengl OpenGL)
	)

	kde5_src_configure
}
