//
//  FirstViewController.swift
//  workout
//
//  Created by suding on 2021/02/19.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var reservationStatus: UITextField!
    
    @IBAction func moveReservation(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") else{
            return
        }
        // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        // 인자값으로 뷰 컨트롤러와 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userImage.layer.cornerRadius = userImage.frame.width/50
        userImage.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
