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
#    - `-a` (optional) sets the alias of mamba as conda
#    - `-p` (optional, path) set the prefix for install 


# Defaults
INSTALL_PREFIX="${HOME}/.local/miniforge"
ALIAS_CONDA=false
MAMBA_URL="https://github.com/conda-forge/miniforge/releases/download/24.7.1-2/Miniforge3-24.7.1-2-Linux-x86_64.sh"
CHECKSUM_URL="${MAMBA_URL}.sha256"

# Parse options
while getopts "ap:" opt; do
  case $opt in
    a) ALIAS_CONDA=true ;;
    p) INSTALL_PREFIX="$OPTARG" ;;
    *) echo "Usage: $0 [-a] [-p install_prefix]" >&2; exit 1 ;;
  esac
done

# Semi-resilient download function
# Replace with Aria2 if wanted
download_file() {
  url="$1"
  output="$2"
  retries=3

  while [ $retries -gt 0 ]; do
    curl -o "$output" -L "$url" && return 0
    retries=$((retries - 1))
    echo "Retrying download ($retries attempts left)..."
    sleep 1
  done
  echo "Failed to download $url" >&2
  exit 1
}

# Download installer and checksum
download_file "$MAMBA_URL" "Miniforge3.sh"
download_file "$CHECKSUM_URL" "Miniforge3.sh.sha256"

# Verify checksum
if ! sha256sum --check Miniforge3.sh.sha256; then
  echo "Checksum verification failed. Exiting." >&2
  exit 1
fi

# Install Miniforge
chmod u+x Miniforge3.sh
./Miniforge3.sh -b -p "$INSTALL_PREFIX"
rm -f Miniforge3.sh Miniforge3.sh.sha256

# Initialize mamba for the user's current shell
"${INSTALL_PREFIX}/bin/mamba" init --shell "$(basename "$SHELL")"

# Optionally alias conda to mamba
if [ "$ALIAS_CONDA" = true ]; then
  echo "alias conda='mamba'" >> "$HOME/.${SHELL##*/}rc"
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
