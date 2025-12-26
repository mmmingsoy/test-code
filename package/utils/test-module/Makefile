include $(TOPDIR)/rules.mk

PKG_NAME:=custom-ssid
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=YourName <your@email.com>
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/custom-ssid
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Custom WiFi SSID Setter
  PKGARCH:=all
  DEPENDS:=+uci
endef

define Package/custom-ssid/description
  Set default WiFi SSID to g-inet and g-inet-5G on first boot.
endef

define Build/Compile

endef

define Package/custom-ssid/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/test.sh $(1)/etc/init.d/custom-ssid
endef

$(eval $(call BuildPackage,custom-ssid))