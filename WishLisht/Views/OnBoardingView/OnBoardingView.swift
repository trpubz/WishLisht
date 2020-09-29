//
//  OnBoardingView.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/27/20.
//

import SwiftUI

struct OnBoardingView: View {
    @State var number: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Create Account")
                .montserratFont(style: .title2)
            TextBoxPhoneNumber(number: $number)
                .frame(width: 150)
            if number.count == 10 {
                Button("Next") {
                    print("phone number is 10 chars long")
                    self.hideKeyboard()
                }
                .montserratFont(style: .title2)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.alternateW))
            }
        }
        .frame(width: 300)
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(number: "123456789")
    }
}
