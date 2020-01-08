//
//  AppDownloadedButton.swift
//  StoreApp
//
//  Created by Vinícius Schuck on 08/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppDownloadedButton: View {
    
    @Binding var isAppDownloaded: Bool
    
    var body: some View {
        
        Button(action: {
            if self.isAppDownloaded {
                print("App Aberto")
            } else {
                self.isAppDownloaded = true
                print("Download realizado com sucesso!")
            }
        })
        {
            Text(isAppDownloaded ? "OPEN" : "GET")
                .bold()
                .foregroundColor(.white)
                .frame(width: 60, height: 30, alignment: .center)
                .background(Color.blue)
                .cornerRadius(20)
        }
    }
}
