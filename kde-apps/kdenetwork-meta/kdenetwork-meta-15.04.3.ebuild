# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit kde5-meta-pkg

DESCRIPTION="kdenetwork - merge this to pull in all kdenetwork-derived packages"
KEYWORDS="~amd64 ~x86"
IUSE="ppp"

RDEPEND="
	$(add_kdeapps_dep kdenetwork-filesharing)
	$(add_kdeapps_dep kget)
	$(add_kdeapps_dep kopete)
	$(add_kdeapps_dep krdc)
	$(add_kdeapps_dep krfb)
	$(add_kdeapps_dep plasma-telepathy-meta)
	$(add_kdeapps_dep zeroconf-ioslave)
	ppp? ( $(add_kdeapps_dep kppp) )
"
