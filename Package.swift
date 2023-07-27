// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Hodler",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Hodler",
            targets: ["Hodler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ArtemZinkov/BitcoinCore.git", .branch("master")),
        .package(url: "https://github.com/horizontalsystems/HsCryptoKit.Swift.git", .upToNextMajor(from: "1.2.1")),
    ],
    targets: [
        .target(
            name: "Hodler",
            dependencies: [
                "BitcoinCore",
                .product(name: "HsCryptoKit", package: "HsCryptoKit.Swift"),
            ]
        ),
    ]
)
