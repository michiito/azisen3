
//160〜189 上３つの固定ボタン
//199〜351 Firebaseを参照して、subNumber（buy4ViewControllerに送る数字）に代入。
//354〜381 FirebaseのbuyNumber(お気に入りにしていれば1が、何もしていなければ0が入ってる)を取得。
//385〜818 お気に入りアイテムがあるかの確認、あった場合の配置
//828〜892 お気に入りがあった際の配置を決める関数
//894〜1158 お気に入りアイテムボタンのアクション



import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD


class buy3ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    //FirebaseからbuyNumberの数字を代入する変数
    var buy1 = 0
    var buy2 = 0
    var buy3 = 0
    var buy4 = 0
    var buy5 = 0
    var buy6 = 0
    var buy7 = 0
    var buy8 = 0
    var buy9 = 0
    var buy10 = 0
    var buy11 = 0
    var buy12 = 0
    var buy13 = 0
    var buy14 = 0
    var buy15 = 0
    var buy16 = 0
    var buy17 = 0
    var buy18 = 0
    var buy19 = 0
    var buy20 = 0
    var buy21 = 0
    var buy22 = 0
    var buy23 = 0
    var buy24 = 0
    var buy25 = 0
    var buy26 = 0
    var buy27 = 0
    var buy28 = 0
    var buyArray:[Int] = []
    
    //buy4ViewControllerに送る変数
    var subNumber1: Int?
    var subNumber2: Int?
    var subNumber3: Int?
    var subNumber4: Int?
    var subNumber5: Int?
    var subNumber6: Int?
    var subNumber7: Int?
    var subNumber8: Int?
    var subNumber9: Int?
    var subNumber10: Int?
    var subNumber11: Int?
    var subNumber12: Int?
    var subNumber13: Int?
    var subNumber14: Int?
    var subNumber15: Int?
    var subNumber16: Int?
    var subNumber17: Int?
    var subNumber18: Int?
    var subNumber19: Int?
    var subNumber20: Int?
    var subNumber21: Int?
    var subNumber22: Int?
    var subNumber23: Int?
    var subNumber24: Int?
    var subNumber25: Int?
    var subNumber26: Int?
    var subNumber27: Int?
    var subNumber28: Int?
    
    //画面作成の部品
    let image = UIImage(systemName: "cart")
    let imageView1 = UIImageView()
    let label1 = UILabel()
    let scrollView = UIScrollView()
    let menuView = UIView()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let menuImageView = UIImageView()
    let menuImage = UIImage(named: "menu")
    let image1 = UIImage(named: "ok1")
    let image2 = UIImage(named: "ok2")
    let image3 = UIImage(named: "ok3")
    let image4 = UIImage(named: "ok4")
    let image5 = UIImage(named: "ok5")
    let image6 = UIImage(named: "ok6")
    let image7 = UIImage(named: "ok7")
    let image8 = UIImage(named: "ok8")
    let image9 = UIImage(named: "ok9")
    let image10 = UIImage(named: "ok10")
    let image11 = UIImage(named: "ok11")
    let image12 = UIImage(named: "ok12")
    let image13 = UIImage(named: "ok13")
    let image14 = UIImage(named: "ok14")
    let image15 = UIImage(named: "ok15")
    let image16 = UIImage(named: "ok16")
    let image17 = UIImage(named: "ok17")
    let image18 = UIImage(named: "ok18")
    let image19 = UIImage(named: "ok19")
    let image20 = UIImage(named: "ok20")
    let image21 = UIImage(named: "ok21")
    let image22 = UIImage(named: "ok22")
    let image23 = UIImage(named: "ok23")
    let image24 = UIImage(named: "ok24")
    let image25 = UIImage(named: "ok25")
    let image26 = UIImage(named: "ok25")
    let image27 = UIImage(named: "ok25")
    let image28 = UIImage(named: "ok25")
    
    //全てのボタンがお気に入りに登録されていると仮定して、２８個のボタンの定数
    let favoriteButton1 = UIButton()
    let favoriteButton2 = UIButton()
    let favoriteButton3 = UIButton()
    let favoriteButton4 = UIButton()
    let favoriteButton5 = UIButton()
    let favoriteButton6 = UIButton()
    let favoriteButton7 = UIButton()
    let favoriteButton8 = UIButton()
    let favoriteButton9 = UIButton()
    let favoriteButton10 = UIButton()
    let favoriteButton11 = UIButton()
    let favoriteButton12 = UIButton()
    let favoriteButton13 = UIButton()
    let favoriteButton14 = UIButton()
    let favoriteButton15 = UIButton()
    let favoriteButton16 = UIButton()
    let favoriteButton17 = UIButton()
    let favoriteButton18 = UIButton()
    let favoriteButton19 = UIButton()
    let favoriteButton20 = UIButton()
    let favoriteButton21 = UIButton()
    let favoriteButton22 = UIButton()
    let favoriteButton23 = UIButton()
    let favoriteButton24 = UIButton()
    let favoriteButton25 = UIButton()
    let favoriteButton26 = UIButton()
    let favoriteButton27 = UIButton()
    let favoriteButton28 = UIButton()
    
    //お気に入りボタンの配置を決めるための変数,830行のfavoriteFrame()で使われる
    var favoriteFremeCount = CGRect()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "お買い物"
        
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("アイテム", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 10
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button1.addTarget(self, action: #selector(tapEvent1), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button1)
        
        
        button2.frame = CGRect(x: menuView.frame.width / 3, y: 5, width: menuView.frame.width / 3, height: 30)
        button2.setTitle("おすすめアイテム", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.adjustsFontSizeToFitWidth = true
        button2.layer.cornerRadius = 10
        button2.addTarget(self, action: #selector(tapEvent2), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button2)
        
        
        button3.frame = CGRect(x: menuView.frame.width / 3 * 2, y: 5, width: menuView.frame.width / 3, height: 30)
        button3.setTitle("お気に入り", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.titleLabel?.adjustsFontSizeToFitWidth = true
        button3.layer.cornerRadius = 10
        button3.backgroundColor = .black
        button3.addTarget(self, action: #selector(tapEvent3), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button3)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.tabBarController?.selectedIndex = 1
        
        //最初に消す
        buyArray.removeAll()
        
        SVProgressHUD.show()
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            //buyNumberが0だったらsubNumberには11を、1だった場合は10を代入する
            //subNumberはbuy4ViewControllerに送る値
            if data["buyNumber1"]! as! Int == 1{
                self.subNumber1 = 10
            }else{
                self.subNumber1 = 11
            }
            if data["buyNumber2"]! as! Int == 1{
                self.subNumber2 = 10
            }else{
                self.subNumber2 = 11
            }
            if data["buyNumber3"]! as! Int == 1{
                self.subNumber3 = 10
            }else{
                self.subNumber3 = 11
            }
            if data["buyNumber4"]! as! Int == 1{
                self.subNumber4 = 10
            }else{
                self.subNumber4 = 11
            }
            if data["buyNumber5"]! as! Int == 1{
                self.subNumber5 = 10
            }else{
                self.subNumber5 = 11
            }
            if data["buyNumber6"]! as! Int == 1{
                self.subNumber6 = 10
            }else{
                self.subNumber6 = 11
            }
            if data["buyNumber7"]! as! Int == 1{
                self.subNumber7 = 10
            }else{
                self.subNumber7 = 11
            }
            if data["buyNumber8"]! as! Int == 1{
                self.subNumber8 = 10
            }else{
                self.subNumber8 = 11
            }
            if data["buyNumber9"]! as! Int == 1{
                self.subNumber9 = 10
            }else{
                self.subNumber9 = 11
            }
            if data["buyNumber10"]! as! Int == 1{
                self.subNumber10 = 10
            }else{
                self.subNumber10 = 11
            }
            if data["buyNumber11"]! as! Int == 1{
                self.subNumber11 = 10
            }else{
                self.subNumber11 = 11
            }
            if data["buyNumber12"]! as! Int == 1{
                self.subNumber12 = 10
            }else{
                self.subNumber12 = 11
            }
            if data["buyNumber13"]! as! Int == 1{
                self.subNumber13 = 10
            }else{
                self.subNumber13 = 11
            }
            if data["buyNumber14"]! as! Int == 1{
                self.subNumber14 = 10
            }else{
                self.subNumber14 = 11
            }
            if data["buyNumber15"]! as! Int == 1{
                self.subNumber15 = 10
            }else{
                self.subNumber15 = 11
            }
            if data["buyNumber16"]! as! Int == 1{
                self.subNumber16 = 10
            }else{
                self.subNumber17 = 11
            }
            if data["buyNumber17"]! as! Int == 1{
                self.subNumber17 = 10
            }else{
                self.subNumber17 = 11
            }
            if data["buyNumber18"]! as! Int == 1{
                self.subNumber18 = 10
            }else{
                self.subNumber18 = 11
            }
            if data["buyNumber19"]! as! Int == 1{
                self.subNumber19 = 10
            }else{
                self.subNumber19 = 11
            }
            if data["buyNumber20"]! as! Int == 1{
                self.subNumber20 = 10
            }else{
                self.subNumber20 = 11
            }
            if data["buyNumber21"]! as! Int == 1{
                self.subNumber21 = 10
            }else{
                self.subNumber21 = 11
            }
            if data["buyNumber22"]! as! Int == 1{
                self.subNumber22 = 10
            }else{
                self.subNumber22 = 11
            }
            if data["buyNumber23"]! as! Int == 1{
                self.subNumber23 = 10
            }else{
                self.subNumber23 = 11
            }
            if data["buyNumber24"]! as! Int == 1{
                self.subNumber24 = 10
            }else{
                self.subNumber24 = 11
            }
            if data["buyNumber25"]! as! Int == 1{
                self.subNumber25 = 10
            }else{
                self.subNumber25 = 11
            }
            if data["buyNumber26"]! as! Int == 1{
                self.subNumber26 = 10
            }else{
                self.subNumber26 = 11
            }
            if data["buyNumber27"]! as! Int == 1{
                self.subNumber27 = 10
            }else{
                self.subNumber27 = 11
            }
            if data["buyNumber28"]! as! Int == 1{
                self.subNumber28 = 10
            }else{
                self.subNumber28 = 10
            }
            
            //buy○にbuyNumberを代入
            self.buy1 = Int(data["buyNumber1"]as! Int)
            self.buy2 = Int(data["buyNumber2"] as! Int)
            self.buy3 = Int(data["buyNumber3"] as! Int)
            self.buy4 = Int(data["buyNumber4"] as! Int)
            self.buy5 = Int(data["buyNumber5"] as! Int)
            self.buy6 = Int(data["buyNumber6"] as! Int)
            self.buy7 = Int(data["buyNumber7"] as! Int)
            self.buy8 = Int(data["buyNumber8"] as! Int)
            self.buy9 = Int(data["buyNumber9"] as! Int)
            self.buy10 = Int(data["buyNumber10"] as! Int)
            self.buy11 = Int(data["buyNumber11"] as! Int)
            self.buy12 = Int(data["buyNumber12"] as! Int)
            self.buy13 = Int(data["buyNumber13"] as! Int)
            self.buy14 = Int(data["buyNumber14"] as! Int)
            self.buy15 = Int(data["buyNumber15"] as! Int)
            self.buy16 = Int(data["buyNumber16"] as! Int)
            self.buy17 = Int(data["buyNumber17"] as! Int)
            self.buy18 = Int(data["buyNumber18"] as! Int)
            self.buy19 = Int(data["buyNumber19"] as! Int)
            self.buy20 = Int(data["buyNumber20"] as! Int)
            self.buy21 = Int(data["buyNumber21"] as! Int)
            self.buy22 = Int(data["buyNumber22"] as! Int)
            self.buy23 = Int(data["buyNumber23"] as! Int)
            self.buy24 = Int(data["buyNumber24"] as! Int)
            self.buy25 = Int(data["buyNumber25"] as! Int)
            self.buy26 = Int(data["buyNumber26"] as! Int)
            self.buy27 = Int(data["buyNumber27"] as! Int)
            self.buy28 = Int(data["buyNumber28"] as! Int)
            
            //全てが0だった際はお気に入りアイテムがない状態
            if self.buy1 + self.buy2 + self.buy3 + self.buy4 + self.buy5 + self.buy6 + self.buy7 + self.buy8 + self.buy9 + self.buy10 + self.buy11 + self.buy12 + self.buy13 + self.buy14 + self.buy15 + self.buy16 + self.buy17 + self.buy18 + self.buy19 + self.buy20 + self.buy21 + self.buy22 + self.buy23 + self.buy24 + self.buy25 + self.buy26 + self.buy27 + self.buy28 == 0{
                
                self.imageView1.image = self.image
                self.imageView1.frame = CGRect(x: 0, y: 60, width: self.width, height: 200)
                self.imageView1.tintColor = .systemGray2
                self.view.addSubview(self.imageView1)
                
                self.label1.text = "アイテムはありません。"
                self.label1.textAlignment = NSTextAlignment.center
                self.label1.frame = CGRect(x: 0, y: 280, width: self.width, height: 20)
                self.view.addSubview(self.label1)
                
                
                
            }else{
                //どれか一つでもお気に入り登録があった場合
                
                self.scrollView.frame = CGRect(x: 0, y: 40, width: self.width, height: 2400)
                self.scrollView.contentSize = CGSize(width: self.scrollView.frame.width, height: 2880)
                self.view.addSubview(self.scrollView)
                
                self.menuImageView.frame = CGRect(x: 0, y: 0, width: self.width, height: 130)
                self.menuImageView.image = self.menuImage
                self.scrollView.addSubview(self.menuImageView)
                
                //ここでのbuy○は、355〜行目で取得した値
                //Firebaseに保存されているnuyNumberは0か1しかない
                if self.buy1 == 1{
                    //buyArrayに追加するのは配置する位置を決めるため
                    self.buyArray += [self.buy1]
                    self.favoriteButton1.frame = self.favoriteFrame()
                    self.favoriteButton1.setImage(self.image1, for: .normal)
                    self.favoriteButton1.titleLabel?.numberOfLines = 0
                    self.favoriteButton1.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton1.setTitle("味千とんこつ\nラ−メン　２…\n430円(税込み)", for: .normal)
                    self.favoriteButton1.setTitleColor(.black, for: .normal)
                    self.favoriteButton1.addTarget(self, action: #selector(self.tapEvents1), for: .touchUpInside)
                    self.favoriteButton1.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton1.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton1.frame.width - self.favoriteButton1.frame.width / 9), bottom: 10, right: 10)
                    
                    
                    self.scrollView.addSubview(self.favoriteButton1)
                }
                if self.buy2 == 1{
                    
                    self.buyArray += [self.buy2]
                    
                    self.favoriteButton2.frame = self.favoriteFrame()
                    self.favoriteButton2.setImage(self.image2, for: .normal)
                    self.favoriteButton2.titleLabel?.numberOfLines = 0
                    self.favoriteButton2.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton2.setTitle("[味千×桂花]\n桂花（３食）…\n2,754円（税込み）", for: .normal)
                    self.favoriteButton2.setTitleColor(.black, for: .normal)
                    self.favoriteButton2.addTarget(self, action: #selector(self.tapEvents2), for: .touchUpInside)
                    self.favoriteButton2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton2.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton2.frame.width - self.favoriteButton2.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton2)
                }
                if self.buy3 == 1{
                    self.buyArray += [self.buy3]
                    
                    self.favoriteButton3.frame = self.favoriteFrame()
                    self.favoriteButton3.setImage(self.image3, for: .normal)
                    self.favoriteButton3.titleLabel?.numberOfLines = 0
                    self.favoriteButton3.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton3.setTitle("味千とんこつ\nラーメンギフ…\n2,730円（税込み）", for: .normal)
                    self.favoriteButton3.setTitleColor(.black, for: .normal)
                    self.favoriteButton3.addTarget(self, action: #selector(self.tapEvents3), for: .touchUpInside)
                    self.favoriteButton3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton3.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton3.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton3.frame.width - self.favoriteButton3.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton3)
                    
                }
                if self.buy4 == 1{
                    self.buyArray += [self.buy4]
                    
                    self.favoriteButton4.frame = self.favoriteFrame()
                    
                    self.favoriteButton4.setImage(self.image4, for: .normal)
                    self.favoriteButton4.titleLabel?.numberOfLines = 0
                    self.favoriteButton4.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton4.setTitle("熊本味千ラーメ\nンギフトセ…\n4,420円（税込み）", for: .normal)
                    self.favoriteButton4.setTitleColor(.black, for: .normal)
                    self.favoriteButton4.addTarget(self, action: #selector(self.tapEvents4), for: .touchUpInside)
                    self.favoriteButton4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton4.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton4.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton4.frame.width - self.favoriteButton4.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton4)
                    
                }
                if self.buy5 == 1{
                    self.buyArray += [self.buy5]
                    self.favoriteButton5.frame = self.favoriteFrame()
                    self.favoriteButton5.setImage(self.image5, for: .normal)
                    self.favoriteButton5.titleLabel?.numberOfLines = 0
                    self.favoriteButton5.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton5.setTitle("熊本豚骨ラーメ\nン２食入り…\n280円（税込み）", for: .normal)
                    self.favoriteButton5.setTitleColor(.black, for: .normal)
                    self.favoriteButton5.addTarget(self, action: #selector(self.tapEvents5), for: .touchUpInside)
                    self.favoriteButton5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton5.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton5.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton5.frame.width - self.favoriteButton5.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton5)
                    
                }
                if self.buy6 == 1{
                    self.buyArray += [self.buy6]
                    
                    self.favoriteButton6.frame = self.favoriteFrame()
                    self.favoriteButton6.setImage(self.image6, for: .normal)
                    self.favoriteButton6.titleLabel?.numberOfLines = 0
                    self.favoriteButton6.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton6.setTitle("匠ラーメン＋味\n千拉麺丼セット\n2,000円（税込み）", for: .normal)
                    self.favoriteButton6.setTitleColor(.black, for: .normal)
                    self.favoriteButton6.addTarget(self, action: #selector(self.tapEvents6), for: .touchUpInside)
                    self.favoriteButton6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton6.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton6.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton6.frame.width - self.favoriteButton6.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton6)
                    
                }
                if self.buy7 == 1{
                    self.buyArray += [self.buy7]
                    self.favoriteButton7.frame = self.favoriteFrame()
                    self.favoriteButton7.setImage(self.image7, for: .normal)
                    self.favoriteButton7.titleLabel?.numberOfLines = 0
                    self.favoriteButton7.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton7.setTitle("[味千拉麺]　匠\nラーメン１食…\n594円（税込み）", for: .normal)
                    self.favoriteButton7.setTitleColor(.black, for: .normal)
                    self.favoriteButton7.addTarget(self, action: #selector(self.tapEvents7), for: .touchUpInside)
                    self.favoriteButton7.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton7.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton7.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton7.frame.width - self.favoriteButton7.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton7)
                }
                if self.buy8 == 1{
                    self.buyArray += [self.buy8]
                    self.favoriteButton8.frame = self.favoriteFrame()
                    self.favoriteButton8.setImage(self.image8, for: .normal)
                    self.favoriteButton8.titleLabel?.numberOfLines = 0
                    self.favoriteButton8.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton8.setTitle("[味千拉麺]　匠\nラーメン５食…\n2,970円（税込み）", for: .normal)
                    self.favoriteButton8.setTitleColor(.black, for: .normal)
                    self.favoriteButton8.addTarget(self, action: #selector(self.tapEvents8), for: .touchUpInside)
                    self.favoriteButton8.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton8.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton8.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton8.frame.width - self.favoriteButton8.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton8)
                }
                if self.buy9 == 1{
                    self.buyArray += [self.buy9]
                    self.favoriteButton9.frame = self.favoriteFrame()
                    self.favoriteButton9.setImage(self.image9, for: .normal)
                    self.favoriteButton9.titleLabel?.numberOfLines = 0
                    self.favoriteButton9.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton9.setTitle("[味千拉麺]　匠\nラーメン１０…\n5,940円（税込み）", for: .normal)
                    self.favoriteButton9.setTitleColor(.black, for: .normal)
                    self.favoriteButton9.addTarget(self, action: #selector(self.tapEvents9), for: .touchUpInside)
                    self.favoriteButton9.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton9.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton9.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton9.frame.width - self.favoriteButton9.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton9)
                }
                if self.buy10 == 1{
                    self.buyArray += [self.buy10]
                    self.favoriteButton10.frame = self.favoriteFrame()
                    self.favoriteButton10.setImage(self.image10, for: .normal)
                    self.favoriteButton10.titleLabel?.numberOfLines = 0
                    self.favoriteButton10.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton10.setTitle("味千とんこつ\nラーメンギフ…\n2,730円（税込み）", for: .normal)
                    self.favoriteButton10.setTitleColor(.black, for: .normal)
                    self.favoriteButton10.addTarget(self, action: #selector(self.tapEvents10), for: .touchUpInside)
                    self.favoriteButton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton10.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton10.frame.width - self.favoriteButton10.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton10)
                }
                if self.buy11 == 1{
                    self.buyArray += [self.buy11]
                    self.favoriteButton11.frame = self.favoriteFrame()
                    self.favoriteButton11.setImage(self.image11, for: .normal)
                    self.favoriteButton11.titleLabel?.numberOfLines = 0
                    self.favoriteButton11.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton11.setTitle("熊本味千ラーメ\nンギフトセッ…\n4,420円（税込み）", for: .normal)
                    self.favoriteButton11.setTitleColor(.black, for: .normal)
                    self.favoriteButton11.addTarget(self, action: #selector(self.tapEvents11), for: .touchUpInside)
                    self.favoriteButton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton11.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton11.frame.width - self.favoriteButton11.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton11)
                }
                if self.buy12 == 1{
                    self.buyArray += [self.buy12]
                    self.favoriteButton12.frame = self.favoriteFrame()
                    self.favoriteButton12.setImage(self.image12, for: .normal)
                    self.favoriteButton12.titleLabel?.numberOfLines = 0
                    self.favoriteButton12.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton12.setTitle("ギフト　黒マー\n油ラーメ…\n900円（税込）", for: .normal)
                    self.favoriteButton12.setTitleColor(.black, for: .normal)
                    self.favoriteButton12.addTarget(self, action: #selector(self.tapEvents12), for: .touchUpInside)
                    self.favoriteButton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton12.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton12.frame.width - self.favoriteButton12.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton12)
                }
                if self.buy13 == 1{
                    self.buyArray += [self.buy13]
                    self.favoriteButton13.frame = self.favoriteFrame()
                    self.favoriteButton13.setImage(self.image13, for: .normal)
                    self.favoriteButton13.titleLabel?.numberOfLines = 0
                    self.favoriteButton13.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton13.setTitle("ギフト　味千\nラーメンBOX…\n900円（税込み）", for: .normal)
                    self.favoriteButton13.setTitleColor(.black, for: .normal)
                    self.favoriteButton13.addTarget(self, action: #selector(self.tapEvents13), for: .touchUpInside)
                    self.favoriteButton13.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton13.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton13.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton13.frame.width - self.favoriteButton13.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton13)
                }
                if self.buy14 == 1{
                    self.buyArray += [self.buy14]
                    self.favoriteButton14.frame = self.favoriteFrame()
                    self.favoriteButton14.setImage(self.image14, for: .normal)
                    self.favoriteButton14.titleLabel?.numberOfLines = 0
                    self.favoriteButton14.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton14.setTitle("味千ラーメン\nBOX×２箱…\n2,800円（税込み）", for: .normal)
                    self.favoriteButton14.setTitleColor(.black, for: .normal)
                    self.favoriteButton14.addTarget(self, action: #selector(self.tapEvents14), for: .touchUpInside)
                    self.favoriteButton14.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton14.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton14.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton14.frame.width - self.favoriteButton14.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton14)
                }
                if self.buy15 == 1{
                    self.buyArray += [self.buy15]
                    self.favoriteButton15.frame = self.favoriteFrame()
                    self.favoriteButton15.setImage(self.image15, for: .normal)
                    self.favoriteButton15.titleLabel?.numberOfLines = 0
                    self.favoriteButton15.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton15.setTitle("[冷蔵配送]く\nまもと桂花特…\n519円（税込み）", for: .normal)
                    self.favoriteButton15.setTitleColor(.black, for: .normal)
                    self.favoriteButton15.addTarget(self, action: #selector(self.tapEvents15), for: .touchUpInside)
                    self.favoriteButton15.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton15.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton15.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton15.frame.width - self.favoriteButton15.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton15)
                }
                if self.buy16 == 1{
                    self.buyArray += [self.buy16]
                    self.favoriteButton16.frame = self.favoriteFrame()
                    self.favoriteButton16.setImage(self.image16, for: .normal)
                    self.favoriteButton16.titleLabel?.numberOfLines = 0
                    self.favoriteButton16.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton16.setTitle("ラーメン特製ピ\nリ辛ソー…\n400円（税込み）", for: .normal)
                    self.favoriteButton16.setTitleColor(.black, for: .normal)
                    self.favoriteButton16.addTarget(self, action: #selector(self.tapEvents16), for: .touchUpInside)
                    self.favoriteButton16.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton16.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton16.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton16.frame.width - self.favoriteButton16.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton16)
                }
                if self.buy17 == 1{
                    self.buyArray += [self.buy17]
                    self.favoriteButton17.frame = self.favoriteFrame()
                    self.favoriteButton17.setImage(self.image17, for: .normal)
                    self.favoriteButton17.titleLabel?.numberOfLines = 0
                    self.favoriteButton17.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton17.setTitle("特製味付けメン\nマ\n864円（税込）", for: .normal)
                    self.favoriteButton17.setTitleColor(.black, for: .normal)
                    self.favoriteButton17.addTarget(self, action: #selector(self.tapEvents17), for: .touchUpInside)
                    self.favoriteButton17.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton17.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton17.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton17.frame.width - self.favoriteButton17.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton17)
                }
                if self.buy18 == 1{
                    self.buyArray += [self.buy18]
                    self.favoriteButton18.frame = self.favoriteFrame()
                    self.favoriteButton18.setImage(self.image18, for: .normal)
                    self.favoriteButton18.titleLabel?.numberOfLines = 0
                    self.favoriteButton18.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton18.setTitle("熊本名物　太平\n燕　２食１セット\n650円（税込み）", for: .normal)
                    self.favoriteButton18.setTitleColor(.black, for: .normal)
                    self.favoriteButton18.addTarget(self, action: #selector(self.tapEvents18), for: .touchUpInside)
                    self.favoriteButton18.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton18.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton18.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton18.frame.width - self.favoriteButton18.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton18)
                }
                if self.buy19 == 1{
                    self.buyArray += [self.buy19]
                    self.favoriteButton19.frame = self.favoriteFrame()
                    self.favoriteButton19.setImage(self.image19, for: .normal)
                    self.favoriteButton19.titleLabel?.numberOfLines = 0
                    self.favoriteButton19.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton19.setTitle("熊本名物　太平\n燕２食２セッ…\n1,300円（税込み）", for: .normal)
                    self.favoriteButton19.setTitleColor(.black, for: .normal)
                    self.favoriteButton19.addTarget(self, action: #selector(self.tapEvents19), for: .touchUpInside)
                    self.favoriteButton19.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton19.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton19.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton19.frame.width - self.favoriteButton19.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton19)
                }
                if self.buy20 == 1{
                    self.buyArray += [self.buy20]
                    self.favoriteButton20.frame = self.favoriteFrame()
                    self.favoriteButton20.setImage(self.image20, for: .normal)
                    self.favoriteButton20.titleLabel?.numberOfLines = 0
                    self.favoriteButton20.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton20.setTitle("熊本名物　太平\n燕２食４セット\n2,600円（税込）", for: .normal)
                    self.favoriteButton20.setTitleColor(.black, for: .normal)
                    self.favoriteButton20.addTarget(self, action: #selector(self.tapEvents20), for: .touchUpInside)
                    self.favoriteButton20.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton20.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton20.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton20.frame.width - self.favoriteButton20.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton20)
                }
                if self.buy21 == 1{
                    self.buyArray += [self.buy21]
                    self.favoriteButton21.frame = self.favoriteFrame()
                    self.favoriteButton21.setImage(self.image21, for: .normal)
                    self.favoriteButton21.titleLabel?.numberOfLines = 0
                    self.favoriteButton21.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton21.setTitle("熊本名物　太平\n燕　２食６セット\n3,900円（税込み）", for: .normal)
                    self.favoriteButton21.setTitleColor(.black, for: .normal)
                    self.favoriteButton21.addTarget(self, action: #selector(self.tapEvents21), for: .touchUpInside)
                    self.favoriteButton21.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton21.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton21.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton21.frame.width - self.favoriteButton21.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton21)
                }
                if self.buy22 == 1{
                    self.buyArray += [self.buy22]
                    self.favoriteButton22.frame = self.favoriteFrame()
                    self.favoriteButton22.setImage(self.image22, for: .normal)
                    self.favoriteButton22.titleLabel?.numberOfLines = 0
                    self.favoriteButton22.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton22.setTitle("熊本名物　太平\n燕２食入…\n6,500円（税込み）", for: .normal)
                    self.favoriteButton22.setTitleColor(.black, for: .normal)
                    self.favoriteButton22.addTarget(self, action: #selector(self.tapEvents22), for: .touchUpInside)
                    self.favoriteButton22.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton22.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton22.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton22.frame.width - self.favoriteButton22.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton22)
                }
                
                
                if self.buy23 == 1{
                    self.buyArray += [self.buy23]
                    self.favoriteButton23.frame = self.favoriteFrame()
                    self.favoriteButton23.setImage(self.image23, for: .normal)
                    self.favoriteButton23.titleLabel?.numberOfLines = 0
                    self.favoriteButton23.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton23.setTitle("[皇帝]　太平燕\nあっさりとん…\n340円（税込）", for: .normal)
                    self.favoriteButton23.setTitleColor(.black, for: .normal)
                    self.favoriteButton23.addTarget(self, action: #selector(self.tapEvents23), for: .touchUpInside)
                    self.favoriteButton23.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton23.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton23.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton23.frame.width - self.favoriteButton23.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton23)
                }
                if self.buy24 == 1{
                    self.buyArray += [self.buy24]
                    self.favoriteButton24.frame = self.favoriteFrame()
                    self.favoriteButton24.setImage(self.image24, for: .normal)
                    self.favoriteButton24.titleLabel?.numberOfLines = 0
                    self.favoriteButton24.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton24.setTitle("[皇帝]　太平\n燕　チキンカ…\n340円（税込み）", for: .normal)
                    self.favoriteButton24.setTitleColor(.black, for: .normal)
                    self.favoriteButton24.addTarget(self, action: #selector(self.tapEvents24), for: .touchUpInside)
                    self.favoriteButton24.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton24.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton24.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton24.frame.width - self.favoriteButton24.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton24)
                }
                if self.buy25 == 1{
                    self.buyArray += [self.buy25]
                    self.favoriteButton25.frame = self.favoriteFrame()
                    self.favoriteButton25.setImage(self.image25, for: .normal)
                    self.favoriteButton25.titleLabel?.numberOfLines = 0
                    self.favoriteButton25.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton25.setTitle("[皇帝]　太平\n燕　辛みそ…\n340円（税込み）", for: .normal)
                    self.favoriteButton25.setTitleColor(.black, for: .normal)
                    self.favoriteButton25.addTarget(self, action: #selector(self.tapEvents25), for: .touchUpInside)
                    self.favoriteButton25.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton25.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton25.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton25.frame.width - self.favoriteButton25.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton25)
                }
                if self.buy26 == 1{
                    self.buyArray += [self.buy26]
                    self.favoriteButton26.frame = self.favoriteFrame()
                    self.favoriteButton26.setImage(self.image26, for: .normal)
                    self.favoriteButton26.titleLabel?.numberOfLines = 0
                    self.favoriteButton26.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton26.setTitle("[冷蔵配送]　く\nまもと桂花特…\n519円（税込み）", for: .normal)
                    self.favoriteButton26.setTitleColor(.black, for: .normal)
                    self.favoriteButton26.addTarget(self, action: #selector(self.tapEvents26), for: .touchUpInside)
                    self.favoriteButton26.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton26.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton26.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton26.frame.width - self.favoriteButton26.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton26)
                }
                if self.buy27 == 1{
                    self.buyArray += [self.buy27]
                    self.favoriteButton27.frame = self.favoriteFrame()
                    self.favoriteButton27.setImage(self.image27, for: .normal)
                    self.favoriteButton27.titleLabel?.numberOfLines = 0
                    self.favoriteButton27.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton27.setTitle("特製味付けメン\nマ\n864円（税込み）", for: .normal)
                    self.favoriteButton27.setTitleColor(.black, for: .normal)
                    self.favoriteButton27.addTarget(self, action: #selector(self.tapEvents27), for: .touchUpInside)
                    self.favoriteButton27.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton27.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton27.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton27.frame.width - self.favoriteButton27.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton27)
                }
                if self.buy28 == 1{
                    self.buyArray += [self.buy28]
                    self.favoriteButton28.frame = self.favoriteFrame()
                    self.favoriteButton28.setImage(self.image28, for: .normal)
                    self.favoriteButton28.titleLabel?.numberOfLines = 0
                    self.favoriteButton28.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton28.setTitle("熊本豚骨ラーメ\nン２食入１セッ…\n280円（税込み）", for: .normal)
                    self.favoriteButton28.setTitleColor(.black, for: .normal)
                    self.favoriteButton28.addTarget(self, action: #selector(self.tapEvents28), for: .touchUpInside)
                    self.favoriteButton28.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton28.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton28.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton28.frame.width - self.favoriteButton28.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton28)
                }
                
                
            }
            SVProgressHUD.dismiss()
        }
        
    }
    
    func favoriteFrame() -> CGRect{
        
        switch self.buyArray.count {
        case 1:
            self.favoriteFremeCount = CGRect(x: 0, y: 135, width: self.width/3, height: 150)
        case 2:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 135, width: self.width/3, height: 150)
        case 3:
            self.favoriteFremeCount = CGRect(x: self.width - self.width/3, y: 135, width: self.width/3, height: 150)
        case 4:
            self.favoriteFremeCount = CGRect(x: 0, y: 285, width: self.width/3, height: 150)
        case 5:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 285, width: self.width/3, height: 150)
        case 6:
            self.favoriteFremeCount = CGRect(x: self.width - self.width/3, y: 285, width: self.width/3, height: 150)
        case 7:
            self.favoriteFremeCount = CGRect(x: 0, y: 435, width: self.width/3, height: 150)
        case 8:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 435, width: self.width/3, height: 150)
        case 9:
            self.favoriteFremeCount = CGRect(x: self.width - self.width/3, y: 435, width: self.width/3, height: 150)
        case 10:
            self.favoriteFremeCount = CGRect(x: 0, y: 585, width: self.width/3, height: 150)
        case 11:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 585, width: self.width/3, height: 150)
        case 12:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 585, width: self.width/3, height: 150)
        case 13:
            self.favoriteFremeCount = CGRect(x: 0, y: 735, width: self.width/3, height: 150)
        case 14:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 735, width: self.width/3, height: 150)
        case 15:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 735, width: self.width/3, height: 150)
        case 16:
            self.favoriteFremeCount = CGRect(x: 0, y: 885, width: self.width/3, height: 150)
        case 17:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 885, width: self.width/3, height: 150)
        case 18:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 885, width: self.width/3, height: 150)
        case 19:
            self.favoriteFremeCount = CGRect(x: 0, y: 1035, width: self.width/3, height: 150)
        case 20:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1035, width: self.width/3, height: 150)
        case 21:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1035, width: self.width/3, height: 150)
        case 22:
            self.favoriteFremeCount = CGRect(x: 0, y: 1185, width: self.width/3, height: 150)
        case 23:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1185, width: self.width/3, height: 150)
        case 24:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1185, width: self.width/3, height: 150)
        case 25:
            self.favoriteFremeCount = CGRect(x: 0, y: 1335, width: self.width/3, height: 150)
        case 26:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1335, width: self.width/3, height: 150)
        case 27:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1335, width: self.width/3, height: 150)
        case 28:
            self.favoriteFremeCount = CGRect(x: 0, y: 1485, width: self.width/3, height: 150)
            
        default:
            break
        }
        return self.favoriteFremeCount
    }
    
    
    @objc func tapEvent1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy") as! buyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy2") as! buy2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent3(){
        return
    }
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendText = ""
        vc.number1 = self.subNumber1
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.paiku-men")
        vc.sendLabel1 = "パイクー麺"
        vc.sendLabel2 = "900"
        vc.sendText = "一頭に2本しか取れない軟骨つき豚バラ肉を\n特製タレで煮込みました。"
        vc.number1 = self.subNumber2
        vc.number11 = 2
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.zennoseramen")
        vc.sendLabel1 = "全乗せラーメン"
        vc.sendLabel2 = "1290"
        vc.sendText = ""
        vc.number1 = self.subNumber4
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tyasyumen")
        vc.sendLabel1 = "チャーシュー麵"
        vc.sendLabel2 = "1100"
        vc.sendText = ""
        vc.number1 = self.subNumber5
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.syauyuramen")
        vc.sendLabel1 = "醤油ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber6
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.misotonkoturamen")
        vc.sendLabel1 = "味噌豚骨ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber7
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karamisoramen")
        vc.sendLabel1 = "辛みそラーメン"
        vc.sendLabel2 = "820"
        vc.sendText = ""
        vc.number1 = self.subNumber8

        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.hukkokuramen")
        vc.sendLabel1 = "復刻ラーメン昭和味"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber9
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.zeitakukiriaburitya-syumen")
        vc.sendLabel1 = "贅沢切り炙りチャーシュー麵"
        vc.sendLabel2 = "1200"
        vc.sendText = ""
        vc.number1 = self.subNumber10
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.pirikaranegiramen")
        vc.sendLabel1 = "ピリ辛ネギラーメン"
        vc.sendLabel2 = "800"
        vc.sendText = ""
        vc.number1 = self.subNumber11
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
        vc.sendLabel2 = "940"
        vc.sendText = ""
        vc.number1 = self.subNumber12
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents13(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karatukemen")
        vc.sendLabel1 = "辛つけ麺"
        vc.sendLabel2 = "960"
        vc.sendText = ""
        vc.number1 = self.subNumber13
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents14(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.taipi-en")
        vc.sendLabel1 = "太平燕"
        vc.sendLabel2 = "880"
        vc.sendText = "熊本生まれの春雨料理"
        vc.number1 = self.subNumber14
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents15(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.parisoba")
        vc.sendLabel1 = "パリそば"
        vc.sendLabel2 = "840"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber15
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents16(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.yakisoba")
        vc.sendLabel1 = "焼きそば"
        vc.sendLabel2 = "820"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber16
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents17(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tyanpon")
        vc.sendLabel1 = "ちゃんぽん"
        vc.sendLabel2 = "880"
        vc.sendText = ""
        vc.number1 = self.subNumber17
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents18(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratyanpon")
        vc.sendLabel1 = "ピリ辛ちゃんぽん"
        vc.sendLabel2 = "900"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber18
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents19(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.gyozaset")
        vc.sendLabel1 = "ギョーザセット"
        vc.sendLabel2 = "900"
        vc.sendText = "お好みの麺＋焼きギョーザ(3個)＋ご飯＋漬物"
        vc.number1 = self.subNumber19
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents20(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karaageset")
        vc.sendLabel1 = "唐揚げセット"
        vc.sendLabel2 = ""
        vc.sendText = "お好みの麺＋唐揚げ(2個)＋ご飯＋漬物"
        vc.number1 = self.subNumber20
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents21(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.hantya-hanset")
        vc.sendLabel1 = "半チャーハンセット"
        vc.sendLabel2 = ""
        vc.sendText = "お好みの麺＋ハーフチャーハン＋漬物"
        vc.number1 = self.subNumber21
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents22(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(systemName: "camera")
        vc.sendLabel1 = "月替りセット"
        vc.sendLabel2 = ""
        vc.sendText = "商品の構成によって価格は変動いたします。"
        vc.number1 = self.subNumber22
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents23(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.ha-huset")
        vc.sendLabel1 = "ハーフセット"
        vc.sendLabel2 = ""
        vc.sendText = "ハーフラーメン＋ハーフチャーハン＋唐揚げ一個＋サラダ＋漬物"
        vc.number1 = self.subNumber23
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents24(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.supesyaruset")
        vc.sendLabel1 = "スペシャルセット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋ハーフチャーハン＋ギョーザ(５個)＋漬物"
        vc.number1 = self.subNumber24
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents25(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodonset")
        vc.sendLabel1 = "チャーシュー玉子丼セット"
        vc.sendLabel2 = ""
        vc.sendText = "チャーシュー玉子丼＋味千ラーメン(中)＋漬物"
        vc.number1 = self.subNumber25
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents26(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karamisotya-syu-donset")
        vc.sendLabel1 = "辛みそチャーシュー丼セット"
        vc.sendLabel2 = ""
        vc.sendText = "辛みそチャーシュー丼＋味千ラーメン(中)+漬物"
        vc.number1 = self.subNumber26
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents27(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tikinnanbanset")
        vc.sendLabel1 = "チキン南蛮セット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋チキン南蛮＋ご飯＋漬物＋サラダ"
        vc.number1 = self.subNumber27
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents28(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.manpukuset")
        vc.sendLabel1 = "満腹セット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋唐揚げ(4個)＋漬物"
        vc.number1 = self.subNumber28
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}

