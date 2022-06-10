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
    dependencies: [],
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
            url: "https://github.com/mezhevikin/YandexMobileAdsSpm/releases/download/5.0.2/YandexMobileAds.xcframework.zip",
            checksum: "69e9851204371f98947caf137060e8c31be836b487f414b04c92d11e4e07cdbc"
        )
    ]
)
