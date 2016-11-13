checkAndInstall() {
  param=$1
  cleanedParam=${param//"-cli"}
  if test ! $(which $cleanedParam) ; then
      yarn global add $param
  fi
}

checkAndInstall "nodemon"
checkAndInstall "react-native-cli"
checkAndInstall "code-push-cli"
checkAndInstall "gulp"
