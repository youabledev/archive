//
//  String+Ex.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/23.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "\(self)_comment")
    }
    
    func localized(_ args: CVarArg...) -> String {
        return String(format: localized, args)
    }
}
