// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PagoCoreSDK",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PagoCoreSDK",
            targets: ["PagoCoreSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PagoCoreSDK",
            url: "https://github.com/PagoApp/ios-core-spm/releases/download/0.0.2/PagoCoreSDK.xcframework.zip",
            checksum: "7b2509ab2395208b587a3a83890cec7a95febc3e7ea8820e179a91e2e6a9015d"
        ),
        .target(
            name: "PagoCoreSPM",
            dependencies: [
                .target(name: "PagoCoreSDK")]),
        .testTarget(
            name: "PagoCoreSPMTests",
            dependencies: ["PagoCoreSPM"]),
    ]
)
