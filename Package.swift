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
            url: "https://github.com/artemch/PermissionsKit/releases/download/1.0.3/PermissionsKit.xcframework.zip",
            checksum: "1b752dab6f6d9ec806d0c200887baca61693ebe779a8b3a77e3e84ecc2dd1a0c"
        ),
    ]
)
