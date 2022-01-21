//
//  CSButton.swift
//  Chapter03_CSButton
//
//  Created by KyungDong Han on 2022/01/21.
//

import UIKit
class CSButton : UIButton {

    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
        
        // 스토리보드 방식으로 버튼을 정의했을 때 적용된다.
        self.backgroundColor = .green // 배경을 녹색으로
        self.layer.borderWidth = 2 // 테두리는 조금 두껍게
        self.layer.borderColor = UIColor.black.cgColor // 테두리는 검정으로
        self.setTitle("버튼", for: .normal)   // 기본 문구 설정
        
    }
    
    init() {
        super.init()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("코드로 생성된 버튼", for: .normal)
    }
    
    
}
