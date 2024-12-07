##############################################################
#
# WEBROOT
#
##############################################################
WEBROOT_VERSION = '5e70eb0cfe7fc2e9a7f48a86fcddd3126272c8d6'
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
