################################################################################
#
# bbe_sensors
#
################################################################################

BBE_SENSORS_VERSION = 'e63470f339e27de405235f2c7caa35b7d6ac12f6'
BBE_SENSORS_SITE = 'git@github.com:santanamobile/BBE_Sensors.git'
BBE_SENSORS_SITE_METHOD = git
BBE_SENSORS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sc_mpu6050 all
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sc_st_pressure all
endef

define BBE_SENSORS_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/sc_mpu6050/mpu_reader $(TARGET_DIR)/bin
    $(INSTALL) -m 0755 $(@D)/sc_st_pressure/pressure_reader $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
