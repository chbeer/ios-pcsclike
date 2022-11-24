// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ios-pcsclike",
    products: [
        .library(
            name: "ios-pcsclike",
            targets: ["ios-pcsclike"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.6.0"))
    ],
    targets: [
        .target(
            name: "ios-pcsclike",
            dependencies: [
                "CryptoSwift"
            ],
            path: "SpringCard_PcSc_Like"
        ),
        .testTarget(
            name: "ios-pcsclikeTests",
            dependencies: ["ios-pcsclike"]),
    ]
)
