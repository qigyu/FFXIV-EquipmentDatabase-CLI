// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFXIV-EquipmentDatabase-CLI",
    dependencies: [
       .package(name: "Tokamak",
                 url: "https://github.com/TokamakUI/Tokamak",
                 Version(0,6,1) ..< Version(0,6,4)),
        .package(name: "TokamakHTMLFunctionBuilder",
                 url:"https://github.com/evdwarf/tokamak-html-function-builder",
                 from: "0.0.4"),
        .package(name: "Closswift",
                 url: "https://github.com/evdwarf/closswift",
                 from: "0.0.1"),
        .package(name: "TailwindSwift",
                 url: "https://github.com/evdwarf/tailwind-swift",
                 from: "0.1.0"),
        .package(name: "Commander",
                 url: "https://github.com/kylef/Commander.git",
                 from: "0.9.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FFXIV-EquipmentDatabase-CLI",
            dependencies: [.product(name: "TokamakShim", package: "Tokamak"),
                "TokamakHTMLFunctionBuilder",
                "Closswift",
                "TailwindSwift",
                "Commander"]),
        .testTarget(
            name: "FFXIV-EquipmentDatabase-CLITests",
            dependencies: ["FFXIV-EquipmentDatabase-CLI"]),
    ]
)
