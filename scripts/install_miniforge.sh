#!/bin/sh
#
# Copyright 2024 Campus Research Computing Consortium (CaRCC)
# Licensed under the Educational Community License, Version 2.0 (the “License”);
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at http://www.osedu.org/licenses/ECL-2.0
# Unless required by applicable law or agreed to in writing, software distributed 
# under the License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR 
# CONDITIONS OF ANY KIND, either express or implied. See the License for the 
# specific language governing permissions and limitations under the License.
#
# Purpose: 
#    - Install Miniforge in a ToS compliant manner
#    - Work on a variety of shells (toward POSIX compliance)
#  
# Arguments: 
#    - `-i` (optional) initialize conda for the user's current shell
#    - `-m` (optional) enable mamba support for faster package management
#    - `-p` (optional, path) set the prefix for install 


# Defaults
INSTALL_PREFIX="${HOME}/.local/miniforge"
INIT_SHELL=false
MAMBA_SUPPORT=false
URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

# Parse options
while getopts "mp:" opt; do
  case $opt in
    i) INIT_SHELL=true ;;
    m) MAMBA_SUPPORT=true ;;
    p) INSTALL_PREFIX="$OPTARG" ;;
    *) echo "Usage: $0 [-a] [-p install_prefix]" >&2; exit 1 ;;
  esac
done

download_file() {
  url="$1"
  retries=3
  while [ $retries -gt 0 ]; do
    curl -OL $url 
    if [ $? -eq 0 ]; then
      return
    fi
    retries=$((retries - 1))
    echo "Retrying download ($retries attempts left)..."
    sleep 1
  done
  echo "Failed to download $url" >&2
  exit 1
}

# Download installer and checksum
download_file "$URL" 

# Install Miniforge
chmod u+x $(basename "$URL")
$SHELL $(basename "$URL") -b -p "$INSTALL_PREFIX"
if [ $? -ne 0 ]; then
  echo "Installation failed" >&2
  exit 1
fi
# Initialize conda for the user's current shell
source "$INSTALL_PREFIX/etc/profile.d/conda.sh"
# mamba support
if [ $MAMBA_SUPPORT ]; then
  source "$INSTALL_PREFIX/etc/profile.d/mamba.sh"
fi
if [ $INIT_SHELL ]; then
  conda init "$(basename $SHELL)"
fi


# Configure conda-forge as the only channel
# Denylist Anaconda repos
cat <<EOF > "${INSTALL_PREFIX}/.condarc"
Default_channels: #!final
  - conda-forge
Denylist_channels: #!final
  - https://repo.anaconda.com/pkgs/main
  - https://repo.anaconda.com/pkgs/r
  - https://repo.anaconda.com/pkgs/msys
EOF

echo "Installation complete. Miniforge installed at $INSTALL_PREFIX."
exit 0
