//
//  MemoData.swift
//  MyMemory_01
//
//  Created by KyungDong Han on 2022/01/17.
//  메모 작성 화면에서 입력한 값을 저장했다가, 목록 화면이나 상세 화면에 제동하는 역할
// Domain , Data Model
import UIKit
class MemoData {
    
    var memoIdx : Int?      // 데이터 식별값
    var title : String?     // 메모 제목
    var contents : String?  // 메모 내용
    var image : UIImage?    // 이미지
    var redate : Date?      // 작성자
    
}
