###
# Java
###

# Java
if which java >/dev/null; then
  echo "skip java 8 installation"
else
  echo "java 8 installation"
  apt-get install --yes default-jdk
fi
