
# MacPorts Installer addition on 2015-10-22_at_17:47:17: adding an appropriate PATH variable for use with MacPorts.
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export JAVA_HOME=$(/usr/libexec/java_home)

# React Native Android Native Modules must use android-ndk-r10e. 
# Download, rename & copy to /Android/sdk/ndk-r10e
# https://facebook.github.io/react-native/docs/android-building-from-source.html
export ANDROID_NDK_REACT_NATIVE=${ANDROID_HOME}/ndk-r10e

# NDK Installed by Android Studio
export ANDROID_NDK_BUNDLE=${ANDROID_HOME}/ndk-bundle

# Set master ANDROID_NDK
export ANDROID_NDK=${ANDROID_NDK_REACT_NATIVE}


# Qt Android variables
export ANDROID_SDK_ROOT=${ANDROID_HOME}
export ANDROID_NDK_ROOT=${ANDROID_NDK}

export ANDROID_NDK_HOME=${ANDROID_NDK}

# Node Version Manager
# nvm seems like a great concept, but cannot figure out how to resolve
# xcode problems that use a different version of node /user/local/bin/node not specified by nvm
# node --version
# v9.2.1
# /usr/local/bin/node --version
# v7.2.0
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"


# Aliases
#################

# Take adb screenshot save to desktop 
# http://subsitedesign/wiki/index.php/Android_Debug_Bridge_(_ADB_)#Take_a_Screenshot_Using_adb
alias adb-cap=~/adb-cap.sh

# cd to main project
alias cdfs='cd ~/Documents/projects/react-native/android-field-scout/source'

alias cleana='(cd android; ./gradlew clean)'
alias clr=~/scripts/clr.sh

# Android show react native debug menu
alias d='adb shell input keyevent 82'

alias ip='ifconfig | grep inet\ | tail -1 | cut -d " " -f 2'

# Android remove Field Scout or TSR from connected device
alias rmfs='adb uninstall com.ditchwitch.fieldscout'
alias rmtsr='adb uninstall com.ditchwitch.tsr'

alias sha256='shasum -a 256'

# React-native build apk and deploy via adb
alias test-release-apk=~/scripts/test-release-apk.sh
