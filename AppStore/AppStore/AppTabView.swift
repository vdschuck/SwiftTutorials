//
//  AppTabView.swift
//  AppStore
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                ContentView()
                    .navigationBarTitle("App Store")
            }.tabItem {
                Image(systemName: "list.dash")
                Text("Products")
            }
            
            NavigationView {
                MyAppsView()
                    .navigationBarTitle("My Apps")
            }.tabItem {
                Image(systemName: "list.bullet")
                Text("My Apps")
            }
        }
    }
}
