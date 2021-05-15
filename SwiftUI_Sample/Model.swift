//
//  Model.swift
//  SwiftUI_Sample
//
//  Created by Nick Yang on 2021/5/15.
//

import Foundation

// HINT: list struct only accept identifiable struct.
struct Model: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var subtitle: String
}

#if DEBUG
let offlineData: [Model] = [
    Model(imageName: "head", title: "[1]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[2]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[3]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[4]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[5]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[6]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[7]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[8]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[9]", subtitle: "more detail text"),
    Model(imageName: "head", title: "[10]", subtitle: "more detail text")
]
#endif
