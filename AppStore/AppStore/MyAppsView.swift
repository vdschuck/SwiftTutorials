//
//  MyAppsView.swift
//  AppStore
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct MyAppsView: View {
    
    @EnvironmentObject var myApps: MyAppsClass
    
    var body: some View {
        List {
            ForEach (0..<myApps.apps.count) { item in
                AppView(app: self.$myApps.apps[item])
            }
        }
    }
}
