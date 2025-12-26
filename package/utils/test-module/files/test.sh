#!/bin/sh /etc/rc.common

#最后执行
START=99

#只在第一次启动运行
[ -f "/etc/ssid-set-done" ] && exit 0

#设置2.4g和5g WiFi的ssid
uci set wireless.default_radio0.ssid='gl-inet'
uci set wireless.default_radio1.ssid='gl-inet-5G'
uci commit wireless

touch /etc/ssid-set-done

