
//１５〜７１　基本部品
//７７〜２３６　基本部品の貼り付け
//２３８〜２５６　各ボタンを押された際の処理（主に画面遷移）
//２５７〜３３９　ログアウト、退会の処理



import UIKit
import Firebase
import SVProgressHUD

class otherViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    //基本部品
    let scrollView = UIScrollView()
    let label1 = UILabel()
    let view1 = UIView()
    let view2 = UIView()
    let image1 = UIImage(named: "other1")
    let image2 = UIImage(named: "other2")
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    let label2 = UILabel()
    let label3 = UILabel()
    let switch1 = UISwitch()
    let switch2 = UISwitch()
    
    let label4 = UILabel()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    
    let label5 = UILabel()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    
    let lineView1 = UIView()
    let lineView2 = UIView()
    let lineView3 = UIView()
    let lineView4 = UIView()
    let lineView5 = UIView()
    let lineView6 = UIView()
    let lineView7 = UIView()
    let lineView8 = UIView()
    let lineView9 = UIView()
    let lineView10 = UIView()
    let lineView11 = UIView()
    let lineView12 = UIView()
    
    let logOutView1 = UIView()
    let logOutView2 = UIView()
    let logOutText = UILabel()
    let logOutLine1 = UIView()
    let logOutLine2 = UIView()
    let logOutButton1 = UIButton()
    let logOutButton2 = UIButton()
    
    let taikaiView1 = UIView()
    let taikaiView2 = UIView()
    let taikaiText = UILabel()
    let taikaiLine1 = UIView()
    let taikaiLine2 = UIView()
    let taikaiButton1 = UIButton()
    let taikaiButton2 = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "その他"
        self.view.backgroundColor = .systemGray6
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(scrollView)
        
        label1.frame = CGRect(x: 5, y: 30, width: width - 10, height: 20)
        label1.text = "通知設定"
        label1.font = UIFont.systemFont(ofSize: 14)
        scrollView.addSubview(label1)
        
        view1.frame = CGRect(x: 0, y: 50, width: width, height: 40)
        view1.backgroundColor = .white
        scrollView.addSubview(view1)
        
        imageView1.frame = CGRect(x: 5, y: 60, width: 25, height: 25)
        imageView1.image = image1
        scrollView.addSubview(imageView1)
        
        label2.frame = CGRect(x: 40, y:60, width: width / 2, height: 20)
        label2.text = "クーポン通知"
        label2.font = UIFont.systemFont(ofSize: 12)
        scrollView.addSubview(label2)
        
        switch1.frame = CGRect(x: width - width / 7, y: 55, width: 30, height: 20)
        scrollView.addSubview(switch1)
        
        lineView1.frame = CGRect(x: 0, y: 50, width: width, height: 1)
        lineView1.backgroundColor = .systemGray4
        scrollView.addSubview(lineView1)
        
        view2.frame = CGRect(x: 0, y: 90, width: width, height: 40)
        view2.backgroundColor = .white
        scrollView.addSubview(view2)
        
        imageView2.frame = CGRect(x: 5, y: 95, width: 25, height: 25)
        imageView2.image = image2
        scrollView.addSubview(imageView2)
        
        label3.frame = CGRect(x: 40, y: 100, width: width / 2, height: 20)
        label3.text = "新着情報"
        label3.font = UIFont.systemFont(ofSize: 12)
        scrollView.addSubview(label3)
        
        switch2.frame = CGRect(x: width - width / 7, y: 95, width: 30, height: 20)
        scrollView.addSubview(switch2)
        
        
        lineView2.frame = CGRect(x: 0, y: 90, width: width, height: 1)
        lineView2.backgroundColor = .systemGray4
        scrollView.addSubview(lineView2)
        
        lineView3.frame = CGRect(x: 0, y: 130, width: width, height: 1)
        lineView3.backgroundColor = .systemGray4
        scrollView.addSubview(lineView3)
        
        
        label4.frame = CGRect(x: 5, y: 150, width: width - 10, height: 20)
        label4.text = "ユーザー設定"
        label4.font = UIFont.systemFont(ofSize: 14)
        scrollView.addSubview(label4)
        
        button1.frame = CGRect(x: 0, y: 180, width: width, height: 40)
        button1.setTitle("サブスクリプション", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.titleLabel?.textAlignment = NSTextAlignment.left
        button1.backgroundColor = .white
        button1.addTarget(self, action: #selector(button1tap), for: .touchUpInside)
        scrollView.addSubview(button1)
        
        lineView4.frame = CGRect(x: 0, y: 180, width: width, height: 1)
        lineView4.backgroundColor = .systemGray4
        scrollView.addSubview(lineView4)
        
        button2.frame = CGRect(x: 0, y: 220, width: width, height: 40)
        button2.setTitle("登録メールアドレス", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.titleLabel?.textAlignment = NSTextAlignment.left
        button2.backgroundColor = .white
        button2.addTarget(self, action: #selector(button2tap), for: .touchUpInside)
        scrollView.addSubview(button2)
        
        lineView5.frame = CGRect(x: 0, y: 220, width: width, height: 1)
        lineView5.backgroundColor = .systemGray4
        scrollView.addSubview(lineView5)
        
        button3.frame = CGRect(x: 0, y: 260, width: width, height: 40)
        button3.setTitle("パスワード", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .white
        button3.titleLabel?.textAlignment = NSTextAlignment.left
        button3.addTarget(self, action: #selector(button3tap), for: .touchUpInside)
        scrollView.addSubview(button3)
        
        lineView6.frame = CGRect(x: 0, y: 260, width: width, height: 1)
        lineView6.backgroundColor = .systemGray4
        scrollView.addSubview(lineView6)
        
        lineView7.frame = CGRect(x: 0, y: 300, width: width, height: 1)
        lineView7.backgroundColor = .systemGray4
        scrollView.addSubview(lineView7)
        
        label5.frame = CGRect(x: 5, y: 330, width: width - 10, height: 20)
        label5.text = "各種情報"
        label5.font = UIFont.systemFont(ofSize: 14)
        scrollView.addSubview(label5)
        
        button4.frame = CGRect(x: 0, y: 360, width: width, height: 40)
        button4.setTitle("ご利用規約", for: .normal)
        button4.setTitleColor(.black, for: .normal)
        button4.titleLabel?.textAlignment = NSTextAlignment.left
        button4.backgroundColor = .white
        button4.addTarget(self, action: #selector(button4tap), for: .touchUpInside)
        scrollView.addSubview(button4)
        
        lineView8.frame = CGRect(x: 0, y: 360, width: width, height: 1)
        lineView8.backgroundColor = .systemGray4
        scrollView.addSubview(lineView8)
        
        button5.frame = CGRect(x: 0, y: 400, width: width, height: 40)
        button5.setTitle("現在のバージョン", for: .normal)
        button5.setTitleColor(.black, for: .normal)
        button5.titleLabel?.textAlignment = NSTextAlignment.left
        button5.backgroundColor = .white
        button5.addTarget(self, action: #selector(button5tap), for: .touchUpInside)
        scrollView.addSubview(button5)
        
        lineView9.frame = CGRect(x: 0, y: 400, width: width, height: 1)
        lineView9.backgroundColor = .systemGray4
        scrollView.addSubview(lineView9)
        
        button6.frame = CGRect(x: 0, y: 440, width: width, height: 40)
        button6.setTitle("ログアウト", for: .normal)
        button6.setTitleColor(.red, for: .normal)
        button6.titleLabel?.textAlignment = NSTextAlignment.left
        button6.backgroundColor = .white
        button6.addTarget(self, action: #selector(button6tap), for: .touchUpInside)
        scrollView.addSubview(button6)
        
        lineView10.frame = CGRect(x: 0, y: 440, width: width, height: 1)
        lineView10.backgroundColor = .systemGray4
        scrollView.addSubview(lineView10)
        
        button7.frame = CGRect(x: 0, y: 480, width: width, height: 40)
        button7.setTitle("退会", for: .normal)
        button7.setTitleColor(.red, for: .normal)
        button7.titleLabel?.textAlignment = NSTextAlignment.left
        button7.backgroundColor = .white
        button7.addTarget(self, action: #selector(button7tap), for: .touchUpInside)
        scrollView.addSubview(button7)
        
        lineView11.frame = CGRect(x: 0, y: 480, width: width, height: 1)
        lineView11.backgroundColor = .systemGray4
        scrollView.addSubview(lineView11)
        
        lineView12.frame = CGRect(x: 0, y: 520, width: width, height: 1)
        lineView12.backgroundColor = .systemGray4
        scrollView.addSubview(lineView12)
        
        scrollView.contentSize = CGSize(width: 0, height: button7.layer.position.y + button7.frame.height + 40)
    }
    @objc func button1tap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "other2") as! other2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button2tap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "other3") as! other3ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button3tap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "other4") as! other4ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button4tap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "other5") as! other5ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button5tap(){
        return
    }
    @objc func button6tap(){
        logOutView1.frame = CGRect(x: 0, y: 0, width: width, height: height)
        logOutView1.backgroundColor = sideBar.color
        self.view.addSubview(logOutView1)
        
        logOutView2.frame = CGRect(x: 40, y: height / 2 - 30, width: width - 80, height: 60)
        logOutView2.layer.cornerRadius = 10
        logOutView2.backgroundColor = .white
        logOutView1.addSubview(logOutView2)
        
        logOutText.frame = CGRect(x: 0, y: 10, width: logOutView2.frame.width, height: 20)
        logOutText.text = "ログアウトしますか？"
        logOutText.textAlignment = NSTextAlignment.center
        logOutText.font = UIFont.systemFont(ofSize: 12)
        logOutView2.addSubview(logOutText)
        
        logOutButton1.frame = CGRect(x: 0, y: 30, width: logOutView2.frame.width / 2, height: 30)
        logOutButton1.setTitle("はい", for: .normal)
        logOutButton1.setTitleColor(.blue, for: .normal)
        logOutButton1.addTarget(self, action: #selector(logOutButton1Tap), for: .touchUpInside)
        logOutView2.addSubview(logOutButton1)
        
        logOutButton2.frame = CGRect(x: logOutView2.frame.width / 2, y: 30, width: logOutView2.frame.width / 2, height: 30)
        logOutButton2.setTitle("いいえ", for: .normal)
        logOutButton2.setTitleColor(.blue, for: .normal)
        logOutButton2.addTarget(self, action: #selector(logOutButton2Tap), for: .touchUpInside)
        logOutView2.addSubview(logOutButton2)
        
    }
    @objc func button7tap(){
        
        taikaiView1.frame = CGRect(x: 0, y: 0, width: width, height: height)
        taikaiView1.backgroundColor = sideBar.color
        self.view.addSubview(taikaiView1)
        
        taikaiView2.frame = CGRect(x: 40, y: height / 2 - 30, width: width - 80, height: 60)
        taikaiView2.layer.cornerRadius = 10
        taikaiView2.backgroundColor = .white
        taikaiView1.addSubview(taikaiView2)
        
        taikaiText.frame = CGRect(x: 0, y: 10, width: taikaiView2.frame.width, height: 20)
        taikaiText.text = "退会しますか？"
        taikaiText.textAlignment = NSTextAlignment.center
        taikaiText.font = UIFont.systemFont(ofSize: 12)
        taikaiView2.addSubview(taikaiText)
        
        taikaiButton1.frame = CGRect(x: 0, y: 30, width: taikaiView2.frame.width / 2, height: 30)
        taikaiButton1.setTitle("はい", for: .normal)
        taikaiButton1.setTitleColor(.blue, for: .normal)
        taikaiButton1.addTarget(self, action: #selector(taikaiButton1Tap), for: .touchUpInside)
        taikaiView2.addSubview(taikaiButton1)
        
        taikaiButton2.frame = CGRect(x: taikaiView2.frame.width / 2, y: 30, width: logOutView2.frame.width / 2, height: 30)
        taikaiButton2.setTitle("いいえ", for: .normal)
        taikaiButton2.setTitleColor(.blue, for: .normal)
        taikaiButton2.addTarget(self, action: #selector(taikaiButton2Tap), for: .touchUpInside)
        taikaiView2.addSubview(taikaiButton2)
    }
    @objc func logOutButton1Tap(){
        try! Auth.auth().signOut()
        SVProgressHUD.showSuccess(withStatus: "ログアウトしました。")
        navigationController?.popViewController(animated: true)
    }
    @objc func logOutButton2Tap(){
        logOutView1.removeFromSuperview()
    }
    @objc func taikaiButton1Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").delete()
        let user = Auth.auth().currentUser
        user?.delete { error in
          if let error = error {
            SVProgressHUD.showSuccess(withStatus: "退会に失敗しました。")
          } else {
            SVProgressHUD.showSuccess(withStatus: "退会しました。")
          }
        }
        navigationController?.popViewController(animated: true)
    }
    @objc func taikaiButton2Tap(){
        taikaiView1.removeFromSuperview()
    }
}
