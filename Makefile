# $OpenBSD$

COMMENT =	remote Windows machine management

DISTNAME =	winrm-1.8.1
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/WinRb/WinRM
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-gssapi,${MODRUBY_FLAVOR}>=1.2,<1.3 \
			devel/ruby-logging,${MODRUBY_FLAVOR}>=1.6.1,<3.0 \
			textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.2 \
			textproc/ruby-gyoku,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			textproc/ruby-nori,${MODRUBY_FLAVOR}>=2.0,<3.0 \
			www/ruby-httpclient,${MODRUBY_FLAVOR}>=2.2.0.2<3.0 \
			www/ruby-rubyntlm,${MODRUBY_FLAVOR}>=0.6.0,<0.7

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
