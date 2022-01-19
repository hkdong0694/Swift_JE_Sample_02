//
//  ViewController.swift
//  Chapter03_TabBar
//
//  Created by KyungDong Han on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "첫번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        // 콘텐츠 내용에 맞게 레이블 크기 변경
        title.sizeToFit()
        
        // self.view.frame.width -> Only-Read 전용 ( 값을 입력하고 싶다면 self.view.frame.size.width 로 접근해야함 )
        title.center.x = self.view.frame.width / 2
        
        self.view.addSubview(title)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar = self.tabBarController?.tabBar
        // tabBar?.isHidden = (tabBar?.isHidden == true) ? false : true
        UIView.animate(withDuration: TimeInterval(0.15)) {
            // alpha 값이 0이면 1, 1이면 0으로 바꾸어 준다.
            // 호출될 때마다 점점 투명해졌다가 점점 진해질 것이다.
            tabBar?.alpha = (tabBar?.alpha == 0 ? 1 : 0)
        }
        
    }


}

