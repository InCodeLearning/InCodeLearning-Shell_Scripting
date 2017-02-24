#this file should not be ran or tested directly

# check repositories for candidates
apt-cache policy openjdk-8-*
aptitude search openjdk-8-*
# install a package
sudo apt-get install openjdk-8-source
aptitude install openjdk-8-source
# remove a package
sudo apt-get remove openjdk-8-source
sudo apt-get autoremove
aptitude remove openjdk-8-source
# remove configuration files
sudo apt-get purge openjdk-8-source
apt-get remove --purge openjdk-8-source
aptitude purge openjdk-8-source
