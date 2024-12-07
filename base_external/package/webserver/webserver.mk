##############################################################
#
# WEBSERVER
#
##############################################################
WEBSERVER_VERSION = '5e70eb0cfe7fc2e9a7f48a86fcddd3126272c8d6'
WEBSERVER_SITE = 'git@github.com:santanamobile/beaglenas.git'
WEBSERVER_SITE_METHOD = git
WEBSERVER_GIT_SUBMODULES = YES
WEBSERVER_LICENSE_FILES = LICENSE
WEBSERVER_LICENSE = MIT

define WEBSERVER_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/app/ $(TARGET_DIR)/var/www/server/
	$(INSTALL) -m 0755 $(@D)/app/* $(TARGET_DIR)/var/www/server/
endef

$(eval $(generic-package))
