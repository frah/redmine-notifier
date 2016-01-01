#!/bin/bash
cd `dirname $0`
npm install --prefix ../app
rm -rf ../dist/osx
electron-packager ../app 'Redmine Notifier' \
  --platform=darwin \
  --arch=x64 \
  --version=0.36.2 \
  --out=../dist/osx \
  --icon=../assets/osx/redmine_notifier.icns \
  --asar \
  --asar-unpack='**/app/{node_modules/node-notifier/vendor,images}/**' \
  --ignore='\.DS_Store|npm-debug\.log|^/etc'
