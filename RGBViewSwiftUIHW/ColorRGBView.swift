//
//  ColorRGBView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct ColorRGBView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var isOnToggle: Bool
    
    var body: some View {
            Color(red: red / 255, green: green / 255, blue: blue / 255)
                .frame(height: 200)
                .cornerRadius(20)
                .offset(x: isOnToggle ? 0 : 360)
            .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.3), value: isOnToggle)
    }
}

struct ColorRGBView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRGBView(red: 1, green: 1, blue: 1, isOnToggle: false)
    }
}
