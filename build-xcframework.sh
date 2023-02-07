#! /bin/bash

ProductName=PermissionsKit

xcodebuild archive \
    -project $ProductName.xcodeproj \
    -scheme $ProductName \
    -configuration Release \
    -destination "generic/platform=macOS" \
    -archivePath "artifacts/archives/$ProductName" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -archive artifacts/archives/$ProductName.xcarchive -framework $ProductName.framework \
    -output artifacts/xcframeworks/$ProductName.xcframework

cd artifacts/xcframeworks
zip -r $ProductName.xcframework.zip $ProductName.xcframework

