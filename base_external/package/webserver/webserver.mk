##############################################################
#
# WEBSERVER
#
##############################################################
WEBSERVER_VERSION = '240f7d38efd2ab7af2e49cb344e780fdefa2785f'
WEBSERVER_SITE = 'git@github.com:santanamobile/beaglenas.git'
WEBSERVER_SITE_METHOD = git
WEBSERVER_GIT_SUBMODULES = YES
WEBSERVER_LICENSE_FILES = LICENSE
WEBSERVER_LICENSE = MIT

define WEBSERVER_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/app/ $(TARGET_DIR)/var/www/server/
	$(INSTALL) -m 0755 $(@D)/app/app.py $(TARGET_DIR)/var/www/server/app.py
endef

$(eval $(generic-package))
