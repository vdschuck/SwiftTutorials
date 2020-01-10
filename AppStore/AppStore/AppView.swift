//
//  AppView.swift
//  AppStore
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppView: View {

    @EnvironmentObject var myApps: MyAppsClass
    @Binding var app: App
    
    var body: some View {
        HStack {
            Image(self.app.image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal, 10)
            
            VStack {
                Text(self.app.title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    .font(.system(size: 18))
                
                Text(self.app.subtitle)
                    .foregroundColor(.gray)
                    .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    .font(.system(size: 12))
                
            }.frame(width: nil, height: 80, alignment: .center)
            
            VStack {
                AppDownloadedButton(app: $app)
                
                if !self.app.isDownloaded && !self.myApps.apps.contains(where: { $0.title == self.app.title }){
                    Text("In-App Purchases")
                        .foregroundColor(.gray)
                        .font(.system(size: 10))
                        .frame(width: 55, height: nil, alignment: .center)
                }
            }.padding(.leading, 25)
        }
    }
}
