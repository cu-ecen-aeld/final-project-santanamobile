################################################################################
#
# webserver
#
################################################################################

WEBSERVER_VERSION = '98c1e1fd9404c315f8d3e101f1a95cef99e5939b'
WEBSERVER_SITE = 'git@github.com:santanamobile/beaglenas.git'
WEBSERVER_SITE_METHOD = git
WEBSERVER_GIT_SUBMODULES = YES
WEBSERVER_LICENSE_FILES = LICENSE
WEBSERVER_LICENSE = MIT

define WEBSERVER_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/app/ $(TARGET_DIR)/var/www/server/
	$(INSTALL) -m 0755 $(@D)/app/app.py $(TARGET_DIR)/var/www/server/app.py
	$(INSTALL) -m 0755 $(@D)/app/config-sample.py $(TARGET_DIR)/var/www/server/config.py
endef

$(eval $(generic-package))
