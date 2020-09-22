#!/bin/bash

echo "Making native executable of the project"

scripts/bashScripts/dartSdkDownload.sh  # Downloading dart-sdk for the correct architecture.

unzip dartsdk-*.zip

cd Assistant
sudo ../dart-sdk/bin/pub get --no-precompile
#sudo ../dart-sdk/bin/pub run build_runner build --delete-conflicting-outputs
cd ..

#chmod -R +rx dart-sdk/
dart-sdk/bin/dart2native Assistant/bin/main.dart

mv Assistant/bin/main.exe .


rm dartsdk-*.zip
rm -r dart-sdk/
