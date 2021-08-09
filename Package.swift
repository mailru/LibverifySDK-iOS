// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibverifySDK",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Libverify", targets: ["Libverify"]),
        .library(name: "LibverifyControls", targets: ["LibverifyControls"]),
        .library(name: "LibverifyExt", targets: ["LibverifyExt"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        Target.binaryTarget(name: "Libverify",
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v2.0.0/Libverify.zip",
                            checksum: "f4943ae1dfd9b27048bf3b923327d66ea2575d89763e26e2200ff3cb29189061"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v2.0.0/LibverifyControls.zip",
                            checksum: "ad74f5a4ade4460133f6e3e7ebfb8728b2db1b7f27ad29da900cb82fc89b104e"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v2.0.0/LibverifyExt.zip",
                            checksum: "f13d22c6b862da8e09ec2f9316d4916ea3217001edaa6c8bce90dc6f9930a618")
    ]
)
