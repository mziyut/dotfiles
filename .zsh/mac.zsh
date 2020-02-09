# zsh mac

# path
export PATH="/usr/local/sbin:$PATH"


# OpenGL Mac OS X (gcc)
alias opengl="gcc -framework GLUT -framework OpenGL"

# brew install android-sdk
if [ -d /usr/local/opt/android-sdk ]; then
  export ANDROID_HOME=/usr/local/opt/android-sdk
fi

source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## JAVA
# adb path
export PATH=$PATH:/Applications/sdk/platform-tools

# brew path.
export PATH="/usr/local/sbin:$PATH"
