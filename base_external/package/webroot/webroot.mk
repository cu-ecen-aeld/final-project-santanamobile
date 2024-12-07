##############################################################
#
# WEBROOT
#
##############################################################
WEBROOT_VERSION = '9f799aee95d971692ac2ca37600478c29ac98b59'
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
