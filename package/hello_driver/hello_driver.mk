HELLO_DRIVER_MODULE_VERSION = 1.0
HELLO_DRIVER_SITE = ../sensor_bh1750_linux_driver/hello_driver
HELLO_DRIVER_SITE_METHOD = local
HELLO_DRIVER_LICENSE = GPLv2
HELLO_DRIVER_LICENSE_FILES = COPYING

define KERNEL_MODULE_BUILD_CMDS
$(MAKE) -C '$(@D)' LINUX_DIR='$(LINUX_DIR)' CC='$(TARGET_CC)' LD='$(TARGET_LD)' modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
