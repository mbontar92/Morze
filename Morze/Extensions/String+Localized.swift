//
//  String+Localized.swift
//  Morze
//
//  Created by Mykhailo on 25.07.2022.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
