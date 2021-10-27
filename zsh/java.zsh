if [ -d /usr/local/opt/openjdk/bin ]; then
  # Put the brew install of java before the system install
  path=(
    /usr/local/opt/openjdk/bin
    $path
  )
fi
