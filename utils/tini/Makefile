include $(TOPDIR)/rules.mk

PKG_NAME:=tini
PKG_VERSION:=0.18.0
PKG_RELEASE:=1
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/krallin/tini/tar.gz/v${PKG_VERSION}?
PKG_HASH:=1097675352d6317b547e73f9dc7c6839fd0bb0d96dafc2e5c95506bb324049a2

PKG_MAINTAINER:=Gerard Ryan <G.M0N3Y.2503@gmail.com>

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/tini
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=simplest init utility
  URL:=https://github.com/krallin/tini
  DEPENDS:=
endef

define Package/tini/description
A tiny but valid init process for containers.
endef

TARGET_CFLAGS+= \
  -DPR_SET_CHILD_SUBREAPER=36 \
  -DPR_GET_CHILD_SUBREAPER=37

define Package/tini/install
	$(INSTALL_DIR) $(1)/usr/bin

	# static version seemes to be effected by https://www.openwall.com/lists/musl/2018/07/18/8 so disabled for now
	#$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/tini-static $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/tini $(1)/usr/bin/
endef

$(eval $(call BuildPackage,tini))
