//
//  ContentView.swift
//  SwiftUI_Sample
//
//  Created by Nick Yang on 2021/5/15.
//

import SwiftUI

struct ContentView: View {
    @State var modelArray: [Model] = []
    
    var body: some View {
        NavigationView {
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
            .navigationBarTitle("List View")
            .onAppear(perform: {
                loadData()
            })
        }
    }
    
    func loadData() {
        let opendata = "https://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=cec4308e-3876-46a8-8372-171fd611dfa3"
        guard let url = URL(string: opendata) else { return }

        let request = URLRequest(url: url)
        print("[API] start.")
        URLSession.shared.dataTask(with: request) {data, response, error in
            print("[API] response.")
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(Welcome.self, from: data)
                    var parkArray: [Model] = []
                    response.result.results.forEach { element in
                        parkArray.append(Model(imageName: "head", title: element.公園名稱, subtitle: element.管理單位.rawValue))
                    }
                    DispatchQueue.main.async {
                        self.modelArray = parkArray
                    }
                } catch {
                    print("[API] Parsing json failed. \(error)")
                }
            }
        }.resume()
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(modelArray: offlineData)
    }
}
#endif
