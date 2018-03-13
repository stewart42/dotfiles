checkAndInstall() {
  param=$1
  cleanedParam=${param//"-cli"}
  if test ! $(which $cleanedParam) ; then
      npm install -g $param
  fi
}

npm install -g npm
# checkAndInstall "nodemon"
# checkAndInstall "react-native-cli"
# checkAndInstall "code-push-cli"
# checkAndInstall "gulp"
# checkAndInstall "grunt"
checkAndInstall "npm-check"
