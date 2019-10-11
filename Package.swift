// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "website",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-alpha")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
