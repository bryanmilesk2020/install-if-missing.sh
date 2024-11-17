#/bin/bash
if [ command -v $1 ]; then
  echo "$command is available, let's run it..."
else
  echo "$command not available, installing it..."
  sudo apt-get update && sudo apt install -y $1 #installs program if not already installed
fi                                               # -y : no confirmation, just do it
$1 #referencing variable - running program
