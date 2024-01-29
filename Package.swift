// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SwiftCompilerCrash",
    platforms: [.iOS(.v17), .macOS(.v14), .tvOS(.v17), .watchOS(.v10)],
    products: [
        .library(
            name: "SwiftCompilerCrash",
            targets: ["SwiftCompilerCrash"]),
    ],
    dependencies: [
      .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftCompilerCrash",
            dependencies: [
              .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]
        ),
        .testTarget(
            name: "SwiftCompilerCrashTests",
            dependencies: ["SwiftCompilerCrash"]),
    ]
)
