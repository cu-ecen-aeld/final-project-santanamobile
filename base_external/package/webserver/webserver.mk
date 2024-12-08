##############################################################
#
# WEBSERVER
#
##############################################################
WEBSERVER_VERSION = '6463fa60be9ae621ca01c31d8a829bd03e41317e'
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
