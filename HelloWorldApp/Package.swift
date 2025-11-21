// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HelloWorldApp",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .iOSApplication(
            name: "Hello World",
            targets: ["App"],
            bundleIdentifier: "com.example.helloworld",
            teamIdentifier: "XXXXXX",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor"
        )
    ],
    targets: [
        .executableTarget(
            name: "App",
            path: "Sources/App",
            resources: [.process("Resources")]
        )
    ]
)
