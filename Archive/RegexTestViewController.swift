//
//  RegexTestViewController.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/24.
//

import UIKit

class RegexTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 특정 문자 형태와 일치하는지 확인하려면 정규식을 사용함
        /// range(of:options:)는 문자열 내에 특정 문자열이 존재하는 경우 문자열의 범위를 리턴함
        
        /// 대괄호 []
        /// 지정된 범위 내의 문자열 일부와 일치하는지 확인
        let regex1 = "[a-z]"
        let test1 = "a".range(of: regex1, options: .regularExpression) != nil // true
        let test2 = "AZX".range(of: regex1, options: .regularExpression) != nil // false
        let test3 = "cat!".range(of: regex1, options: .regularExpression) != nil // false
        
        /// ^
        /// 시작하는 문자가 지정된 범위내의 문자열 일부와 일치하는지 확인
        let regex2 = "^[a-z]"
        let test4 = "abc".range(of: regex2, options: .regularExpression) != nil // true
        let test5 = "Abc".range(of: regex2, options: .regularExpression) != nil // false
        let test6 = "^bc".range(of: regex2, options: .regularExpression) != nil // false
        
        /// $
        /// 끝나는 문자가 지정된 범위내의 문자열 일부와 일치하는지 확인
        let regex3 = "[a-z]$"
        let test7 = "abc".range(of: regex3, options: .regularExpression) != nil // true
        let test8 = "ab6".range(of: regex3, options: .regularExpression) != nil // false
        let test9 = "!bc".range(of: regex3, options: .regularExpression) != nil // true
        
        /// ^[]$
        /// 지정된 범위 내의 문자열로 구성된 단일의 값인지 확인
        let regex4 = "^[a-z]*$"
        let test10 = "!bc".range(of: regex4, options: .regularExpression) != nil // false
        let test11 = "ab!".range(of: regex4, options: .regularExpression) != nil // false
        let test12 = "abc".range(of: regex4, options: .regularExpression) != nil // false
        let test13 = "a".range(of: regex4, options: .regularExpression) != nil // true
        
        /// ^[]*$
        /// 문자열 전체가 지정된 범위 내의 문자열로 구성되는지 확인
        let regex5 = "^[a-z]*$"
        let test14 = "!bc".range(of: regex4, options: .regularExpression) != nil // false
        let test15 = "ab!".range(of: regex4, options: .regularExpression) != nil // false
        let test16 = "abc".range(of: regex4, options: .regularExpression) != nil // true
        let test17 = "a".range(of: regex4, options: .regularExpression) != nil // true
        
        /// +
        /// 하나이상
        let regex6 = "[a-z]+"
        let text18 = "abc".range(of: regex6, options: .regularExpression) != nil // true
        let text19 = "!bc".range(of: regex6, options: .regularExpression) != nil // true
        let text20 = "ab!".range(of: regex6, options: .regularExpression) != nil // true
        let text21 = "a7c".range(of: regex6, options: .regularExpression) != nil // true
        
        /// (.)\\1
        /// 앞과 동일한 문자가 한번더 반복되는지
        /// 만약 더 많은 횟수를 원하는 경우 "(.)\\1\\1\\1" 혹은 (.)\\1{3,}
        let regex7 = "(.)\\1"
        let text22 = "abc".range(of: regex7, options: .regularExpression) != nil // false
        let text23 = "aac".range(of: regex7, options: .regularExpression) != nil // true
        let text24 = "abbc".range(of: regex7, options: .regularExpression) != nil // true
        let text25 = "aaac".range(of: regex7, options: .regularExpression) != nil // true
        
        
    }
}

extension RegexTestViewController {
    /// 범위 표현
    ///
    /// {0,}
    /// 처음 부터 끝까지 (대치 가능 *)
    ///
    /// {1.}
    /// 한개 이상 (대치 가능+)
    ///
    /// {0,1}
    /// 한 개 (대치 가능 ?)
    ///
    ///
}

extension RegexTestViewController {
    /// 자주 사용하는 정규식 표현 정리
    
    // <휴대폰>
    // ^01([0-9])([0-9]{3,4})([0-9]{4})$
    /// ^01: 01로 시작
    /// ([0-9]): 하나가 0-9 범위에 포함됨
    /// ([0-9]{3,4}) 3이상 4이하가 0-9 범위에 포함되어야 함
    /// ([0-9]{4} 4개가 0-9 범위에 포함되어야 함
    
    // <이메일>
    // ^[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,10}$
    /// [A-Z0-9a-z._%+-]+: a~z, 0~9, a~z, ._%+- 의 범위에 포함되는 하나 이상
    /// [A-Z0-9a-z.-]+: a~z, 0~9, a~z 의 범위에 포함되는 하나 이상
    /// \\. : "." 문자를 사용하기 위해 이스케이프 처리 (swift는 // 두개 사용함)
    /// [A-Za-z]{2,10}: 영어 2 ~ 10자리
    
    // <이메일>
    // 
}

extension RegexTestViewController {
    /// 참고 사이트
    ///
    /// apple dev NSRegularExpression
    /// https://developer.apple.com/documentation/foundation/nsregularexpression
    ///
    /// regexr.com
    /// https://regexr.com/
    ///
    /// advanced swift
    /// https://www.advancedswift.com/regular-expressions/#phone-number-regular-expression
}
