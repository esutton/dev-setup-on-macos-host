
# Development Environment

## macOS

### [$HOME/.profile](./.profile)

Declare all envronment variables in [$HOME/.profile](./.profile)

To reduce duplications and other problems, do not use $HOME/.bash_profile

### Setup New Dev Machine

* Xcode
    * `xcode-select --install`
* [Visual Studio Code](https://code.visualstudio.com/)    

#### Android, iOS, Node.js, React Native, & Homebrew
1) https://facebook.github.io/react-native/docs/getting-started.html
2) Follow Building Projects with Native Code

#### Finder 

* Display Full Path in Finder:
````
 defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
 # Restart Finder:
 killall Finder
 ````

### Utiltities:
* Hex editor
  * https://ridiculousfish.com/hexfiend/
* minicom
  * `brew install minicom`

### Homebrew
````
brew list

adwaita-icon-theme		git-credential-manager		libogg				pkg-config
apktool				glib				libpng				plantuml
atk				gmp				librsvg				python
autoconf			gnome-icon-theme		libtiff				python3
baobab				gobject-introspection		libtool				rbenv
cairo				graphite2			libunistring			readline
carthage			graphviz			libvorbis			ruby-build
clang-format			gsettings-desktop-schemas	libvpx				sloccount
cloc				gtk+3				libyaml				sphinx-doc
cppcheck			harfbuzz			loc				sqlite
dos2unix			hicolor-icon-theme		lynx				texi2html
doxygen				icu4c				md5deep				tree
fdk-aac				imagemagick			md5sha1sum			watchman
ffmpeg				isl				mpfr				webp
fontconfig			jpeg				nasm				wget
freetype			lame				nmap				x264
fribidi				libass				node				x265
gcc				libcroco			openssl				xvid
gd				libepoxy			openssl@1.1			xz
gdbm				libffi				pango				yarn
gdk-pixbuf			libidn2				pcre				yasm
gettext				libmpc				pixman
````

#### Useful packages

````
brew install cloc
brew install cocoapods
brew install cppcheck
brew install cppcheck
brew install dos2unix
brew install doxygen
brew install graphviz
brew install imagemagick
brew install md5deep
brew install md5sha1sum
brew install plantuml
brew install tree
brew install wget


# Node js
brew install yarn
````