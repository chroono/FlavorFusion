//
//  LanguageManager.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 07/10/2024.
//

import Foundation

enum Language: String {
    case en
    case pl
}

extension String {
    func localize(lang: Language) -> String {
        guard let path = Bundle.main.path(forResource: lang.rawValue, ofType: "lproj"), let bundle = Bundle(path: path) else { return self }
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }
}
