// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ios-pcsclike",
    products: [
        .library(
            name: "SpringCard_PcSc_Like",
            targets: ["SpringCard_PcSc_Like"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.6.0"))
    ],
    targets: [
        .target(
            name: "SpringCard_PcSc_Like",
            dependencies: [
                "CryptoSwift"
            ],
            path: "SpringCard_PcSc_Like"
        ),
        .testTarget(
            name: "ios-pcsclikeTests",
            dependencies: ["SpringCard_PcSc_Like"]),
    ]
)
