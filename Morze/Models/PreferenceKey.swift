//
//  PreferenceKey.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import SwiftUI

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
