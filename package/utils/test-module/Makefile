include $(TOPDIR)/rules.mk

PKG_NAME:=test-module
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=test
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/test-module
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Custom WiFi SSID Setter
  PKGARCH:=all
  DEPENDS:=+uci
endef

define Package/test-module/description
  Set default WiFi SSID to g-inet and g-inet-5G on first boot.
endef

define Build/Compile
endef

define Package/test-module/install
    $(INSTALL_DIR) $(1)/etc/init.d
    $(INSTALL_BIN) ./files/test.sh $(1)/etc/init.d/test-module  # 改这里
endef

$(eval $(call BuildPackage,test-module))
