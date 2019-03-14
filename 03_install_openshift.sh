# Setup openshift CLI and pre-requisites on Mac
#
# Assumes virtualisation engine is already installed
#
# Futher details can be found here: https://docs.okd.io/latest/minishift/getting-started/quickstart.html

brew install openshift-cli

brew cask install minishift

# Configure to always use virtualbox
minishift config set vm-driver virtualbox
