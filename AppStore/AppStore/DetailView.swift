//
//  DetailView.swift
//  AppStore
//
//  Created by Vinícius Schuck on 10/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    @Binding var app: App
    
    var body: some View {
        VStack {
            
            HStack {
                Image(self.app.image)
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .cornerRadius(30)
                
                Spacer()
                
                VStack {
                    Text(self.app.title)
                        .bold()
                        .font(.title)
                        .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    
                    Text(self.app.subtitle)
                        .foregroundColor(.gray)
                        .frame(width: UIScreen.main.bounds.width/2.0, height: nil, alignment: .leading)
                    
                    Spacer()
                    
                    HStack {
                        AppDownloadedButton(app: $app)
                        
                        if !self.app.isDownloaded {
                            Text("In-App Purchases")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                                .frame(width: 55, height: nil, alignment: .leading)
                        }
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                        
                    }
                    
                }.frame(width: nil, height: 150, alignment: .center)
                
            }.padding(20)
            
            HStack {
                VStack {
                    Text("4.7")
                    Text("105k Ratings")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                }.frame(width: UIScreen.main.bounds.width/3.3, height: 20, alignment: .center)
                VStack {
                    Text("Nº4")
                    Text("Casual")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                }.frame(width: UIScreen.main.bounds.width/3.3, height: 20, alignment: .center)
                VStack {
                    HStack {
                        Text("14")
                            .font(.system(size: 8))
                            .foregroundColor(.white)
                            .frame(width: 12, height: 12, alignment: .center)
                            .background(Color.orange)
                        Text("12+")
                    }
                    Text("Age")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                        .padding(.leading, 20)
                }.frame(width: UIScreen.main.bounds.width/3.3, height: 50, alignment: .center)
            }
            
            Spacer()
            
            ScrollView(.horizontal, content: {
                HStack(spacing: 10) {
                    ForEach(app.content.indices) { item in
                        Image(self.app.content[item])
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(30)
                    }
                }.padding(.leading, 10)
            })
        }
    }
}
