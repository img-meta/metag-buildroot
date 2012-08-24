################################################################################
#
# gmp
#
################################################################################

GMP_VERSION = 5.1.3
GMP_SITE = $(BR2_GNU_MIRROR)/gmp
GMP_SOURCE = gmp-$(GMP_VERSION).tar.xz
GMP_INSTALL_STAGING = YES
GMP_LICENSE = LGPLv3+
GMP_LICENSE_FILES = COPYING.LIB
GMP_DEPENDENCIES = host-m4

HOST_GMP_CONF_OPT += --enable-static --disable-shared

$(eval $(autotools-package))
$(eval $(host-autotools-package))
