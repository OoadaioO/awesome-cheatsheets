#*******************************************************************************************
# macOs Command Line Tools 初始化
#*******************************************************************************************
xcode-select --install


#*******************************************************************************************
# Homebrew
#*******************************************************************************************
#安装homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install                                # 下载源码编译安装 ./configure && make install
brew tap                                    # 三方仓库下载安装，默认github
brew cask install                           # 下载已编译好的应用包
brew mas "WeChat",id:836500024              # Mac App Store 上的应用
