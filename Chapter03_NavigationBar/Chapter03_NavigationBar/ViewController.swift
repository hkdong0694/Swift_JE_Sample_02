//
//  ViewController.swift
//  Chapter03_NavigationBar
//
//  Created by KyungDong Han on 2022/01/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initTitleInput()
        // self.initTitleImage()
        // self.initTitle()
        // self.initTitleNew()
    }
    
    // 텍스트 필드를 이용하여 타이틀을 구성하는 메서드
    func initTitleInput() {
        // 텍스트 필드 객체 생성
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 300, height: 35)
        tf.backgroundColor = .white
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no // 자동 입력 기능 해제
        tf.spellCheckingType = .no  // 스펠링 체크 기능 해제
        tf.keyboardType = .URL
        tf.keyboardAppearance = .dark
        tf.layer.borderWidth = 0.3
        tf.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        self.navigationItem.titleView = tf
        
    }
    
    func initTitleImage() {
        let image  = UIImage(named: "swift_logo")
        let imageV = UIImageView(image: image)
        
        self.navigationItem.titleView = imageV
    }
    
    func initTitleNew() {
        
        // 상단 Header View
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 36))
        
        // 상단 레이블 정의
        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 15)
        topTitle.textColor = .white
        topTitle.text = "58개 숙소"
        
        // 하단 레이블 정의
        let subTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
        subTitle.numberOfLines = 1
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.textColor = .white
        subTitle.text = "1박(1월 10일 ~ 1월 11일)"
        
        // 상하단 레이블을 컨테이너 뷰에 추가한다.
        containerView.addSubview(topTitle)
        containerView.addSubview(subTitle)
        
        // 내비게이션 타이틀에 컨테이너 뷰를 대입한다.
        self.navigationItem.titleView = containerView
        // 배경 색상 설정
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = color
        
    }
    
    func initTitle() {
        // 내비게이션 타이틀용 레이블 객체
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        
        // 속성 설정
        nTitle.numberOfLines = 2 // 두 줄까지 표시되도록 설정
        nTitle.textAlignment = .center  // 중앙 정렬
        nTitle.textColor = .white   // 텍스트 색상 설정
        nTitle.font = UIFont.systemFont(ofSize: 15 ) // 폰트 크기
        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
        
        // 내비게이션 타이틀에 입력
        self.navigationItem.titleView = nTitle
        
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        // 배경 색상 설정
        self.navigationController?.navigationBar.barTintColor = color
        
    }


}

