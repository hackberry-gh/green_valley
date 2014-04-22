#!/usr/bin/env bash

set -eo pipefail

export DEBIAN_FRONTEND=noninteractive

command_exists () {
    type "$1" &> /dev/null ;
}

if command_exists git && command_exists make && command_exists curl; then
    echo "Already have git,make and curl..."
else
    apt-get update
    apt-get install -y git make curl software-properties-common python-software-properties
fi

if command_exists apt-add-repository; then
    echo "Already have apt-add-repository..."    
else
    apt-get update    
    apt-get install -y software-properties-common python-software-properties    
fi

if [[ ! $(ruby --version) =~ ([2][.][0-9.]*) ]]; then
    apt-add-repository -y ppa:brightbox/ruby-ng
    apt-get update -y
    apt-get install -y -q --force-yes libcurl4-openssl-dev libmcrypt-dev ruby2.0 ruby2.0-dev rubygems
    apt-get -y -q purge libruby1.8 ruby1.8 ruby1.8-dev rubygems1.8
    update-alternatives --auto ruby
    update-alternatives --auto gem
fi

[[ -z $(gem list | grep rake) ]] && gem install rake --no-rdoc --no-ri
[[ -z $(gem list | grep bundler) ]] && gem install bundler --no-rdoc --no-ri

[[ -z $(gem list | grep gv-bedrock) ]] && gem install gv-bedrock --no-rdoc --no-ri
[[ -z $(gem list | grep gv-valley) ]] && gem install gv-valley --no-rdoc --no-ri

git clone https://github.com/hackberry-gh/green_valley.git
cd green_valley

echo "Welcome to Valley,"
echo "Run rake install or rake install:host for runner slaves"
echo ""
echo "Thanks,"
echo "Val"