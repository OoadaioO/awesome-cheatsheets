# flutter 安装失败处理


```shell
git config -e

[remote "origin"]
    # url = https://github.com/flutter/flutter.git
    # 使用ssh方式替换https访问
    url = git@github.com:flutter/flutter.git
    fetch = +refs/heads/*:refs/remotes/origin/*

```



