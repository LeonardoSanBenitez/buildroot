SENSOR_BH1750_MODULE_VERSION = 1.0
SENSOR_BH1750_SITE = https://github.com/LeonardoSanBenitez/sensor_bh1750_linux_driver
SENSOR_BH1750_SITE_METHOD = git
SENSOR_BH1750_LICENSE = GPLv2
SENSOR_BH1750_LICENSE_FILES = COPYING

define KERNEL_MODULE_BUILD_CMDS
$(MAKE) -C '$(@D)' LINUX_DIR='$(LINUX_DIR)' CC='$(TARGET_CC)' LD='$(TARGET_LD)' modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
