#!/bin/bash

# 替换brew.git:
cd "$(brew --repo)"
if [ $? -eq 0 ]; then
    git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
fi

# 替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
if [ $? -eq 0 ]; then
    git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
fi

# 替换homebrew-cask.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-cask"
if [ $? -eq 0 ]; then
    git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git
fi

# 应用生效
brew update
# 替换homebrew-bottles:
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile

source ~/.bash_profile
