#!/bin/bash

# 1. 强制关闭真实显示器输出，其中 HDMI-0 替换为你的接口名称
xrandr --output HDMI-0 --off

# 等待 1 秒让电容放电/状态生效
sleep 1

# 2. 重新开启并设为主屏
# --auto: 恢复最佳分辨率
# --primary: 确保任务栏回归
# 不指定位置(--right-of)，交由 KDE 自动恢复之前的布局记忆
xrandr --output HDMI-0 --auto --primary

# 3. (可选保底) 如果唤醒后布局还是乱的，强制让 KDE 重新加载它的配置
# 这一步通常不需要，如果上面的 xrandr 唤醒后布局正常就不用加
# kscreen-doctor output.HDMI-0.enable
