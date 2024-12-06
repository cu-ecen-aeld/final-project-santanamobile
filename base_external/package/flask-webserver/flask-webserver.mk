##############################################################
#
# FLASK-WEBSERVER
#
##############################################################
FLASK_WEBSERVER_VERSION = '272b082cf2f93a748e56366b482e0b0b0435b9b6'
FLASK_WEBSERVER_SITE = 'git@github.com:santanamobile/beaglenas.git'
FLASK_WEBSERVER_SITE_METHOD = git
FLASK_WEBSERVER_GIT_SUBMODULES = YES
FLASK_WEBSERVER_LICENSE_FILES = LICENSE
FLASK_WEBSERVER_LICENSE = MIT

define FLASK_WEBSERVER_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/var/www{static, templates}
    cp -r $(@D)/webserver/* $(TARGET_DIR)/var/www/
endef

$(eval $(generic-package))
