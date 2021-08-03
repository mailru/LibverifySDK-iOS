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
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v0.0.1/Libverify.zip",
                            checksum: "2ae55ccd41b0e2a57c218dd12d1dcf06a172c74aabfb91e55f2b651a031163ae"),
        Target.binaryTarget(name: "LibverifyControls",
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v0.0.1/LibverifyControls.zip",
                            checksum: "bac77ef0c1e3fd6002b969026ca55540c4cf4c13c5309b91a89a127c3c47f9c4"),
        Target.binaryTarget(name: "LibverifyExt",
                            url: "https://github.com/mailru/LibverifySDK-iOS/releases/download/v0.0.1/LibverifyExt.zip",
                            checksum: "72285b558455dd52f8f90b3da2cb33ba06f5feec0e0870cf36047674f598b903")
    ]
)
