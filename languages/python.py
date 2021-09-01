#!/usr/bin/env python3
# -*- coding: utf-8 -*-


# 日期时间转换
from datetime import datetime

# 获取当前时间
datetime.now()
# 字符串日期转化成时间
# %Y-年 %m-月 %d-日 %H-时 %M-分 %S-秒 %f-微秒
# 具体格式(https://docs.python.org/zh-cn/3/library/datetime.html#strftime-and-strptime-format-codes)


datetime.strptime("2021-09-01 11:30:00","%Y-%m-%d %H:%M:%S")
# 日期格式化输出
datetime.now().strftime("%Y-%m-%d")
# 标准时间戳转日期(单位s)
datetime.fromtimestamp(1630467351.698662)
# 日期转换成时间戳
datetime.now().timestamp()


