// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFXIV-EquipmentDatabase-CLI",
    dependencies: [
        .package(name: "Commander",
                 url: "https://github.com/kylef/Commander.git",
                 from: "0.9.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FFXIV-EquipmentDatabase-CLI",
            dependencies: [ "Commander",]),
        .testTarget(
            name: "FFXIV-EquipmentDatabase-CLITests",
            dependencies: ["FFXIV-EquipmentDatabase-CLI"]),
    ]
)
