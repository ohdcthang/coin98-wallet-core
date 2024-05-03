// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "coin98-wallet-core",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "coin98-wallet-core",
            targets: ["coin98-wallet-core"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/trustwallet/wallet-core", .branchItem("master")),
        // .package(url: "https://github.com/liujunliuhong/Crypto-Swift.git", .branchItem("master"))
    ],
    
)
