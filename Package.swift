// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CustomControls",
  platforms: [.macOS(.v14),],
  
  products: [
    .library(name: "ApiIntView", targets: ["ApiIntView"]),
    .library(name: "ApiStringView", targets: ["ApiStringView"]),
    .library(name: "LevelIndicatorView", targets: ["LevelIndicatorView"]),
  ],
  
  dependencies: [
    // ----- K3TZR -----
    .package(url: "https://github.com/K3TZR/SDRApiFeatures.git", branch: "main"),
  ],
  
  targets: [
    // --------------- Modules ---------------
    // ApiIntView
    .target(name: "ApiIntView", dependencies: [
    ]),
    
    // ApiStringView
    .target(name: "ApiStringView", dependencies: [
    ]),
    
    // LevelIndicatorView
    .target(name: "LevelIndicatorView", dependencies: [
      .product(name: "SharedFeature", package: "SDRApiFeatures"),
    ]),

    // ---------------- Tests ----------------
  ]
)
