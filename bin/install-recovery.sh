#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9646080:0b94c97e5cbcac8124b41faaeabeb86b93162586; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8781824:6cefc425c9e450432d2bb856f55362e4c0a8f375 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 0b94c97e5cbcac8124b41faaeabeb86b93162586 9646080 6cefc425c9e450432d2bb856f55362e4c0a8f375:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
