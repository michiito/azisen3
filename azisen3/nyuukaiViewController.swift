

//１９〜３２　基本部品
//３５〜１２３　基本部品の配置
//１２７〜３０８　ユーザー作成の処理



import UIKit
import Firebase
import SVProgressHUD

class nyuukaiViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate{
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    let scrollView = UIScrollView()
    let mlabel1 = UILabel()
    let mlabel2 = UILabel()
    let mback = UIButton()
    let textField1 = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    let textField4 = UITextField()
    let textField5 = UITextField()
    let textField6 = UITextField()
    let textField7 = UITextField()
    let textField8 = UITextField()
    let textField9 = UITextField()
    let textField10 = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray5
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: 1200)
        scrollView.contentSize = CGSize(width: width, height: 1550)
        self.view.addSubview(scrollView)
        
        mlabel1.frame = CGRect(x: 0, y: height - (height - 40), width: width, height: 20)
        mlabel1.textAlignment = NSTextAlignment.center
        mlabel1.text = "新規登録"
        scrollView.addSubview(mlabel1)
        
        mback.frame = CGRect(x: width - 40, y: height - (height - 40), width: 25, height: 25)
        mback.backgroundColor = .white
        mback.layer.cornerRadius = mback.frame.width / 2
        mback.setTitle("×", for: .normal)
        mback.setTitleColor(.systemGray3, for: .normal)
        mback.addTarget(self, action: #selector(backEvent1), for: .touchUpInside)
        scrollView.addSubview(mback)
        
        textField1.frame = CGRect(x: 10, y: height - (height - 40) + 30, width: width - 20, height: 30)
        textField1.backgroundColor = .white
        textField1.placeholder = "メールアドレス"
        textField1.delegate = self
        scrollView.addSubview(textField1)
        
        textField2.frame = CGRect(x: 10, y: height - (height - 40) + 90, width: width -  20, height: 30)
        textField2.placeholder = "パスワード"
        textField2.backgroundColor = .white
        textField2.delegate = self
        scrollView.addSubview(textField2)
        
        textField3.frame = CGRect(x: 10, y: height - (height - 40) + 150, width: width - 20, height: 30)
        textField3.backgroundColor = .white
        textField3.placeholder = "パスワード(確認)"
        scrollView.addSubview(textField3)
        
        textField4.frame = CGRect(x: 10, y: height - (height - 40) + 210, width: width - 20, height: 30)
        textField4.placeholder = "ニックネーム"
        textField4.backgroundColor = .white
        textField4.delegate = self
        scrollView.addSubview(textField4)
        
        textField5.frame = CGRect(x: 10, y: height - (height - 40) + 270, width: width - 20, height: 30)
        textField5.placeholder = "利用店舗"
        textField5.backgroundColor = .white
        textField5.delegate = self
        scrollView.addSubview(textField5)
        
        textField6.frame = CGRect(x: 10, y: height - (height - 40) + 330, width: width - 20, height: 30)
        textField6.placeholder = "紹介コード"
        textField6.backgroundColor = .white
        textField6.delegate = self
        scrollView.addSubview(textField6)
        
        mlabel2.frame = CGRect(x: 10, y: height - (height - 40) + 390, width: width - 20, height: 30)
        mlabel2.text = "プロフィール"
        scrollView.addSubview(mlabel2)
        
        textField7.frame = CGRect(x: 10, y: height - (height - 40) + 450, width: width - 20, height: 30)
        textField7.placeholder = "誕生日"
        textField7.backgroundColor = .white
        textField7.delegate = self
        scrollView.addSubview(textField7)
        
        textField8.frame = CGRect(x: 10, y: height - (height - 40) + 510, width: width - 20, height: 30)
        textField8.placeholder = "性別"
        textField8.backgroundColor = .white
        textField8.delegate = self
        scrollView.addSubview(textField8)
        
        textField9.frame = CGRect(x: 10, y: height - (height - 40) + 570, width: width - 20, height: 30)
        textField9.placeholder = "年代"
        textField9.backgroundColor = .white
        textField9.delegate = self
        scrollView.addSubview(textField9)
        
        textField10.frame = CGRect(x: 10, y: height - (height - 40) + 630, width: width - 20, height: 30)
        textField10.backgroundColor = .red
        textField10.setTitle("登録", for: .normal)
        textField10.layer.cornerRadius = 15
        textField10.addTarget(self, action: #selector(touroku), for: .touchUpInside)
        textField10.setTitleColor(.white, for: .normal)
        scrollView.addSubview(textField10)
        
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        scrollView.addGestureRecognizer(tapGR)
        
    }
    @objc func touroku(){
        //全てのテキストフィールドのテキストを取得
        if let mtext1 = textField1.text, let mtext2 = textField2.text, let mtext3 = textField3.text, let mtext4 = textField4.text, let mtext6 = textField6.text{
            //紹介コード以外のものが空だったらreturn
            if mtext1.isEmpty || mtext2.isEmpty || mtext3.isEmpty || mtext4.isEmpty || mtext6.isEmpty{
                SVProgressHUD.showError(withStatus: "必要項目を入力して下さい")
                return
            }
            //パスワードが確認用パスワードと違ったらreturn
            if textField2.text != textField3.text{
                SVProgressHUD.showError(withStatus: "確認用パスワードが違います。")
                return
            }
            
            
            SVProgressHUD.show()
            //ユーザー作成
            Auth.auth().createUser(withEmail: mtext1, password: mtext2){authResult, error in
                if let error = error {
                    print("DEBUG_PRINT: " + error.localizedDescription)
                    SVProgressHUD.showError(withStatus: "サインインに失敗しました。")
                    return
                }
                
                let user = Auth.auth().currentUser
                if let user = user {
                let changeRequest = user.createProfileChangeRequest()
                changeRequest.displayName = mtext6
                changeRequest.commitChanges { error in
                    if let error = error {
                        // プロフィールの更新でエラーが発生
                        print("DEBUG_PRINT: " + error.localizedDescription)
                        SVProgressHUD.showError(withStatus: "表示名の設定に失敗しました。")
                        return
                    }

                    SVProgressHUD.showSuccess(withStatus: "ユーザー作成に成功しました。")
                    //ユーザーの基本情報
                    let userID = Auth.auth().currentUser?.uid
                    //textFieldnの保存場所
                    let dataRef = Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!")
                    //紹介コードが合っていればクーポン取得
                    var a = 1
                    if self.textField6.text == "111111"{
                        a = 2
                    }
                    //ユーザー作成する際の基本情報
                    let dataDic = [
                        "mailAdress": self.textField1.text!,
                        "passward": self.textField2.text!,
                        "nicName": self.textField4.text!,
                        "shop": self.textField5.text!,
                        "code": self.textField6.text!,
                        "birthday": self.textField7.text!,
                        "sex": self.textField8.text!,
                        "generation": self.textField9.text!,
                        "buyNumber1":Int(0),
                        "buyNumber2":Int(0),
                        "buyNumber3":Int(0),
                        "buyNumber4":Int(0),
                        "buyNumber5":Int(0),
                        "buyNumber6":Int(0),
                        "buyNumber7":Int(0),
                        "buyNumber8":Int(0),
                        "buyNumber9":Int(0),
                        "buyNumber10":Int(0),
                        "buyNumber11":Int(0),
                        "buyNumber12":Int(0),
                        "buyNumber13":Int(0),
                        "buyNumber14":Int(0),
                        "buyNumber15":Int(0),
                        "buyNumber16":Int(0),
                        "buyNumber17":Int(0),
                        "buyNumber18":Int(0),
                        "buyNumber19":Int(0),
                        "buyNumber20":Int(0),
                        "buyNumber21":Int(0),
                        "buyNumber22":Int(0),
                        "buyNumber23":Int(0),
                        "buyNumber24":Int(0),
                        "buyNumber25":Int(0),
                        "buyNumber26":Int(0),
                        "buyNumber27":Int(0),
                        "buyNumber28":Int(0),
                        "menuNumber1": Int(0),
                        "menuNumber2": Int(0),
                        "menuNumber3": Int(0),
                        "menuNumber4": Int(0),
                        "menuNumber5": Int(0),
                        "menuNumber6": Int(0),
                        "menuNumber7": Int(0),
                        "menuNumber8": Int(0),
                        "menuNumber9": Int(0),
                        "menuNumber10": Int(0),
                        "menuNumber11": Int(0),
                        "menuNumber12": Int(0),
                        "menuNumber13": Int(0),
                        "menuNumber14": Int(0),
                        "menuNumber15": Int(0),
                        "menuNumber16": Int(0),
                        "menuNumber17": Int(0),
                        "menuNumber18": Int(0),
                        "menuNumber19": Int(0),
                        "menuNumber20": Int(0),
                        "menuNumber21": Int(0),
                        "menuNumber22": Int(0),
                        "menuNumber23": Int(0),
                        "menuNumber24": Int(0),
                        "menuNumber25": Int(0),
                        "menuNumber26": Int(0),
                        "menuNumber27": Int(0),
                        "menuNumber28": Int(0),
                        "menuNumber29": Int(0),
                        "menuNumber30": Int(0),
                        "menuNumber31": Int(0),
                        "menuNumber32": Int(0),
                        "menuNumber33": Int(0),
                        "menuNumber34": Int(0),
                        "menuNumber35": Int(0),
                        "menuNumber36": Int(0),
                        "menuNumber37": Int(0),
                        "menuNumber38": Int(0),
                        "menuNumber39": Int(0),
                        "menuNumber40": Int(0),
                        "menuNumber41": Int(0),
                        "menuNumber42": Int(0),
                        "menuNumber43": Int(0),
                        "menuNumber44": Int(0),
                        "menuNumber45": Int(0),
                        "menuNumber46": Int(0),
                        "menuNumber47": Int(0),
                        "menuNumber48": Int(0),
                        "menuNumber49": Int(0),
                        "menuNumber50": Int(0),
                        "menuNumber51": Int(0),
                        "menuNumber52": Int(0),
                        "menuNumber53": Int(0),
                        "menuNumber54": Int(0),
                        "menuNumber55": Int(0),
                        "menuNumber56": Int(0),
                        "menuNumber57": Int(0),
                        "menuNumber58": Int(0),
                        "menuNumber59": Int(0),
                        "menuNumber60": Int(0),
                        "menuNumber61": Int(0),
                        "menuNumber62": Int(0),
                        "menuNumber63": Int(0),
                        "menuNumber64": Int(0),
                        "menuNumber65": Int(0),
                        "menuNumber66": Int(0),
                        "menuNumber67": Int(0),
                        "menuNumber68": Int(0),
                        "menuNumber69": Int(0),
                        "stumpNumber": Int(0),
                        "cuponNumber1": Int(a),
                        "cuponNumber2": Int(1),
                        "oomoriCupon": Int(0),
                        "gyozaCupon": Int(0),
                        "historyArray": ["a"],
                        "stumpDay1": String(""),
                        "stumpDay2": String(""),
                        "stumpDay3": String(""),
                        "stumpDay4": String(""),
                        "stumpDay5": String(""),
                        "stumpDay6": String(""),
                        "stumpDay7": String(""),
                        "stumpDay8": String(""),
                        "stumpDay9": String(""),
                        "stumpDay10": String(""),
                        "stumpDay11": String(""),
                        "stumpDay12": String(""),
                        "stumpDay13": String(""),
                        "stumpDay14": String(""),
                        "stumpDay15": String("")
                    ] as [String : Any]
                    
                    dataRef.setData(dataDic)
                    self.navigationController?.popViewController(animated: false)
            }
          }
        }
      }
    }
    @objc func backEvent1(){
        self.navigationController?.popViewController(animated: false)
    }
    @objc func dismissKeyboard() {
            self.view.endEditing(true)
        }
}
