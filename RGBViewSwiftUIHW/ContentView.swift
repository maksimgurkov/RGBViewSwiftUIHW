//
//  ContentView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOnToggle = false
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @FocusState private var focus: Bool
    
    var body: some View {
        VStack {
            ColorRGBView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, isOnToggle: isOnToggle)
            VStack {
                SliderRGBView(color: .red, sliderValue: $redSliderValue)
                SliderRGBView(color: .green, sliderValue: $greenSliderValue)
                SliderRGBView(color: .blue, sliderValue: $blueSliderValue)
                ToggleView(isOnToggle: $isOnToggle)
                    .padding(.top, 40)
                    
            }
            .focused($focus)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        focus = false
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


