# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.enable.twsplussho=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee
    bluetooth.chip.vendor=brcm \
    qcom.bluetooth.soc=rome \
    ro.bt.bdaddr_path="/data/misc/bluetooth/bdaddr" \
    persist.bt.enableAptXHD=true \
    debug.performance.tuning=1

# Fling Velocity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min.fling_velocity=8000 \
    ro.max.fling_velocity=12000 \
    ro.min_pointer_dur=8 \
    persist.sys.scrollingcache=3 \
    touch.presure.scale=0.001 \
    windowsmgr.max_events_per_sec=150
