//
//  FontStyle.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2020-03-10.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This struct represents a custom font with a `name`, `style`
 and `weight`.
 
 You can create styles with font names of `FontIdentifier`s.
 
 You can apply this style with the `shadow(_ style:)` `View`
 extension or use its properties directly using the built-in
 `font(name:,style:,weight:)` extension.
 
 You can specify your own standard styles by creating static,
 calculated `FontStyle` extension properties.
 */
public struct FontStyle {
    
    public init(
        name: String,
        style: UIFont.TextStyle,
        weight: Font.Weight = .regular) {
        self.name = name
        self.style = style
        self.weight = weight
    }
    
    public init(
        identifier: FontIdentifier,
        style: UIFont.TextStyle,
        weight: Font.Weight = .regular) {
        self.name = identifier.fontName
        self.style = style
        self.weight = weight
    }
    
    public let name: String
    public let style: UIFont.TextStyle
    public let weight: Font.Weight
    
    public var font: Font {
        Font.custom(name, size: size).weight(weight)
    }
    
    public var size: CGFloat {
        UIFont.preferredFont(forTextStyle: style).pointSize
    }
}
