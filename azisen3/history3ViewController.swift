


//history2ViewControllerから送られてきた情報を確認する画面
//１５〜４８　基本部品
//５３〜１８１　基本部品の配置
//１８７〜２１８　Firebaseに保存する処理

import UIKit
import Firebase
import SVProgressHUD

class history3ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let scrollView = UIScrollView()
    
    let imageView = UIImageView()

    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let label8 = UILabel()
    let label9 = UILabel()
    let label10 = UILabel()
    let label11 = UILabel()
    let label12 = UILabel()
    let label13 = UILabel()
    
    var sendText1: String?
    var sendText2: String?
    var sendText3: String?
    var sendText4: String?
    var sendText5: String?
    var sendStarNumber: Int?
    var sendImage: UIImage?
    
    let lineView1 = UIView()
    let lineView2 = UIView()
    
    let syuseiButton = UIButton()
    let tourokuButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(scrollView)
        
        imageView.image = sendImage!
        imageView.frame = CGRect(x: 10, y: 10, width: width - 20, height: width - 20)
        scrollView.addSubview(imageView)
        
        label1.frame = CGRect(x: 5, y: width, width: 30, height: 15)
        label1.text = "日付"
        label1.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label1)
        
        label2.frame = CGRect(x: 40, y: width, width: width - 60, height: 15)
        label2.text = sendText1
        label2.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label2)
        
        label3.frame = CGRect(x: 5, y: width + 20, width: 30, height: 15)
        label3.text = "評価"
        label3.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label3)
        
        label4.frame = CGRect(x: 50, y: width + 20, width: 15, height: 15)
        label4.text = "★"
        label4.font = UIFont.systemFont(ofSize: 13)
        scrollView.addSubview(label4)
        
        label5.frame = CGRect(x: 65, y: width + 20, width: 15, height: 15)
        label5.text = "★"
        label5.font = UIFont.systemFont(ofSize: 13)
        scrollView.addSubview(label5)
        
        label6.frame = CGRect(x: 80, y: width + 20, width: 15, height: 15)
        label6.text = "★"
        label6.font = UIFont.systemFont(ofSize: 13)
        scrollView.addSubview(label6)
        
        label7.frame = CGRect(x: 95, y: width + 20, width: 15, height: 15)
        label7.text = "★"
        label7.font = UIFont.systemFont(ofSize: 13)
        scrollView.addSubview(label7)
        
        label8.frame = CGRect(x: 110, y: width + 20, width: 15, height: 15)
        label8.text = "★"
        label8.font = UIFont.systemFont(ofSize: 13)
        scrollView.addSubview(label8)
        
        if sendStarNumber == 1{
            label4.textColor = .yellow
            label5.textColor = .white
            label6.textColor = .white
            label7.textColor = .white
            label8.textColor = .white
        }else if sendStarNumber == 2{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .white
            label7.textColor = .white
            label8.textColor = .white
        }else if sendStarNumber == 3{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .white
            label8.textColor = .white
        }else if sendStarNumber == 4{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .yellow
            label8.textColor = .white
        }else if sendStarNumber == 5{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .yellow
            label8.textColor = .yellow
        }
        
        lineView1.frame = CGRect(x: 5, y: width + 40, width: width - 10, height: 1)
        lineView1.backgroundColor = .black
        scrollView.addSubview(lineView1)
        
        label9.frame = CGRect(x: 5, y: width + 50, width: width - 10, height: 15)
        label9.text = sendText2
        label9.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label9)
        
        label10.frame = CGRect(x: 5, y: width + 70, width: width - 10, height: 15)
        label10.text = sendText3
        label10.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label10)
        
        label11.frame = CGRect(x: 5, y: width + 90, width: width - 10, height: 15)
        label11.text = sendText4
        label11.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label11)
        
        lineView2.frame = CGRect(x: 5, y: width + 110, width: width - 10, height: 1)
        lineView2.backgroundColor = .black
        scrollView.addSubview(lineView2)
        
        label12.frame = CGRect(x: 5, y: width + 130, width: width - 10, height: 15)
        label12.text = "メモ"
        label12.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label12)
        
        label13.frame = CGRect(x: 5, y: width + 150, width: width - 10, height: 15)
        label13.text = sendText5
        label13.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label13)
        
        syuseiButton.frame = CGRect(x: 5, y: width + 170, width: width - 10, height: 30)
        syuseiButton.backgroundColor = .black
        syuseiButton.setTitle("修正する", for: .normal)
        syuseiButton.setTitleColor(.white, for: .normal)
        syuseiButton.addTarget(self, action: #selector(syuseiButtonTap), for: .touchUpInside)
        syuseiButton.titleLabel?.textAlignment = NSTextAlignment.center
        scrollView.addSubview(syuseiButton)
        
        tourokuButton.frame = CGRect(x: 5, y: width + 210, width: width - 10, height: 30)
        tourokuButton.backgroundColor = .red
        tourokuButton.setTitle("登録する", for: .normal)
        tourokuButton.setTitleColor(.white, for: .normal)
        tourokuButton.addTarget(self, action: #selector(tourokuButtonTap), for: .touchUpInside)
        tourokuButton.titleLabel?.textAlignment = NSTextAlignment.center
        scrollView.addSubview(tourokuButton)
        
        scrollView.contentSize = CGSize(width: 0, height: tourokuButton.layer.position.y + tourokuButton.frame.height + 30)
    }
    @objc func syuseiButtonTap(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc func tourokuButtonTap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            //126は元々Firebaseに保存されている要素のこと
            let dateNumber = data.count - 126
            //名前は、Object0,Object1,Object2のように連ねていく
            let date: [String: Any] = [
                                "Object\(dateNumber)": [
                                    "historySendText1":self.sendText1!,
                                    "historySendText2":self.sendText2!,
                                    "historySendText3":self.sendText3!,
                                    "historySendText4":self.sendText4!,
                                    "historySendText5":self.sendText5!,
                                    "historySendNumber":self.sendStarNumber!
                                ]
                            ]
            
            Firestore.firestore().collection("data").document("\(String(describing:userID))!").updateData(date)
            
        }
        
        SVProgressHUD.showSuccess(withStatus: "登録に成功しました。")
        let index = navigationController!.viewControllers.count - 3
        navigationController?.popToViewController(navigationController!.viewControllers[index], animated: true)
    }
}
