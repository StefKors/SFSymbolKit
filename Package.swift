// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SFSymbolKit",
    platforms: [.macOS(.v11), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SFSymbolKit",
            targets: ["SFSymbolKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lukepistrol/SFSymbolsMacro.git", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "SFSymbolKit", dependencies: ["SFSymbolsMacro"]),
        .testTarget(
            name: "SFSymbolKitTests",
            dependencies: ["SFSymbolKit"]),
    ]
)
