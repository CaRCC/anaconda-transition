# Tools Directory

This directory contains scripts to facilitate the stated goals of the CARCC Conda Transition working group's technical deliverables.  

- install_miniforge.sh: this script installs miniforge with some optional flags. This script worked in several testing scenarios and should be straightforward to use. 
- migrate_to_miniforge.sh: this script calls install_miniforge.sh as part of its functionality to remove standard conda and replace it with miniforge. This works in testing. There is additional functionality to migrate environment yaml files that use anaconda.com sources. In testing this did not work with some yaml files. 
