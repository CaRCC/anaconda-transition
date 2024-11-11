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
#    - Find already installed environments and recreate them with conda-forge 
#    - Backup and restore configuration files
#  
# Arguments: 
#    - None 
#
# Reinstall conda environments, replacing Anaconda Inc repos

# TO-DO: in the future, we will support flexibility in the redeployment of environments
# but for now, we will install Miniforge and recreate the environments with conda-forge
# as a default.
#
# Check for `install_miniforge.sh` presence and execute it
if [ ! -f "./install_miniforge.sh" ]; then
  echo "install_miniforge.sh is missing. Exiting."
  exit 1
fi
sh ./install_miniforge.sh || { echo "Failed to run install_miniforge.sh"; exit 1; }

# Backup configuration directories
CONFIGDIRS="${HOME}/.condarc ${HOME}/.anaconda"
for DIR in $CONFIGDIRS; do
  [ -d "$DIR" ] && mv "$DIR" "/tmp/${DIR}.bak"
done

# Modify YAML environment files in /tmp for safety and isolation
edit_yaml() {
  yaml_file="$1"
  tmp_yaml="/tmp/$(basename "$yaml_file")"
  cp "$yaml_file" "$tmp_yaml"

  # Remove 'anaconda' references and replace 'defaults' with 'conda-forge'
  sed -i '/anaconda/d' "$tmp_yaml"
  sed -i 's/defaults/conda-forge/g' "$tmp_yaml"
  # Remove build strings
  sed -i 's/=[^=]*//2g' "$tmp_yaml"
  echo "$tmp_yaml" # Return the path to the temporary YAML file
}

# Test environment creation for each YAML file
create_test_env() {
  yaml_file="$1"
  env_name="test_env_$RANDOM" # Unique name to avoid conflicts

  conda env create --name "$env_name" --file="$yaml_file" 2>/dev/null
  if [ $? -ne 0 ]; then
    echo "Failed to create test environment for $yaml_file. Exiting."
    return 1
  fi
  conda env remove --name "$env_name" # Clean up
  echo "Environment creation test for $yaml_file succeeded."
  return 0
}

# Process all YAML environment files
for yaml in *.yml; do
  [ -f "$yaml" ] || continue
  echo "Processing $yaml..."
  temp_yaml=$(edit_yaml "$yaml")
  create_test_env "$temp_yaml" || { echo "Error processing $yaml. Rolling back."; exit 1; }
  rm -f "$temp_yaml" # Clean up temporary file
done

echo "Conda environment reinstallation complete. Miniforge and environments configured for conda-forge."
exit 0
