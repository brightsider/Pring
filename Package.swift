// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Pring",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Pring",
            targets: ["Pring"]),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "11.0.0")
    ],
    targets: [
        .target(
            name: "Pring",
            dependencies: [
                .product(name: "FirebaseFirestore", package: "Firebase"),
                .product(name: "FirebaseStorage", package: "Firebase")
            ],
            path: "Pring")
    ]
)
