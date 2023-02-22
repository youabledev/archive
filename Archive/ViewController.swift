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
        
        let label = UILabel(frame: .init(x: view.center.x, y: view.center.y, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width))
        view.addSubview(label)
        label.text = LocalizableStrings.Placeholder.name
    }
}
