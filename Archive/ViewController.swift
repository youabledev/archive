//
//  ViewController.swift
//  Archive
//
//  Created by ZUMIN YOU on 2023/02/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(TargetInfo.sharedObject.getBundleID() ?? "번들아이디 없음")
    }


}

