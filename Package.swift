import PackageDescription

let package = Package(
    name: "TannerWebsite",
    dependencies: [
        .Package(url: "https://github.com/tannernelson/vapor.git", majorVersion: 1),
    ]
)