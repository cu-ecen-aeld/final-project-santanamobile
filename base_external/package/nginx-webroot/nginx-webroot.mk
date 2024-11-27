##############################################################
#
# NGINX-WEBROOT
#
##############################################################
NGINX_WEBROOT_VERSION = 'a38b4cb2cd15cdc966abff6b09413084b69ace41'
NGINX_WEBROOT_SITE = 'git@github.com:santanamobile/beaglenas.git'
NGINX_WEBROOT_SITE_METHOD = git
NGINX_WEBROOT_GIT_SUBMODULES = YES
NGINX_WEBROOT_LICENSE_FILES = LICENSE
NGINX_WEBROOT_LICENSE = MIT

define NGINX_WEBROOT_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/web/ $(TARGET_DIR)/var/www/
	$(INSTALL) -d 0755 $(@D)/web/css $(TARGET_DIR)/var/www/css
	$(INSTALL) -d 0755 $(@D)/web/fonts $(TARGET_DIR)/var/www/fonts
	$(INSTALL) -d 0755 $(@D)/web/img $(TARGET_DIR)/var/www/img
	$(INSTALL) -d 0755 $(@D)/web/js $(TARGET_DIR)/var/www/js

#	$(INSTALL) -m 0644 $(@D)/web/* $(TARGET_DIR)/var/www/
#	$(INSTALL) -m 0644 $(@D)/web/css/* $(TARGET_DIR)/var/www/css
#	$(INSTALL) -m 0644 $(@D)/web/fonts/* $(TARGET_DIR)/var/www/fonts
#	$(INSTALL) -m 0644 $(@D)/web/img/* $(TARGET_DIR)/var/www/img
#	$(INSTALL) -m 0644 $(@D)/web/js/* $(TARGET_DIR)/var/www/js
endef

$(eval $(generic-package))

