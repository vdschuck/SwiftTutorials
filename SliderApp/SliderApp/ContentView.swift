//
//  ContentView.swift
//  SliderApp
//
//  Created by Vinícius Schuck on 08/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    @State private var sliderValue = 0.0
    @State private var selectPicker = 0
    @State private var sortNumber = Int.random(in: 0...20)
    
    private var pickerOptions = ["Easy", "Hard"]
    
    
    var body: some View {
        
        VStack {
            
            Picker(selection: $selectPicker, label: Text("Options")) {
                ForEach(0..<self.pickerOptions.count) {
                    Text(self.pickerOptions[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Spacer()

            Text("Put the slider as close can to 9")
                .bold()
                .font(.system(size: 20))

            Spacer()

            HStack {
                Text("0")

                if self.selectPicker == 1 {
                     Slider(value: $sliderValue, in: (0...50))
                } else {
                     Slider(value: $sliderValue, in: (0...20))
                }

                Text(self.selectPicker == 1 ? "50" : "20")
            }

            Spacer()
            
            AppSubmitButton(showAlert: $showAlert, sortNumber: $sortNumber, sliderValue: $sliderValue)
            
        }.padding(20)
    }
}
