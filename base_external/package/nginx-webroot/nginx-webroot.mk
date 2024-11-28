##############################################################
#
# NGINX-WEBROOT
#
##############################################################
NGINX_WEBROOT_VERSION = '40d7880a442db16ecfcca8487510340dbec2bd70'
NGINX_WEBROOT_SITE = 'git@github.com:santanamobile/beaglenas.git'
NGINX_WEBROOT_SITE_METHOD = git
NGINX_WEBROOT_GIT_SUBMODULES = YES
NGINX_WEBROOT_LICENSE_FILES = LICENSE
NGINX_WEBROOT_LICENSE = MIT

define NGINX_WEBROOT_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/var/www
    cp -r $(@D)/web/* $(TARGET_DIR)/var/www/
endef

$(eval $(generic-package))
