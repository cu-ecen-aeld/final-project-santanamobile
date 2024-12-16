################################################################################
#
# wwwroot
#
################################################################################

WWWROOT_VERSION = 'dd1859d8b1b2c5bc0d498b3cfad883f825b4959e'
WWWROOT_SITE = 'git@github.com:santanamobile/beaglenas.git'
WWWROOT_SITE_METHOD = git
WWWROOT_GIT_SUBMODULES = YES
WWWROOT_LICENSE_FILES = LICENSE
WWWROOT_LICENSE = MIT

define WWWROOT_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/var/www/
    cp -r $(@D)/web/static $(TARGET_DIR)/var/www
    cp -r $(@D)/web/templates $(TARGET_DIR)/var/www

	$(INSTALL) -d 0755 $(@D)/app/ $(TARGET_DIR)/var/www/server/
	$(INSTALL) -m 0755 $(@D)/app/app.py $(TARGET_DIR)/var/www/server/app.py
	$(INSTALL) -m 0755 $(@D)/app/config-sample.py $(TARGET_DIR)/var/www/server/config.py
endef

$(eval $(generic-package))
