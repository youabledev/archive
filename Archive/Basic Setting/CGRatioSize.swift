//
//  CGRatioSize.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/05.
//

import UIKit

class CGRatioSize {
    static var sharedObject: CGRatioSize = CGRatioSize()
    
    /// the origin : https://www.hackingwithswift.com/forums/swift/how-to-create-a-value-type-from-uiwindowscene/10485/12271
    let scenes = UIApplication.shared.connectedScenes
    lazy var windowScenes = scenes.first as? UIWindowScene
    lazy var window = windowScenes?.windows.first
    
    /// Get SafeArea Top Height
    lazy var safeAreaTopHeight = window?.safeAreaInsets.top ?? 0.0
    
    /// Get SafeArea Bottom Height
    lazy var safeAreaBottomHeight = window?.safeAreaInsets.bottom ?? 0.0
    
    /// under iOS 15.0
    private var statusTopHeight: CGFloat? {
        guard #available(iOS 15, *) else {
            return UIApplication.shared.windows.first?.safeAreaInsets.top
        }
        
        return (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.top
    }
    
    /// under iOS 15.0
    private var statusBottomHeight: CGFloat? {
        guard #available(iOS 15, *) else {
            return UIApplication.shared.windows.first?.safeAreaInsets.bottom
        }
        
        return (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.bottom
    }
}
