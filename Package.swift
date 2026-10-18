// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-SuperAwesome-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "SuperAwesomeAdapter", targets: ["SuperAwesomeAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/superawesome-org/sa-mobile-sdk-ios-spm", exact: "10.2.4"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/superawesome-adapter/5.3.0/ISSuperAwesomeAdapter5.3.0.zip",
      checksum: "a9029475d14d6f970ed641e6ac7c43716ac94a57426e9ae5a977a5c861122a0e"
    )
  ]
)
