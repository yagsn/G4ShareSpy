// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "G4ShareSpy",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "G4ShareSpy",targets: ["G4ShareSpy"]),
        .library(name: "G4ShareSpyPlugin",targets: ["G4ShareSpyPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/LoopKit/LoopKit.git", .branch("package-experiment2")),
        .package(name: "ShareClient", url: "https://github.com/LoopKit/dexcom-share-client-swift.git", .branch("package-experiment2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "G4ShareSpy",
            dependencies: [
                "LoopKit",
                .product(name: "LoopKitUI", package: "LoopKit"),
                .product(name: "ShareClient", package: "ShareClient"),
                .product(name: "ShareClientUI", package: "ShareClient")],
            path: "G4ShareSpy",
            exclude: ["Info.plist"]
        ),
        .target(
            name: "G4ShareSpyPlugin",
            dependencies: [
                "G4ShareSpy",
                .product(name: "LoopKitUI", package: "LoopKit"),
                "LoopKit"],
            path: "G4ShareSpyPlugin",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "G4ShareSpyTests",
            dependencies: ["G4ShareSpy"],
            path: "G4ShareSpyTests",
            exclude: ["Info.plist"]
        ),
    ]
)
