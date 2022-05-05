//
//  TextColorView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct TextColorView: View {
    
    let sliderValue: Double
    
    var body: some View {
        Text("\(lround(sliderValue))")
            .frame(width: 50)
    }
}

struct TextColorView_Previews: PreviewProvider {
    static var previews: some View {
        TextColorView(sliderValue: 255)
    }
}
