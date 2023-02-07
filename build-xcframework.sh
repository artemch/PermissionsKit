#! /bin/bash

ProductName=PermissionsKit

xcodebuild archive \
    -project $ProductName.xcodeproj \
    -scheme $ProductName \
    -destination "generic/platform=macOS" \
    -archivePath "build/archives/$ProductName"

xcodebuild -create-xcframework \
    -archive build/archives/$ProductName.xcarchive -framework $ProductName.framework \
    -output build/xcframeworks/$ProductName.xcframework

cd build/xcframeworks
zip -r $ProductName.xcframework.zip $ProductName.xcframework

