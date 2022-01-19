//
//  ThirdViewController.swift
//  Chapter03_TabBar
//
//  Created by KyungDong Han on 2022/01/19.
//

import UIKit
class ThirdViewController : UIViewController {
    
    override func viewDidLoad() {
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "세번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        // 콘텐츠 내용에 맞게 레이블 크기 변경
        title.sizeToFit()
        
        // self.view.frame.width -> Only-Read 전용 ( 값을 입력하고 싶다면 self.view.frame.size.width 로 접근해야함 )
        title.center.x = self.view.frame.width / 2
        
        self.view.addSubview(title)
        
    }
    
}
