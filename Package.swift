// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PHFComposeBarView",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PHFComposeBarView",
            targets: ["PHFComposeBarView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),        //
        .package(url: "https://github.com/mmllr/PHFDelegateChain.git", from: "1.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PHFComposeBarView",
            dependencies: [
                "PHFDelegateChain"
            ],
            path: "Classes",
            exclude: ["Example", "Screenshots"],
            publicHeadersPath: "."
        )
    ]
)
