#
# Copyright (C) 2008-2015 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=luci-app-hello-world
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

# Release == build
# increase on changes of translation files
PKG_RELEASE:=1

# Version == major.minor.patch
# increase on new functionality (minor) or patches (patch)
PKG_VERSION:=0.0.4

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Silver Kits <silver.kits@eesti.ee>

define Package/luci-app-hello-world
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:= LuCI hello world app
	DEPENDS:=+luci-compat
	PKGARCH:=all
endef

define Package/luci-app-hello-world/description
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-hello-world/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-hello-world))