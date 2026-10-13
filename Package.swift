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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/superawesome-adapter/5.1.0/ISSuperAwesomeAdapter5.1.0.zip",
      checksum: "55e47e06a3095b3f006f85850eec728cf08d4d53ad0ac1e375dc5aad6a12a403"
    )
  ]
)
