// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-SuperAwesome-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "SuperAwesomeAdapter", targets: ["SuperAwesomeAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/superawesome-org/sa-mobile-sdk-ios-spm", exact: "10.2.3"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "SuperAwesomeAdapter",
      dependencies: [
        "SuperAwesomeAdapterSDK",
        .product(name: "SuperAwesome", package: "sa-mobile-sdk-ios-spm"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "SuperAwesomeAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/superawesome-adapter/5.2.0/ISSuperAwesomeAdapter5.2.0.zip",
      checksum: "a4562d3b72cf71c103bcbcd1a41035bdc51f1f7484e2eb9d00c03ded8814fb39"
    )
  ]
)
