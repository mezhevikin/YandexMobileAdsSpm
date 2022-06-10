// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsWrapper",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "YandexMobileAdsWrapper",
            targets: ["YandexMobileAdsWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "YandexMobileAdsWrapper",
            dependencies: [
                .target(
                    name: "YandexMobileAds",
                    condition: .when(platforms: .some([.iOS]
                ))),
            ],
            linkerSettings: [
                .linkedLibrary("xml2"),
                .linkedFramework("StoreKit"),
                .linkedFramework("Security"),
                .linkedFramework("SafariServices"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("AdSupport"),
                .linkedFramework("WebKit"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia")
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAds",
            url: "https://storage.mds.yandex.net/get-ads-mobile-sdk/212922/YandexMobileAds-5.0.2-ios-8197cee1-76ee-4740-a109-74d3f16e1560.zip",
            checksum: "3b109b709cb29fe0b82a639435da0019a8f3f007e9b3bb3e12a0c637cacff523"
        )
    ]
)
