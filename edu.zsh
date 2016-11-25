# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

export ANDROID_HOME=/Users/edu/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$PATH:$JAVA_HOME/bin

#shopping=~/workspace/pruebas/cells-hackaton/cells-shoppin

# set up a quick web server
function server() {  
  if [ $1 ]
  then
    local port="$1"
  else
    local port="8000"
  fi
  open "http://localhost:$port" && python -m SimpleHTTPServer "$port"
}

# Quickly creates a folder
function take() {  
    mkdir $1
    cd $1
}

# Show&hide hidden files
function hiddenfiles() {
    if [ $1 ]; then
      defaults write com.apple.finder AppleShowAllFiles $1
      killAll Finder
    else
      echo "zsh: TRUE or FALSE attribute missing"
    fi
}
