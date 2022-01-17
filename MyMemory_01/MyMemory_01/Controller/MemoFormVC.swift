//
//  MemoFormVC.swift
//  MyMemory_01
//
//  Created by KyungDong Han on 2022/01/17.
//

import UIKit
class MemoFormVC : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {
    
    var subject : String?
    
    @IBOutlet weak var contents: UITextView!
    
    @IBOutlet weak var preview: UIImageView!
    
    override func viewDidLoad() {
        self.contents.delegate = self
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        // 내용을 입력하지 않으면 Alert 창 띄우기
        guard self.contents.text?.isEmpty == false else {
            
            let alert = UIAlertController(title: nil, message: "내용을 입력해 주세요.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let data = MemoData()
        data.title = self.subject // 제목
        data.contents = self.contents.text // 내용
        data.image = self.preview.image // 이미지
        data.redate = Date() // 시간
        
        // AppDelegate 객체를 읽어와 MemoList 에 해당 데이터를 저장한다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.memoList.append(data)
        
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    
    // 카메라 버튼을 클릭했을 때 호출되는 메서드
    @IBAction func pick(_ sender: Any) {

        // 인스턴스 생성
        let picker = UIImagePickerController()
        
        // UIImagePickerControllerDelegate Protocol
        picker.delegate = self
        picker.allowsEditing = true
        
        // 이미지 피커 화면을 표시한다.
        self.present(picker, animated: false)
        
    }
    
    // 이미지가 선택되었을 때 처리하는 Delegate Method
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        self.preview.image = info[.editedImage] as? UIImage
        
        picker.dismiss(animated: false, completion: nil)
        
    }
    
    // 사용자가 텍스트 뷰에 뭔가를 입력하면 자동으로 이 Method 가 호출된다.
    func textViewDidChange(_ textView: UITextView) {
        
        // 내용의 최대 15자리까지 읽어 subject 변수에 저장한다.
        // NSString : String 과 완전 호환이 되기 때문에 일부를 추출할 경우 NSString으로 캐스팅하여 사용
        let contents = textView.text as NSString
        let length = ( (contents.length > 15) ? 15 : contents.length )
        
        self.subject = contents.substring(with: NSRange(location: 0, length: length))
        self.navigationItem.title = self.subject
        
    }
    
}
