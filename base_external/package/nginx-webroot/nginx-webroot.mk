##############################################################
#
# NGINX-WEBROOT
#
##############################################################
NGINX_WEBROOT_VERSION = '272b082cf2f93a748e56366b482e0b0b0435b9b6'
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
