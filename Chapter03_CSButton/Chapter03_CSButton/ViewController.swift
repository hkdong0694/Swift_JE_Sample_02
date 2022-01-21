//
//  ViewController.swift
//  Chapter03_CSButton
//
//  Created by KyungDong Han on 2022/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let frame = CGRect(x: 30, y: 300, width: 150, height: 30)
        // let csBtn = CSButton(frame: frame)
        
        let csBtn = CSButton()
        csBtn.frame = CGRect(x: 30, y: 150, width: 150, height: 30)
        self.view.addSubview(csBtn)
        
    }


}

