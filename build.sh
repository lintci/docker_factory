#!/bin/bash

# Make sure cookbooks are available and up to date
rm -rf vendor/cookbooks
berks vendor vendor/cookbooks

# Provision
mkdir -p builds
rm builds/docker_factory.box
vagrant up --provision
vagrant package --base docker_factory --output builds/docker_factory.box
vagrant box add builds/docker_factory.box --name lintci/docker_factory --force
