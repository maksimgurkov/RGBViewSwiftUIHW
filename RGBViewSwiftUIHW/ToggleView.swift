//
//  ToggleView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct ToggleView: View {
    
    @Binding var isOnToggle: Bool
    
    var body: some View {
        Toggle(isOn: $isOnToggle) {
            Text("Показать окно с цветом")
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView(isOnToggle: .constant(false))
    }
}
