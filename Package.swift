// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PermissionsKit",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "PermissionsKitLib",
            targets: ["PermissionsKit"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "PermissionsKit",
            url: "https://github.com/artemch/PermissionsKit/releases/download/1.0.4/PermissionsKit.xcframework.zip",
            checksum: "c4d6ce5c6018eaeaf1fbc1e5a60eecdc4f5653998708999788cfa4e5bfcda4ae"
        ),
    ]
)
