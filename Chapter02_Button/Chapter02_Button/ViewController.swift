//
//  ViewController.swift
//  Chapter02_Button
//
//  Created by KyungDong Han on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼 객체를 생성하고, 속성을 설정한다.
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        button.setTitle("테스트 버튼", for: .normal)
        
        // 버튼을 수평 중앙 정렬한다.
        button.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        
        // 루트 뷰에 버튼을 추가한다.
        self.view.addSubview(button)
        
        // 버튼의 이벤트와 메소드 btnOnClick을 연결한다.
        button.addTarget(self, action: #selector(btnOnClick(_:)), for: .touchUpInside)
        
    }
    
    @objc func btnOnClick(_ sender: Any) {
        // 호출한 객체가 버튼이라면
        if let button = sender as? UIButton {
            button.setTitle("클릭되었습니다.", for: .normal)
        }
    }


}

