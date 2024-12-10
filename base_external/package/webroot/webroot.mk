##############################################################
#
# WEBROOT
#
##############################################################
WEBROOT_VERSION = '240f7d38efd2ab7af2e49cb344e780fdefa2785f'
WEBROOT_SITE = 'git@github.com:santanamobile/beaglenas.git'
WEBROOT_SITE_METHOD = git
WEBROOT_GIT_SUBMODULES = YES
WEBROOT_LICENSE_FILES = LICENSE
WEBROOT_LICENSE = MIT

define WEBROOT_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/var/www/
    cp -r $(@D)/web/static $(TARGET_DIR)/var/www
    cp -r $(@D)/web/templates $(TARGET_DIR)/var/www
endef

$(eval $(generic-package))
