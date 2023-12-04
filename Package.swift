// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CSFlutterModule",
    products: [
        .library(
            name: "CSFlutterModule",
            targets: ["App", "Flutter", "FlutterPluginRegistrant", "PathProviderFoundation"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "App",
            path: "build/iOS/Release/App.xcframework"
        ),
        .binaryTarget(
            name: "Flutter",
            path: "build/iOS/Release/Flutter.xcframework"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            path: "build/iOS/Release/FlutterPluginRegistrant.xcframework"
        ),
        .binaryTarget(
            name: "PathProviderFoundation",
            path: "build/iOS/Release/path_provider_foundation.xcframework"
        )
    ]
)
