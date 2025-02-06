// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleLibrary",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "SampleFramework",
                 type: .dynamic,
                 targets: ["SampleFramework"]),
        .library(
            name: "SampleLibraryView",
            type: .static,
            targets: [
                "SampleLibraryView",
            ]),
        .library(
            name: "SampleLibraryModel",
            type: .static,
            targets: [
                "SampleLibraryModel",
            ])
    ],
    targets: [
        .target(name: "SampleFramework",
                dependencies: ["SampleLibraryView", "SampleLibraryModel"]),
        .target(name: "SampleLibraryView",
                dependencies: ["SampleLibraryCore"]),
        .target(name: "SampleLibraryModel",
                dependencies: ["SampleLibraryCore"]),
        .target(name: "SampleLibraryCore"),
        .testTarget(name: "SampleLibraryViewTests"),
        .testTarget(name: "SampleLibraryModelTests")
    ]
)
