//
//  TargetInfo.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/04.
//

import Foundation

class TargetInfo {
    static var sharedObject: TargetInfo = TargetInfo()
    
    /// App Version
    public func getCurrentAppVersion() -> String? {
        guard let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            return nil
        }
        return appVersion
    }
    
    /// App Bundle ID
    public func getBundleID() -> String? {
        guard let identifier = Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String else {
            return nil
        }
        return identifier
    }
}
