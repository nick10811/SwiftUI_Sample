//
//  ContentView.swift
//  SwiftUI_Sample
//
//  Created by Nick Yang on 2021/5/15.
//

import SwiftUI

struct ContentView: View {
    var modelArray: [Model] = []
    
    var body: some View {
        List(modelArray) { item in
            Image(item.imageName)
                .cornerRadius(40)
                .padding(.all, 5)
            VStack(alignment: .leading) {
                Text(item.title)
                Text(item.subtitle)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(modelArray: offlineData)
    }
}
#endif
