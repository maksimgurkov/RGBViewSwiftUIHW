//
//  TextFieldColorView.swift
//  RGBViewSwiftUIHW
//
//  Created by Максим Гурков on 04.05.2022.
//

import SwiftUI

struct TextFieldColorView: View {
    
    @Binding var valueText: String
    @Binding var sliderValue: Double
    
    @State private var alert = false
    
    var body: some View {
        TextField("", text: $valueText) { _ in
            withAnimation {
                view()
            }
        }
            .textFieldStyle(.roundedBorder)
            .frame(width: 60)
            .keyboardType(.decimalPad)
            .alert("Не верный формат", isPresented: $alert, actions: {}) {
                Text("Пожалуйста введите верный формат")
            }
    }
}

extension TextFieldColorView {
    private func view() {
        if let value = Int(valueText), (0...255).contains(value) {
            self.sliderValue = Double(value)
            return
        }
        alert.toggle()
        sliderValue = 0
        valueText = "0"
    }
}

struct TextFieldColorView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColorView(valueText: .constant("100"), sliderValue: .constant(100))
    }
}
