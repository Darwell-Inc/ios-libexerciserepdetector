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
            checksum: "785382adfa5d27814ce5da3d3123c4d1911087f5df617b00ea946e971278f4bc"
        )
    ]
)

