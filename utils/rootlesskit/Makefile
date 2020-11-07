include $(TOPDIR)/rules.mk

PKG_NAME:=rootlesskit
PKG_VERSION:=0.10.0
PKG_RELEASE:=1
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/rootless-containers/rootlesskit/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=828522bda6c749e90451748b2aede2ff8bcc49d143cb377d19e0908d0db52b95
PKG_SOURCE_VERSION:=f766387c3b360bc6dc6c2f353e9e630cf2c6ee86

PKG_MAINTAINER:=

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/rootless-containers/rootlesskit

include $(INCLUDE_DIR)/package.mk
include ../../lang/golang/golang-package.mk

define Package/rootlesskit
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Linux-native 'fake root' for rootless containers
  URL:=https://github.com/rootless-containers/rootlesskit
endef

define Package/rootlesskit/description
RootlessKit is a Linux-native implementation of 'fake root' using user_namespaces(7).
The purpose of RootlessKit is to run Docker and Kubernetes as an unprivileged user (known as 'Rootless mode'),
so as to protect the real root on the host from potential container-breakout attacks.
endef

$(eval $(call GoBinPackage,rootlesskit))
$(eval $(call BuildPackage,rootlesskit))
