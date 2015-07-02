# $OpenBSD$

COMMENT =	remote Windows machine management

DISTNAME =	winrm-1.3.3
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/WinRb/WinRM
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-gssapi,${MODRUBY_FLAVOR} \
			devel/ruby-logging,${MODRUBY_FLAVOR} \
			devel/ruby-uuidtools,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			textproc/ruby-gyoku,${MODRUBY_FLAVOR} \
			textproc/ruby-nori,${MODRUBY_FLAVOR} \
			www/ruby-httpclient,${MODRUBY_FLAVOR} \
			www/ruby-ntlm,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
