//
//  CustomFonts.swift
//  WishLisht
//
//  Created by Taylor Pubins on 9/27/20.
//

import Foundation
import SwiftUI

struct MonserratFont: ViewModifier {
    var style: UIFont.TextStyle = .headline
    var weight: Font.Weight = .regular
    var color: Color = .primaryW
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: style).pointSize).weight(weight))
            .foregroundColor(color)
    }
}

//application of ViewModifier for MonserratFont
extension View {
    func montserratFont(style: UIFont.TextStyle, weight: Font.Weight, color: Color) -> some View {
        self.modifier(MonserratFont(style: style, weight: weight, color: color))
    }
    
    func montserratFont(style: UIFont.TextStyle, weight: Font.Weight) -> some View {
        self.modifier(MonserratFont(style: style, weight: weight))
    }
    
    func montserratFont(style: UIFont.TextStyle) -> some View {
        self.modifier(MonserratFont(style: style))
    }
    
    func montserratFont(weight: Font.Weight) -> some View {
        self.modifier(MonserratFont(weight: weight))
    }
    
    
    func montserratFont() -> some View {
        self.modifier(MonserratFont())
    }
    
}

struct HindFont: ViewModifier {
    var style: UIFont.TextStyle = .body
    var weight: Font.Weight = .regular
    var color: Color = .primaryW
    
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Hind-Regular", size: UIFont.preferredFont(forTextStyle: style).pointSize).weight(weight))
            .foregroundColor(color)
    }
}

//application of ViewModifier for HindFont
extension View {
    func hindFont(style: UIFont.TextStyle, weight: Font.Weight, color: Color) -> some View {
        self.modifier(HindFont(style: style, weight: weight, color: color))
    }
    
    func hindFont(style: UIFont.TextStyle, weight: Font.Weight) -> some View {
        self.modifier(HindFont(style: style, weight: weight))
    }
    
    func hindFont(style: UIFont.TextStyle) -> some View {
        self.modifier(HindFont(style: style))
    }
    
    func hindFont(weight: Font.Weight) -> some View {
        self.modifier(HindFont(weight: weight))
    }
    
    
    func hindFont() -> some View {
        self.modifier(HindFont())
    }
    
}
