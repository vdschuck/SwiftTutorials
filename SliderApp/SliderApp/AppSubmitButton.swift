//
//  AppSubmitButton.swift
//  SliderApp
//
//  Created by Vinícius Schuck on 08/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct AppSubmitButton: View {
    
    @Binding var showAlert: Bool
    @Binding var sortNumber: Int
    @Binding var sliderValue: Double
    
    var body: some View {
        
        Button(action: {
            self.showAlert = true
        })
        {
            Text("Try to guess")
                .bold()
                .foregroundColor(.white)
                .frame(width: 120, height: 40, alignment: .center)
                .background(Color.purple)
                .cornerRadius(20)

        }
        .alert(isPresented: $showAlert) {

            Alert(title: Text("Correct value is \(Int(self.sortNumber))"),
                  message: Text(Int(self.sliderValue) == Int(self.sortNumber) ? "Congratulations you got right!" : "Wrong! You can try again."),
                  dismissButton: .cancel({
                    print(Int(self.sliderValue))
                  })
            )
        }
    }
}
