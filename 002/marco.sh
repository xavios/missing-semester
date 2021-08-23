marco () {
  echo "Saving $(pwd) to /temp/marco file"
  pwd > /tmp/marco
}

polo () {
  cd $(cat /tmp/marco)
}
