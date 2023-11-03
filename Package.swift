// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CSFlutterModule",
    products: [
        .library(
            name: "CSFlutterModule",
            targets: ["CSFlutterModule"]),
    ],
    targets: [
        .binaryTarget(
            name: "CSFlutterModule",
            path: "./build/ios/xcframework/CSFlutterModule.xcframework"
        ),
    ]
)

