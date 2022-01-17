//
//  MemoCell.swift
//  MyMemory_01
//
//  Created by KyungDong Han on 2022/01/17.
//

import UIKit

class MemoCell : UITableViewCell {
    
    @IBOutlet weak var subject: UILabel!    // 메모 제목
    
    @IBOutlet weak var contents: UILabel!   // 메모 내용
    
    @IBOutlet weak var regdate: UILabel!    // 메모 날짜
    
    @IBOutlet weak var img: UIImageView!    // 이미지
}
