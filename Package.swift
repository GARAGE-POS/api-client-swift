// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "KarageAPIClient",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "KarageAPIClient",
            targets: ["KarageAPIClient"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "KarageAPIClient",
            dependencies: [],
            path: ".",
            exclude: [
                "docs",
                ".openapi-generator",
                ".openapi-generator-ignore",
                "open-api.json",
                "project.yml",
                "Cartfile",
                "KarageAPIClient.podspec",
                "git_push.sh",
                ".git",
                ".swiftformat",
                "README.md"
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
