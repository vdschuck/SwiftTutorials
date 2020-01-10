//
//  AppDownloadedButton.swift
//  StoreApp
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppDownloadedButton: View {

    @EnvironmentObject var myApps: MyAppsClass
    @Binding var app: App
    
    var body: some View {
        
        Button(action: {
            if self.app.isDownloaded || self.myApps.apps.contains(where: { $0.title == self.app.title }){
                print("App Aberto")
            } else {
                self.app.isDownloaded = true
                self.myApps.apps.append(self.app)
            }
        })
        {
            Text(self.app.isDownloaded || self.myApps.apps.contains(where: { $0.title == self.app.title })
                ? "OPEN" : "GET")
                .bold()
                .foregroundColor(.blue)
                .font(.system(size: 16))
                .frame(width: 60, height: 30, alignment: .center)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
        }.buttonStyle(PlainButtonStyle())
    }
}
