
//other3ViewControllerと作りは同じ

import UIKit
import Firebase
import SVProgressHUD

class other4ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    let textField1 = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.frame = CGRect(x: 10, y: 30, width: width - 20, height: 30)
        textField1.placeholder = "現在のパスワード"
        textField1.backgroundColor = .systemGray4
        self.view.addSubview(textField1)
        
        textField2.frame = CGRect(x: 10, y: 80, width: width - 20, height: 30)
        textField2.placeholder = "変更後のパスワード(半角英数 6〜20文字)"
        textField2.backgroundColor = .systemGray4
        self.view.addSubview(textField2)
        
        textField3.frame = CGRect(x: 10, y: 130, width: width - 20, height: 30)
        textField3.placeholder = "確認の為もう一度(半角英数 6〜20文字)"
        textField3.backgroundColor = .systemGray4
        self.view.addSubview(textField3)
        
        button.frame = CGRect(x: 20, y: 180, width: width - 40, height: 40)
        button.backgroundColor = .red
        button.setTitle("変更", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    @objc func buttonTap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                return
            }
            let passward = data["passward"]! as! String
            
            if self.textField1.text == passward && self.textField2.text == self.textField3.text{
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["passward":String(self.textField2.text!)],merge: true)
                Auth.auth().currentUser?.updatePassword(to: self.textField2.text!)
                SVProgressHUD.showSuccess(withStatus: "パスワードを変更しました。")
                self.navigationController?.popViewController(animated: true)
            }else{
                SVProgressHUD.showError(withStatus: "確認できませんでした。")
            }
            
        }
        
    }

    

}
