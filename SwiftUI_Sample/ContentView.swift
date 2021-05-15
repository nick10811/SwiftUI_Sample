//
//  ContentView.swift
//  SwiftUI_Sample
//
//  Created by Nick Yang on 2021/5/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("first text")
                Text("second text (subtitle)")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
