//
//  DeivceInfo.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/04.
//

import UIKit

class DeviceInfo {
    static var sharedObject: DeviceInfo = DeviceInfo()
    
    /// Device Name (e.g. "iPhone 14 Pro")
    public func getDeviceName() -> String? {
        return UIDevice.current.name
    }
    
    /// System Name (e.g. "iOS")
    public func getSystemName() -> String? {
        return UIDevice.current.systemName
    }
    
    /// System OS Version (e.g. "4.0")
    public func getSystemVersion() -> String? {
        return UIDevice.current.systemVersion
    }
    
    /// Model (e.g. "iPhone", "iPod touch")
    public func getDeviceModel() -> String? {
        return UIDevice.current.model
    }
    
    /// UUID
    public func getUUID() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
}
