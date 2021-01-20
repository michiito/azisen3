
//メールアドレス変更画面
//１４〜２４　基本部品
//２９〜６４　基本部品の配置
//６７〜７８　変更ボタンを押した際の処理


import UIKit
import Firebase
import SVProgressHUD

class other3ViewController: UIViewController {

    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    
    
    let label1 = UILabel()
    let label2 = UILabel()
    
    let textField1 = UITextField()
    let textField2 = UITextField()
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "メールアドレス変更"
        
        label1.frame = CGRect(x: 5, y: 20, width: width - 10, height: 20)
        label1.text = "ご登録のメールアドレス"
        label1.font = UIFont.systemFont(ofSize: 13)
        self.view.addSubview(label1)
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                return
            }
            self.label2.frame = CGRect(x: 5, y: 45, width: self.width - 10, height: 20)
            self.label2.text = data["mailAdress"]! as? String
            self.label2.font = UIFont.systemFont(ofSize: 12)
            self.view.addSubview(self.label2)
        }
        textField1.frame = CGRect(x: 5, y: 80, width: width - 10, height: 30)
        textField1.placeholder = "変更するメールアドレス"
        textField1.backgroundColor = .systemGray4
        self.view.addSubview(textField1)
        
        textField2.frame = CGRect(x: 5, y: 120, width: width - 10, height: 30)
        textField2.placeholder = "変更するメールアドレス(確認用)"
        textField2.backgroundColor = .systemGray4
        self.view.addSubview(textField2)
        
        button.frame = CGRect(x: 20, y: 170, width: width - 40, height: 30)
        button.backgroundColor = .red
        button.setTitle("変更", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    @objc func buttonTap(){
        let userID = Auth.auth().currentUser?.uid
        if textField1.text == textField2.text{
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["mailAdress":String(textField1.text!)],merge: true)
            Auth.auth().currentUser?.updateEmail(to: textField1.text!)
            SVProgressHUD.showSuccess(withStatus: "メールアドレスを変更しました。")
            
            navigationController?.popViewController(animated: true)
        }else{
            SVProgressHUD.showError(withStatus: "確認できませんでした。")
        }
    }

}
