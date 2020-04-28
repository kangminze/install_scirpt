#!/bin/bash

echo "install nodejs source..."
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -

echo "install nodejs..."
sudo yum install -y nodejs

echo "add yarn repo..."
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

echo "install yarn..."
sudo yum install -y yarn

echo "yarn version..."
yarn --version

echo "yarn installed!"
