// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pakage",
    products: [
        .library(name: "Pakage", targets: ["Pakage"])
//        .executable(name: "Pakage", targets: ["Pakage"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        
        .package(url: "https://github.com/Alamofire/Alamofire",  .upToNextMinor(from: "5.4.1")),
            .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git",  .upToNextMinor(from: "5.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Pakage",
            dependencies: ["Alamofire" , "SwiftyJSON"]),
        .testTarget(
            name: "PakageTests",
            dependencies: ["Pakage"]),
    ]
)
