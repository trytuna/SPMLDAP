// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "SPMLDAP",
    products: [
        .library(
            name: "SPMLDAP",
            targets: ["SPMLDAP"]),
    ],
    targets: [
        .systemLibrary(
            name: "SPMLDAP",
            pkgConfig: "ldap",
            providers: [
                .apt(["openldap"])
            ]
        )
    ]
)
