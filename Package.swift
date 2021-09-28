// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "StateMachineGenerator",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .executable(name: "dh-state-machine-generate", targets: ["StateMachineGenerator"])
  ],
  dependencies: [
    .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.41.2"),
    .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0")
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "StateMachineGenerator",
      dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")]),
    .testTarget(
      name: "StateMachineGeneratorTests",
      dependencies: ["StateMachineGenerator"]),
  ]
)
