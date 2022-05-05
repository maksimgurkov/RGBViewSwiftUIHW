//
//  SliderRGBView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct SliderRGBView: View {
    
    let color: Color
    @Binding var sliderValue: Double
    @State private var text = ""
    
    var body: some View {
        
        HStack {
            TextColorView(sliderValue: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    text = "\(lround(sliderValue))"
                }
            TextFieldColorView(valueText: $text, sliderValue: $sliderValue)
        }
        .onAppear {
            text = "\(lround(sliderValue))"
        }
    }
}

struct SliderRGBView_Previews: PreviewProvider {
    static var previews: some View {
        SliderRGBView(color: .red, sliderValue: .constant(100))
    }
}
