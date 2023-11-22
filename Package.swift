// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CSFlutterModule",
    products: [
        .library(
            name: "CSFlutterModule",
            targets: ["App"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "App",
            path: "build/iOS/Release/App.xcframework"
        )
    ]
)
