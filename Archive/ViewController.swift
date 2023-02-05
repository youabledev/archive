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
        self.view.backgroundColor = .white
        print(view.safeAreaInsets.top)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(view.safeAreaInsets.top)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(view.safeAreaInsets.top)
    }
}

// snp 도 작성하기
