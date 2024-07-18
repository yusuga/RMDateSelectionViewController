// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "RMDateSelectionViewController",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "RMDateSelectionViewController",
            targets: ["RMDateSelectionViewController"]
        ),
    ],
    dependencies: [
      .package(url: "git@github.com:yusuga/RMActionController.git", branch: "feat/swiftpm"),
    ],
    targets: [
      .target(
        name: "RMDateSelectionViewController",
        dependencies: ["RMActionController"],
        path: "RMDateSelectionViewController",
        cSettings: [
          .headerSearchPath("Animations"),
          .headerSearchPath("Categories"),
          .headerSearchPath("Private"),
        ]
      )
    ]
)
