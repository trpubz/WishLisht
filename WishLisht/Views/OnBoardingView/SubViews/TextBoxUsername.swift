//
//  TextBoxUsername.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/27/20.
//

import SwiftUI

struct TextBoxUsername: View {
    @State var link: String
    
    var body: some View {
        TextField("Username", text: $link)
    }
}

struct TextBoxUsername_Previews: PreviewProvider {
    static var previews: some View {
        TextBoxUsername(link: "")
    }
}
