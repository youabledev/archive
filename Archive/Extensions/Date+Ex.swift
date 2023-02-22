//
//  Date.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/09.
//

import Foundation

extension Date {
    
    /// 오늘인지 확인
    func isToday() -> Bool {
        return Calendar.current.isDateInToday(self)
    }
    
    /// 내일인지 확인
    func isYesterday() -> Bool {
        return Calendar.current.isDateInYesterday(self)
    }
    
    /// 올해인지 확인
    func isYear() -> Bool {
        // 올해
        let year = Calendar.current.component(.year, from: Date())
        let dateYear = Calendar.current.component(.year, from: self)
        return year == dateYear
    }
    
    /// 몇일 지났는지 확인
    func afterDate(from date: Date) -> Int? {
        let calendar = Calendar.current
        let diff = calendar.dateComponents([.day], from: date, to: self)
        return diff.day
    }
    
    func afterYear(from date: Date) -> Int? {
        let calendar = Calendar.current
        let diff = calendar.dateComponents([.year], from: date, to: self)
        return diff.year
    }
}
