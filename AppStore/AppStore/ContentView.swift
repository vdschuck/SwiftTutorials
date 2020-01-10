//
//  ContentView.swift
//  AppStore
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var apps: [App] = [
        App(title: "Facebook", subtitle: "Teste", image: "icon", content: ["fb1", "fb2"]),
        App(title: "TED", subtitle: "Teste", image: "icon2", content: ["ted1", "ted2"])
    ]
    
    var body: some View {
        List {
            Section() {
                ForEach(apps.indices) { item in
                    NavigationLink(destination: DetailView(app: self.$apps[item])) {
                        AppView(app: self.$apps[item])
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct App: Identifiable {
    var id: UUID = UUID()
    var title: String
    var subtitle: String
    var image: String
    var content: [String]
    var isDownloaded = false
}
