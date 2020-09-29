//
//  TextBoxUsername.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/27/20.
//

import SwiftUI
import UIKit

struct TextBoxPhoneNumber: View {
    @Binding var number: String

    var body: some View {
        
        Group {
            TextField("Phone", text: $number, onEditingChanged: { _ in
                if self.number.count == 10 {
                    //hide keyboard
                }
            })
                .montserratFont(style: .title2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct TextBoxUsername_Previews: PreviewProvider {
    static var previews: some View {
        TextBoxPhoneNumber(number: .constant(""))
            .frame(width: UIScreen.main.bounds.width - 150)
    }
}
