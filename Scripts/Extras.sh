#!/bin/bash

#增加主题
# echo "CONFIG_PACKAGE_luci-theme-$OWRT_THEME=y" >> .config
# echo "CONFIG_PACKAGE_luci-app-$OWRT_THEME-config=y" >> .config

echo "CONFIG_PACKAGE_luci-theme-design=y" >> .config
echo "CONFIG_PACKAGE_luci-app-design-config=y" >> .config

echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config

#根据源码来修改
if [[ $OWRT_URL != *"lede"* ]] ; then
  #增加luci界面
  echo "CONFIG_PACKAGE_luci=y" >> .config
  echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
fi
