
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var gymImage: UIImageView!
    
    
    @IBAction func alert(_ sender: Any) {
        // 메시지 창 객체 생성
        let alert = UIAlertController(title: "선택",
                                      message: "06:00 시간에 예약하시겠습니까?",
                                      preferredStyle: .alert)
        
        //확인 버튼
        let ok = UIAlertAction(title:"확인", style:.default){(_) in
            self.result.text = "06:00 시간에 예약되었습니다! "
        }
        // 취소 버튼Ω
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        // let exec = UIAlertAction(title: "실행", style: .destructive) // 실행 버튼 (빨간색)
        // let stop = UIAlertAction(title: "중지", style: .default) // 중지 버튼
        
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(ok)
        alert.addAction(cancel)
        // alert.addAction(exec) alert.addAction(stop)
        
        // 메시지 창 실행
        self.present(alert, animated: false)
    }
    
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
