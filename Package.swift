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
            checksum: "8c4cc794fc883101fef9874fa22630f2ea8076f79910dd52f1a7411163d32787"
        ),
    ]
)
