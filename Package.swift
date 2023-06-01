// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "SPMLDAP",
    products: [
        .library(
            name: "CLDAP",
            targets: ["CLDAP"]),
    ],
    targets: [
        .systemLibrary(
            name: "CLDAP",
            pkgConfig: "ldap",
            providers: [
                .brew(["openldap"]),
                .apt(["libldap2-dev"])
            ]
        )
    ]
)
