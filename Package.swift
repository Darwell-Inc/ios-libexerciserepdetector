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
            name: "libexerciserepdetector",
            targets: [
                "libexerciserepdetector"
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "libexerciserepdetector",
            url: "https://github.com/darwell-inc/ios-libexerciserepdetector/releases/download/1.0.0/libexerciserepdetector.xcframework.zip",
            checksum: "024351431db622da2bdf5fb71cdedce98027bb12e36db39121598697069530ec"
        )
    ]
)

