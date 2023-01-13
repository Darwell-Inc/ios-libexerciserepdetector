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
            checksum: "b8315f886c9c3f9b62afeec00e7ea55a965e83807c47a3c0099b426b34b7a721"
        )
    ]
)

