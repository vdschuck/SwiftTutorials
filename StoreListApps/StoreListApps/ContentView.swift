//
//  ContentView.swift
//  StoreListApps
//
//  Created by Vinícius Schuck on 09/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    @State var title: String
    @State var image: String
    @State private var isAppDownloaded = false
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal, 10)
            
            VStack {
                Text(title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    .font(.system(size: 18))
                
                Text("Digging Puzzles? Dig This!")
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    .font(.system(size: 12))
                
            }.frame(width: nil, height: 80, alignment: .center)
            
            VStack {
                AppDownloadedButton(isAppDownloaded: $isAppDownloaded)
                
                if !self.isAppDownloaded {
                    Text("In-App Purchases")
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                        .frame(width: 55, height: nil, alignment: .center)
                }
            }.padding(.leading, 25)
        }
    }
}

struct ContentView: View {
    
    @State var popularItems: [App] = [
        App(title: "Dig This!", image: "icon"),
        App(title: "Facebook", image: "icon2"),
        App(title: "Instagram", image: "icon"),
        App(title: "Twitter", image: "icon"),
        App(title: "Dig This!", image: "icon"),
        App(title: "Facebook", image: "icon"),
        App(title: "Instagram", image: "icon")
    ]
    
    @State var loveItems: [App] = [
        App(title: "LinkedIn", image: "icon"),
        App(title: "SlideShow", image: "icon"),
        App(title: "Baby2Body", image: "icon")
    ]
    
    @State var nailItems: [App] = [
        App(title: "Freeletics", image: "icon"),
        App(title: "Kinvo", image: "icon"),
        App(title: "Toca Life", image: "icon")
    ]
    
    var body: some View {
        List {
            Section(header: HStack {
                Text("Popular apps")
                    .bold()
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .padding()

                    Spacer()
            }
            .background(Color.white)
            .listRowInsets(EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0))
            ) {
                ForEach(popularItems) { item in
                    AppView(title: item.title, image: item.image)
                }
            }.background(Color.white)
            .listRowInsets(EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0))
            
            Section(header: HStack {
                Text("Apps we love")
                    .bold()
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .padding()

                    Spacer()
            }
            .background(Color.white)
            .listRowInsets(EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0))
            ) {
                ForEach(loveItems) { item in
                    AppView(title: item.title, image: item.image)
                }
            }
            
            Section(header: HStack {
                Text("Nail Those Summer Sunsets")
                    .bold()
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .padding()

                    Spacer()
            }
            .background(Color.white)
            .listRowInsets(EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0))
            ) {
                ForEach(nailItems) { item in
                    AppView(title: item.title, image: item.image)
                }
            }
        }.listStyle(GroupedListStyle())
    }
}


struct App: Identifiable {
    var id: UUID = UUID()
    var title: String
    var image: String
}
