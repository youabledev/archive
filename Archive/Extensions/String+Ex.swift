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

// MARK: - 가격
extension String {
    /// 통화 세자리 수 마다 쉼표 처리
    func currencyInputFormatting() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 0
        do {
            let regex = try NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
            var amountWithPrefix = self
            amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count), withTemplate: "")
            
            if formatter.number(from: amountWithPrefix) != nil {
                if let formattedNumber = formatter.number(from: amountWithPrefix),
                   let formattedstring = formatter.string(from: formattedNumber) {
                    return formattedstring
                }
            }
        } catch {
            return ""
        }
        return ""
    }
}

/// 정규식
extension String {
    /// 이메일 정규식 체크
    func isValidEmail() -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return emailPredicate.evaluate(with: self)
    }
    
    /// 핸드폰 번호 정규성 체크
    func isValidatePhoneNumber() -> Bool {
        let regex = "^01([0-9])([0-9]{3,4})([0-9]{4})$"
        let phonePredicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return phonePredicate.evaluate(with: self)
    }
}
