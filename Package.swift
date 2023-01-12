// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("package is public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "ios-libexereciserepdetector",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "libexereciserepdetector",
            targets: [
                "libexereciserepdetector"
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "libexereciserepdetector",
            url: "https://github.com/darwell-inc/ios-libexereciserepdetector/releases/download/1.0.0/libexerciserepdetector.xcframework.zip",
            checksum: "b227312b6b9facabd53d18a7a0c27d10fe2ccb75695c0a4da5259c0f84357cfb"
        )
    ]
)

