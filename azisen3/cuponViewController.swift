//
//２１〜１３５　基本部品
//１５４〜１８３　Firebaseから現在所有しているクーポンを確認する
//１８７〜２０６　基本部品貼り付け
//２０９〜４３６　所有しているクーポンを貼り付ける
//４４１〜４７１　貼り付けられたクーポンのx軸を調整
//４７４〜４８３　pageControllの貼り付け
//４９１〜５７０　「クーポンを使用する」を押した際に出てくるViewの設定
//５７５〜６１２　クーポン認証確認のViewの設定
//６１５〜７４９　使用Shop登録画面
//７５２〜７７２　どのクーポンを使ったのかの確認処理
//７７３〜８０４　利用条件ボタンタップ時に出てくるView
//８０６〜８７７　使用Shopを設定するView
//８８６〜９２６　クーポンを使用する処理


import UIKit
import Firebase
import SVProgressHUD

class cuponViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let shopLabel1 = UILabel()
    let shopButton = UIButton()
    let scrollView = UIScrollView()
    let cuponView1 = UIView()
    let cuponView2 = UIView()
    let cuponView3 = UIView()
    let cuponView4 = UIView()
    
    let image1 = UIImage(named: "cupon1")
    let image2 = UIImage(named: "cupon2")
    let image3 = UIImage(named: "cupon3")
    
    let cuponImage1 = UIImageView()
    let cuponImage2 = UIImageView()
    let cuponImage3 = UIImageView()
    let cuponImage4 = UIImageView()
    
    let pageControl = UIPageControl()
    
    let useButton = UIButton()
    let viewLabel1 = UILabel()
    let viewLabel2 = UILabel()
    let viewText1 = UITextField()
    let viewText2 = UITextField()
    let viewButton = UIButton()
    
    let auseButton = UIButton()
    let aviewLabel1 = UILabel()
    let aviewLabel2 = UILabel()
    let aviewText1 = UITextField()
    let aviewText2 = UITextField()
    let aviewButton = UIButton()
    
    let buseButton = UIButton()
    let bviewLabel1 = UILabel()
    let bviewLabel2 = UILabel()
    let bviewText1 = UITextField()
    let bviewText2 = UITextField()
    let bviewButton = UIButton()
    
    let cuseButton = UIButton()
    let cviewLabel1 = UILabel()
    let cviewLabel2 = UILabel()
    let cviewText1 = UITextField()
    let cviewText2 = UITextField()
    let cviewButton = UIButton()
    
    
    let useView1 = UIView()
    let useView2 = UIView()
    let useLabel = UILabel()
    let useBackButton = UIButton()
    let useLine = UIView()
    let useTextView = UITextView()
    
    //ショップ選択View
    let shopView1 = UIView()
    let shopView2 = UIView()
    let shopViewLabel1 = UILabel()
    let shopViewLabel2 = UILabel()
    let shopViewLabel3 = UILabel()
    let shopViewBackButton = UIButton()
    let shopViewButton1 = UIButton()
    let shopViewButton2 = UIButton()
    let shopViewButton3 = UIButton()
    let shopViewButton4 = UIButton()
    let shopViewButton5 = UIButton()
    let shopViewButton6 = UIButton()
    let shopViewButton7 = UIButton()
    let shopViewButton8 = UIButton()
    let shopViewButton9 = UIButton()
    let shopViewLine1 = UIView()
    let shopViewLine2 = UIView()
    let shopViewLine3 = UIView()
    let shopViewLine4 = UIView()
    let shopViewLine5 = UIView()
    let shopViewLine6 = UIView()
    let shopViewLine7 = UIView()
    let shopViewLine8 = UIView()
    let shopViewLine9 = UIView()
    
    //クーポン使用View
    let cuponView = UIView()
    let cuponScrollView = UIScrollView()
    let cuponBackButton = UIButton()
    let cuponLabel1 = UILabel()
    let cuponLabel2 = UILabel()
    let cuponLabel3 = UILabel()
    let cuponLabel4 = UILabel()
    let cuponLabel5 = UILabel()
    let cuponLabel6 = UILabel()
    let cuponLabel7 = UILabel()
    let cuponLabel8 = UILabel()
    let cuponNextView = UIView()
    let cuponImageView = UIImageView()
    let cuponImage = UIImage(named: "qr")
    let cuponButton = UIButton()
    
    //cuponButtonを押した際に出るView
    let ninsyoView1 = UIView()
    let ninsyoView2 = UIView()
    let ninsyoLabel = UILabel()
    let ninsyoTextField = UITextField()
    let ninsyoLine1 = UIView()
    let ninsyoLine2 = UIView()
    let ninsyoButton1 = UIButton()
    let ninsyoButton2 = UIButton()
    
    let pass = 1111
    var usedNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "クーポン"
        navigationController?.navigationBar.isTranslucent = false
        let userID1 = Auth.auth().currentUser?.uid
        if userID1 != nil{
            
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID1))!").getDocument{(snap, error) in
                if let error = error {
                    fatalError("エラーした\(error)")
                }
                guard let data: [String : Any] = snap?.data() else {
                    print("ミスってる")
                    return
                }
                //それぞれのクーポンの情報を取得する。0だった場合はそのクーポンは持っていない。
                let cuponNumber1 = data["cuponNumber1"] as! Int
                let cuponNumber2 = data["cuponNumber2"] as! Int
                let oomoriCupon = data["oomoriCupon"] as! Int
                let gyozaCupon = data["gyozaCupon"] as! Int
                var oomoriCuponNumber: Int?
                var gyozaCuponNumber: Int?
                var cuponNumber1a: Int?
                if oomoriCupon > 0{
                    oomoriCuponNumber = 1
                }else{
                    oomoriCuponNumber = 0
                }
                if gyozaCupon > 0{
                    gyozaCuponNumber = 1
                }else{
                    gyozaCuponNumber = 0
                }
                if cuponNumber1 > 0{
                    cuponNumber1a = 1
                }else{
                    cuponNumber1a = 0
                }
                //totalは０から４の間で変化する
                let total = cuponNumber1a! + cuponNumber2 + oomoriCuponNumber! + gyozaCuponNumber!
                
                if total == 0{
                    for i in self.view.subviews{
                        i.removeFromSuperview()
                    }
                    let noLabel = UILabel()
                    noLabel.frame = CGRect(x: 0, y: 250, width: self.width, height: 30)
                    noLabel.text = "現在クーポンはありません。"
                    noLabel.textAlignment = NSTextAlignment.center
                    noLabel.font = UIFont.systemFont(ofSize: 18)
                    self.view.addSubview(noLabel)
                    
                }else{
                    //何か一つでもクーポンがあれば表示させるもの
                    self.shopLabel1.frame = CGRect(x: 5, y: 10, width: self.width / 10, height: 10)
                    self.shopLabel1.text = "利用店舗"
                    self.shopLabel1.font = UIFont.systemFont(ofSize: 8)
                    self.view.addSubview(self.shopLabel1)
                    
                    self.shopButton.frame = CGRect(x:self.width / 10 + 5, y: 6, width: self.width - self.width / 10 - 10, height: 16)
                    self.shopButton.backgroundColor = .systemGray2
                    self.shopButton.layer.cornerRadius = 3
                    self.shopButton.setTitle("本店", for: .normal)
                    self.shopButton.setTitleColor(.black, for: .normal)
                    self.shopButton.addTarget(self, action: #selector(self.shopButtonTap), for: .touchUpInside)
                    self.view.addSubview(self.shopButton)
                    
                    self.scrollView.frame = CGRect(x: 0, y: 33, width: self.width, height: self.height)
                    self.scrollView.contentSize = CGSize(width: self.scrollView.frame.width * CGFloat(total), height: 0)
                    self.scrollView.delegate = self
                    self.scrollView.isPagingEnabled = true
                    self.scrollView.showsVerticalScrollIndicator = false
                    self.scrollView.showsHorizontalScrollIndicator = false
                    self.view.addSubview(self.scrollView)
                    //アプリを入れた際に必ずあるクーポン。
                    if cuponNumber1 == 1 || cuponNumber1 == 2{
                        self.cuponView1.frame = CGRect(x: 0, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
                        self.cuponView1.backgroundColor = .systemGray6
                        self.cuponView1.layer.cornerRadius = 5
                        self.scrollView.addSubview(self.cuponView1)
                        
                        self.cuponImage1.image = self.image2
                        self.cuponImage1.frame = CGRect(x: 0, y: 0, width: self.cuponView1.frame.width, height: self.height / 2 - 90)
                        self.cuponImage1.layer.cornerRadius = 5
                        self.cuponView1.addSubview(self.cuponImage1)
                        
                        self.useButton.frame = CGRect(x: 10, y: self.cuponImage1.frame.height + 10, width: self.width - 20, height: 30)
                        self.useButton.backgroundColor = .red
                        self.useButton.setTitle("クーポンを使用する", for: .normal)
                        self.useButton.layer.cornerRadius = 5
                        self.useButton.setTitleColor(.white, for: .normal)
                        self.useButton.addTarget(self, action: #selector(self.useTapped), for: .touchUpInside)
                        self.cuponView1.addSubview(self.useButton)
                        
                        self.viewLabel1.frame = CGRect(x: 5, y: self.cuponImage1.frame.height + self.useButton.frame.height + 20, width: self.width, height: 15)
                        self.viewLabel1.text = "アプリ会員登録記念チャーシュー増量クーポン"
                        self.viewLabel1.textAlignment = NSTextAlignment.left
                        self.viewLabel1.font = UIFont.systemFont(ofSize: 16)
                        self.cuponView1.addSubview(self.viewLabel1)
                        
                        self.viewLabel2.frame = CGRect(x: 0, y: self.viewLabel1.layer.position.y + 20, width: self.width, height: 15)
                        self.viewLabel2.text = "チャーシュー増量無料クーポン"
                        self.viewLabel2.textColor = .red
                        self.viewLabel2.textAlignment = NSTextAlignment.center
                        self.viewLabel2.font = UIFont.systemFont(ofSize: 16)
                        self.cuponView1.addSubview(self.viewLabel2)
                        
                        self.viewText1.frame = CGRect(x: 5, y: self.viewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                        self.viewText1.layer.cornerRadius = 5
                        self.viewText1.text = "あと1回"
                        self.viewText1.font = UIFont.systemFont(ofSize: 8)
                        self.viewText1.textAlignment = NSTextAlignment.center
                        self.viewText1.backgroundColor = .white
                        self.cuponView1.addSubview(self.viewText1)
                        
                        self.viewText2.frame = CGRect(x: 10 + self.viewText1.frame.width, y: self.viewLabel2.layer.position.y + 20, width: self.width / 2 + 20, height: 20)
                        self.viewText2.text = "有効期限なし"
                        self.viewText2.textAlignment = NSTextAlignment.center
                        self.viewText2.font = UIFont.systemFont(ofSize: 8)
                        self.viewText2.layer.cornerRadius = 5
                        self.viewText2.backgroundColor = .white
                        self.cuponView1.addSubview(self.viewText2)
                        
                        self.viewButton.frame = CGRect(x: self.width / 1.3 + 10, y: self.viewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                        self.viewButton.backgroundColor = .black
                        self.viewButton.setTitle("利用条件", for: .normal)
                        self.viewButton.titleLabel?.font = UIFont.systemFont(ofSize: 8)
                        self.viewButton.layer.cornerRadius = 5
                        self.viewButton.addTarget(self, action: #selector(self.viewButtonTapped), for: .touchUpInside)
                        self.cuponView1.addSubview(self.viewButton)
                    }
                    if cuponNumber2 == 1{
                    self.cuponView2.frame = CGRect(x: self.scrollView.frame.width, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
                    self.cuponView2.backgroundColor = .systemGray6
                    self.cuponView2.layer.cornerRadius = 5
                    self.scrollView.addSubview(self.cuponView2)
                    
                    self.cuponImage2.image = self.image3
                    self.cuponImage2.frame = CGRect(x: 0, y: 0, width: self.cuponView2.frame.width, height: self.height / 2 - 90)
                    self.cuponImage2.layer.cornerRadius = 5
                    self.cuponView2.addSubview(self.cuponImage2)
                    
                    self.auseButton.frame = CGRect(x: 10, y: self.cuponImage2.frame.height + 10, width: self.width - 20, height: 30)
                    self.auseButton.backgroundColor = .red
                    self.auseButton.setTitle("クーポンを使用する", for: .normal)
                    self.auseButton.layer.cornerRadius = 5
                    self.auseButton.setTitleColor(.white, for: .normal)
                    self.auseButton.addTarget(self, action: #selector(self.useTapped2), for: .touchUpInside)
                    self.cuponView2.addSubview(self.auseButton)
                    
                    self.aviewLabel1.frame = CGRect(x: 5, y: self.cuponImage2.frame.height + self.auseButton.frame.height + 20, width: self.width, height: 15)
                    self.aviewLabel1.text = "アプリ会員登録記念ギョーザ一皿無料クーポン"
                    self.aviewLabel1.textAlignment = NSTextAlignment.left
                    self.aviewLabel1.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView2.addSubview(self.aviewLabel1)
                    
                    self.aviewLabel2.frame = CGRect(x: 0, y: self.aviewLabel1.layer.position.y + 20, width: self.width, height: 15)
                    self.aviewLabel2.text = "ギョーザ一皿無料"
                    self.aviewLabel2.textColor = .red
                    self.aviewLabel2.textAlignment = NSTextAlignment.center
                    self.aviewLabel2.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView2.addSubview(self.aviewLabel2)
                    
                    self.aviewText1.frame = CGRect(x: 5, y: self.aviewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                    self.aviewText1.layer.cornerRadius = 5
                    self.aviewText1.text = "あと1回"
                    self.aviewText1.font = UIFont.systemFont(ofSize: 8)
                    self.aviewText1.textAlignment = NSTextAlignment.center
                    self.aviewText1.backgroundColor = .white
                    self.cuponView2.addSubview(self.aviewText1)
                    
                    self.aviewText2.frame = CGRect(x: 10 + self.aviewText1.frame.width, y: self.aviewLabel2.layer.position.y + 20, width: self.width / 2 + 20, height: 20)
                    self.aviewText2.text = "有効期限なし"
                    self.aviewText2.textAlignment = NSTextAlignment.center
                    self.aviewText2.font = UIFont.systemFont(ofSize: 8)
                    self.aviewText2.layer.cornerRadius = 5
                    self.aviewText2.backgroundColor = .white
                    self.cuponView2.addSubview(self.aviewText2)
                    
                    self.aviewButton.frame = CGRect(x: self.width / 1.3 + 10, y: self.aviewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                    self.aviewButton.backgroundColor = .black
                    self.aviewButton.setTitle("利用条件", for: .normal)
                    self.aviewButton.titleLabel?.font = UIFont.systemFont(ofSize: 8)
                    self.aviewButton.layer.cornerRadius = 5
                    self.aviewButton.addTarget(self, action: #selector(self.viewButtonTapped), for: .touchUpInside)
                    self.cuponView2.addSubview(self.aviewButton)
                    }
                    //oomoriCuponが0ではなかった場合
                    if oomoriCupon != 0{
                    self.cuponView3.frame = CGRect(x: self.scrollView.frame.width * 2, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
                    self.cuponView3.backgroundColor = .systemGray6
                    self.cuponView3.layer.cornerRadius = 5
                    self.scrollView.addSubview(self.cuponView3)
                    
                    self.cuponImage3.image = self.image1
                    self.cuponImage3.frame = CGRect(x: 0, y: 0, width: self.cuponView3.frame.width, height: self.height / 2 - 90)
                    self.cuponImage3.layer.cornerRadius = 5
                    self.cuponView3.addSubview(self.cuponImage3)
                    
                    self.buseButton.frame = CGRect(x: 10, y: self.cuponImage3.frame.height + 10, width: self.width - 20, height: 30)
                    self.buseButton.backgroundColor = .red
                    self.buseButton.setTitle("クーポンを使用する", for: .normal)
                    self.buseButton.layer.cornerRadius = 5
                    self.buseButton.setTitleColor(.white, for: .normal)
                    self.buseButton.addTarget(self, action: #selector(self.useTapped3), for: .touchUpInside)
                    self.cuponView3.addSubview(self.buseButton)
                    
                    self.bviewLabel1.frame = CGRect(x: 5, y: self.cuponImage3.frame.height + self.buseButton.frame.height + 20, width: self.width, height: 15)
                    self.bviewLabel1.text = "1日1回ルーレットクーポン"
                    self.bviewLabel1.textAlignment = NSTextAlignment.left
                    self.bviewLabel1.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView3.addSubview(self.bviewLabel1)
                    
                    self.bviewLabel2.frame = CGRect(x: 0, y: self.bviewLabel1.layer.position.y + 20, width: self.width, height: 15)
                    self.bviewLabel2.text = "ラーメン類大盛無料"
                    self.bviewLabel2.textColor = .red
                    self.bviewLabel2.textAlignment = NSTextAlignment.center
                    self.bviewLabel2.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView3.addSubview(self.bviewLabel2)
                    
                    self.bviewText1.frame = CGRect(x: 5, y: self.bviewLabel2.layer.position.y + 20, width:self.width / 5, height: 20)
                    self.bviewText1.layer.cornerRadius = 5
                    self.bviewText1.text = "あと\(oomoriCupon)回"
                    self.bviewText1.font = UIFont.systemFont(ofSize: 8)
                    self.bviewText1.textAlignment = NSTextAlignment.center
                    self.bviewText1.backgroundColor = .white
                    self.cuponView3.addSubview(self.bviewText1)
                    
                    self.bviewText2.frame = CGRect(x: 10 + self.bviewText1.frame.width, y: self.bviewLabel2.layer.position.y + 20, width: self.width / 2 + 20, height: 20)
                    self.bviewText2.text = "有効期限なし"
                    self.bviewText2.textAlignment = NSTextAlignment.center
                    self.bviewText2.font = UIFont.systemFont(ofSize: 8)
                    self.bviewText2.layer.cornerRadius = 5
                    self.bviewText2.backgroundColor = .white
                    self.cuponView3.addSubview(self.bviewText2)
                    
                    self.bviewButton.frame = CGRect(x: self.width / 1.3 + 10, y: self.bviewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                    self.bviewButton.backgroundColor = .black
                    self.bviewButton.setTitle("利用条件", for: .normal)
                    self.bviewButton.titleLabel?.font = UIFont.systemFont(ofSize: 8)
                    self.bviewButton.layer.cornerRadius = 5
                    self.bviewButton.addTarget(self, action: #selector(self.viewButtonTapped), for: .touchUpInside)
                    self.cuponView3.addSubview(self.bviewButton)
                    }
                    if gyozaCupon != 0{
                    self.cuponView4.frame = CGRect(x: self.scrollView.frame.width * 3, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
                    self.cuponView4.backgroundColor = .systemGray6
                    self.cuponView4.layer.cornerRadius = 5
                    self.scrollView.addSubview(self.cuponView4)
                    
                    self.cuponImage4.image = self.image3
                    self.cuponImage4.frame = CGRect(x: 0, y: 0, width: self.cuponView4.frame.width, height: self.height / 2 - 90)
                    self.cuponImage4.layer.cornerRadius = 5
                    self.cuponView4.addSubview(self.cuponImage4)
                    
                    self.cuseButton.frame = CGRect(x: 10, y: self.cuponImage4.frame.height + 10, width: self.width - 20, height: 30)
                    self.cuseButton.backgroundColor = .red
                    self.cuseButton.setTitle("クーポンを使用する", for: .normal)
                    self.cuseButton.layer.cornerRadius = 5
                    self.cuseButton.setTitleColor(.white, for: .normal)
                    self.cuseButton.addTarget(self, action: #selector(self.useTapped3), for: .touchUpInside)
                    self.cuponView4.addSubview(self.cuseButton)
                    
                    self.cviewLabel1.frame = CGRect(x: 5, y: self.cuponImage4.frame.height + self.useButton.frame.height + 20, width: self.width, height: 15)
                    self.cviewLabel1.text = "ルーレットギョーザクーポン"
                    self.cviewLabel1.textAlignment = NSTextAlignment.left
                    self.cviewLabel1.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView4.addSubview(self.cviewLabel1)
                    
                    self.cviewLabel2.frame = CGRect(x: 0, y: self.cviewLabel1.layer.position.y + 20, width: self.width, height: 15)
                    self.cviewLabel2.text = "ギョーザ一皿無料"
                    self.cviewLabel2.textColor = .red
                    self.cviewLabel2.textAlignment = NSTextAlignment.center
                    self.cviewLabel2.font = UIFont.systemFont(ofSize: 16)
                    self.cuponView4.addSubview(self.cviewLabel2)
                    
                    self.cviewText1.frame = CGRect(x: 5, y: self.cviewLabel2.layer.position.y + 20, width:self.width / 5, height: 20)
                    self.cviewText1.layer.cornerRadius = 5
                    self.cviewText1.text = "あと\(oomoriCupon)回"
                    self.cviewText1.font = UIFont.systemFont(ofSize: 8)
                    self.cviewText1.textAlignment = NSTextAlignment.center
                    self.cviewText1.backgroundColor = .white
                    self.cuponView4.addSubview(self.cviewText1)
                    
                    self.cviewText2.frame = CGRect(x: 10 + self.cviewText1.frame.width, y: self.cviewLabel2.layer.position.y + 20, width: self.width / 2 + 20, height: 20)
                    self.cviewText2.text = "有効期限なし"
                    self.cviewText2.textAlignment = NSTextAlignment.center
                    self.cviewText2.font = UIFont.systemFont(ofSize: 8)
                    self.cviewText2.layer.cornerRadius = 5
                    self.cviewText2.backgroundColor = .white
                    self.cuponView4.addSubview(self.cviewText2)
                    
                    self.cviewButton.frame = CGRect(x: self.width / 1.3 + 10, y: self.cviewLabel2.layer.position.y + 20, width: self.width / 5, height: 20)
                    self.cviewButton.backgroundColor = .black
                    self.cviewButton.setTitle("利用条件", for: .normal)
                    self.cviewButton.titleLabel?.font = UIFont.systemFont(ofSize: 8)
                    self.cviewButton.layer.cornerRadius = 5
                    self.cviewButton.addTarget(self, action: #selector(self.viewButtonTapped), for: .touchUpInside)
                    self.cuponView4.addSubview(self.cviewButton)
                    }
                    
                    
                    
                    if cuponNumber1 == 0 && cuponNumber2 > 0{
                        self.cuponView1.removeFromSuperview()
                        self.cuponView2.layer.position.x = self.view.layer.position.x
                    }else if cuponNumber2 == 0{
                        self.cuponView2.removeFromSuperview()
                    }
                    
                    if oomoriCupon == 0{
                        self.cuponView3.removeFromSuperview()
                    }else if oomoriCupon > 0 && cuponNumber1 == 0 && cuponNumber2 == 0{
                        self.cuponView1.removeFromSuperview()
                        self.cuponView2.removeFromSuperview()
                        self.cuponView3.layer.position.x = self.view.layer.position.x
                    }else if oomoriCupon > 0 && cuponNumber1 > 0 && cuponNumber2 == 0{
                        self.cuponView2.removeFromSuperview()
                        self.cuponView3.layer.position.x = self.width
                    }else if oomoriCupon > 0 && cuponNumber1 == 0 && cuponNumber2 > 0{
                        self.cuponView1.removeFromSuperview()
                        self.cuponView2.layer.position.x = self.view.layer.position.x
                        self.cuponView3.layer.position.x = self.width
                    }
                    
                    if gyozaCupon == 0{
                        self.cuponView4.removeFromSuperview()
                    }else if total == 1 && gyozaCupon > 0{
                        self.cuponView4.layer.position.x = self.view.layer.position.x
                    }else if total == 2 && gyozaCupon > 0{
                        self.cuponView4.layer.position.x = self.width
                    }else if total == 3 && gyozaCupon > 0{
                        self.cuponView4.layer.position.x = self.width * 2
                    }
                    
                    
                    self.pageControl.frame = CGRect(x: 0, y: self.height / 2 - 80, width: self.width, height: 10)
                    self.pageControl.numberOfPages = total
                    self.pageControl.pageIndicatorTintColor = .black
                    self.pageControl.currentPageIndicatorTintColor = .white
                    self.view.addSubview(self.pageControl)
                    
                    self.shopButton.setTitle("\(String(describing: data["shop"]!))", for: .normal)
                    self.shopViewLabel3.text = "\(String(describing: data["shop"]!))"
                    
                }
            }
        }else{
            let label = UILabel()
            label.frame = CGRect(x: 0, y: self.height / 2, width: self.width, height: 20)
            label.text = "この機能を使うにはユーザー登録をしてください。"
            self.view.addSubview(label)
        }
        cuponView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        
        cuponScrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        cuponScrollView.contentSize = CGSize(width: 0, height: height * 1.25)
        cuponScrollView.backgroundColor = .systemGray6
        cuponView.addSubview(cuponScrollView)
        
        cuponBackButton.frame = CGRect(x: cuponView.frame.width - 50, y: 10, width: 30, height: 30)
        cuponBackButton.setTitle("×", for: .normal)
        cuponBackButton.setTitleColor(.systemGray6, for: .normal)
        cuponBackButton.layer.cornerRadius = 15
        cuponBackButton.backgroundColor = .white
        cuponBackButton.addTarget(self, action: #selector(cuponBackButtonTap), for: .touchUpInside)
        cuponView.addSubview(cuponBackButton)
        
        cuponLabel1.frame = CGRect(x: 0, y: 40, width: width, height: 15)
        cuponLabel1.text = "スタッフにこちらの画面をお見せください。"
        cuponLabel1.textAlignment = NSTextAlignment.center
        cuponLabel1.font = UIFont.systemFont(ofSize: 12)
        cuponScrollView.addSubview(cuponLabel1)
        
        cuponLabel2.frame = CGRect(x: 0, y: 70, width: 70, height: 15)
        cuponLabel2.text = "利用店舗"
        cuponLabel2.font = UIFont.systemFont(ofSize: 12)
        cuponLabel2.textAlignment = NSTextAlignment.center
        cuponScrollView.addSubview(cuponLabel2)
        
        cuponLabel3.frame = CGRect(x: 80, y: 70, width: cuponScrollView.frame.width - 100, height: 15)
        cuponLabel3.font = UIFont.systemFont(ofSize: 12)
        cuponLabel3.backgroundColor = .white
        cuponScrollView.addSubview(cuponLabel3)
        
        cuponNextView.frame = CGRect(x: 5, y: 100, width: cuponScrollView.frame.width - 10, height: height / 1.5)
        cuponNextView.backgroundColor = .white
        cuponScrollView.addSubview(cuponNextView)
        
        cuponLabel4.frame = CGRect(x: 0, y: 10, width: width, height: 20)
        cuponLabel4.textColor = .red
        cuponLabel4.font = UIFont.systemFont(ofSize: 15)
        cuponLabel4.textAlignment = NSTextAlignment.center
        cuponNextView.addSubview(cuponLabel4)
        
        cuponImageView.frame = CGRect(x: 10, y: 40, width: cuponNextView.frame.width - 20, height: cuponNextView.frame.width - 20)
        cuponImageView.image = cuponImage
        cuponNextView.addSubview(cuponImageView)
        
        cuponButton.frame = CGRect(x: 5, y: cuponNextView.frame.width + 40, width: cuponNextView.frame.width - 10, height: 30)
        cuponButton.setTitle("従業員用　押さないで", for: .normal)
        cuponButton.setTitleColor(.white, for: .normal)
        cuponButton.backgroundColor = .red
        cuponButton.layer.cornerRadius = 5
        cuponButton.addTarget(self, action: #selector(cuponButtonTap), for: .touchUpInside)
        cuponNextView.addSubview(cuponButton)
        
        cuponLabel5.frame = CGRect(x: 10, y: cuponNextView.frame.height + 120, width: width / 2 - 20, height: 20)
        cuponLabel5.text = "あと1回"
        cuponLabel5.backgroundColor = .white
        cuponLabel5.textAlignment = NSTextAlignment.center
        cuponLabel5.layer.cornerRadius = 5
        cuponLabel5.font = UIFont.systemFont(ofSize: 12)
        cuponScrollView.addSubview(cuponLabel5)
        
        cuponLabel6.frame = CGRect(x: width / 2, y: cuponNextView.frame.height + 120, width: width / 2 - 20, height: 20)
        cuponLabel6.text = "2021年02月11日　23:59まで"
        cuponLabel6.backgroundColor = .white
        cuponLabel6.textAlignment = NSTextAlignment.center
        cuponLabel6.layer.cornerRadius = 5
        cuponLabel6.font = UIFont.systemFont(ofSize: 12)
        cuponScrollView.addSubview(cuponLabel6)
        
        cuponLabel7.frame = CGRect(x: 0, y: cuponNextView.frame.height + 150, width: width, height: 15)
        cuponLabel7.text = "利用条件"
        cuponLabel7.textAlignment = NSTextAlignment.center
        cuponScrollView.addSubview(cuponLabel7)
        
        cuponLabel8.frame = CGRect(x: 5, y: cuponNextView.frame.height + 170, width: width - 10, height: 170)
        cuponLabel8.numberOfLines = 0
        cuponLabel8.font = UIFont.systemFont(ofSize: 12)
        cuponLabel8.text = "1日1回ルーレットに挑戦できます。\n味千アプリサービスはご注文の際にご提出ください。\n本クーポン券は1名様につき1回のご利用となります。\n本クーポン券は、日本国内の味千本店、東バイパス店、光の森店、荒尾グリーンランド前店、イオンタウン田崎店、富合店、鹿本店、水俣店のみの限定となります。\n味千感謝デーではご利用できません。\nその他のクーポン券、サービス券とは併用できません。"
        cuponScrollView.addSubview(cuponLabel8)
        
        ninsyoView1.frame = CGRect(x: 0, y: 0, width: width, height: height)
        ninsyoView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        ninsyoView2.frame = CGRect(x: 30, y: 220, width: width - 60, height: 105)
        ninsyoView2.backgroundColor = .systemGray6
        ninsyoView2.layer.cornerRadius = 5
        ninsyoView1.addSubview(ninsyoView2)
        
        ninsyoLabel.frame = CGRect(x: 0, y: 10, width: ninsyoView2.frame.width, height: 15)
        ninsyoLabel.text = "クーポンの認証番号を入力してください"
        ninsyoLabel.textAlignment = NSTextAlignment.center
        ninsyoLabel.font = UIFont.systemFont(ofSize: 12)
        ninsyoView2.addSubview(ninsyoLabel)
        
        ninsyoTextField.frame = CGRect(x: 10, y: 40, width: ninsyoView2.frame.width - 20, height: 20)
        ninsyoTextField.placeholder = "認証番号"
        ninsyoTextField.keyboardType = UIKeyboardType.phonePad
        ninsyoTextField.layer.cornerRadius = 5
        ninsyoView2.addSubview(self.ninsyoTextField)
        
        ninsyoLine1.frame = CGRect(x: 0, y: 75, width: ninsyoView2.frame.width, height: 1)
        ninsyoLine1.backgroundColor = .black
        ninsyoView2.addSubview(ninsyoLine1)
        
        ninsyoLine2.frame = CGRect(x: ninsyoView2.frame.width / 2, y: 75, width: 1, height: 30)
        ninsyoLine2.backgroundColor = .black
        ninsyoView2.addSubview(ninsyoLine2)
        
        ninsyoButton1.frame = CGRect(x: 0, y: 77, width: ninsyoView2.frame.width / 2 - 1, height: 28)
        ninsyoButton1.setTitle("キャンセル", for: .normal)
        ninsyoButton1.setTitleColor(.blue, for: .normal)
        ninsyoButton1.addTarget(self, action: #selector(ninsyoButton1Tap), for: .touchUpInside)
        ninsyoView2.addSubview(ninsyoButton1)
        
        ninsyoButton2.frame = CGRect(x: ninsyoView2.frame.width / 2 + 1, y: 77, width: ninsyoView2.frame.width / 2 - 1, height: 28)
        ninsyoButton2.setTitle("認証", for: .normal)
        ninsyoButton2.setTitleColor(.blue, for: .normal)
        ninsyoButton2.addTarget(self, action: #selector(ninsyoButton2Tap), for: .touchUpInside)
        ninsyoView2.addSubview(ninsyoButton2)
        
    }
    
    
    @objc func shopButtonTap(){
        shopView1.frame = CGRect(x: 0, y: 0, width: width, height: height)
        shopView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.scrollView.addSubview(shopView1)
        
        shopView2.frame = CGRect(x: 5, y: 30, width: width - 10, height: height - 240)
        shopView2.backgroundColor = .systemGray5
        shopView2.layer.cornerRadius = 5
        shopView1.addSubview(shopView2)
        
        shopViewBackButton.frame = CGRect(x: shopView2.frame.width - 50, y: 10, width: 30, height: 30)
        shopViewBackButton.backgroundColor = .white
        shopViewBackButton.layer.cornerRadius = 15
        shopViewBackButton.setTitle("×", for: .normal)
        shopViewBackButton.setTitleColor(.systemGray2, for: .normal)
        shopViewBackButton.addTarget(self, action: #selector(shopViewBackButtonTap), for: .touchUpInside)
        shopView2.addSubview(shopViewBackButton)
        
        shopViewLabel1.frame = CGRect(x: 5, y: 40, width: 70, height: 15)
        shopViewLabel1.text = "利用店舗"
        shopViewLabel1.font = UIFont.systemFont(ofSize: 12)
        shopView2.addSubview(shopViewLabel1)
        
        shopViewLabel3.frame = CGRect(x: 80, y: 40, width: shopView2.frame.width - 100, height: 15)
        shopViewLabel3.backgroundColor = .white
        shopViewLabel3.textColor = .red
        shopViewLabel3.layer.cornerRadius = 5
        shopView2.addSubview(shopViewLabel3)
        
        shopViewLabel2.frame = CGRect(x: 0, y: 70, width: width, height: 50)
        shopViewLabel2.numberOfLines = 2
        shopViewLabel2.text = "他の店舗でご利用の場合は、以下のリストから\nご利用の店舗を選択してください。"
        shopViewLabel2.textAlignment = NSTextAlignment.center
        shopViewLabel2.font = UIFont.systemFont(ofSize: 12)
        shopView2.addSubview(shopViewLabel2)
        
        shopViewButton1.frame = CGRect(x: 10, y: 130, width: shopView2.frame.width - 20, height: 30)
        shopViewButton1.setTitle("本店", for: .normal)
        shopViewButton1.setTitleColor(.black, for: .normal)
        shopViewButton1.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton1.addTarget(self, action: #selector(shopViewButton1Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton1)
        
        shopViewLine1.frame = CGRect(x: 10, y: 160, width: shopView2.frame.width - 20, height: 1)
        shopViewLine1.backgroundColor = .black
        shopView2.addSubview(shopViewLine1)
        
        shopViewButton2.frame = CGRect(x: 10, y: 161, width: shopView2.frame.width - 20, height: 30)
        shopViewButton2.setTitle("東バイパス店", for: .normal)
        shopViewButton2.setTitleColor(.black, for: .normal)
        shopViewButton2.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton2.addTarget(self, action: #selector(shopViewButton2Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton2)
        
        shopViewLine2.frame = CGRect(x: 10, y: 191, width: shopView2.frame.width - 20, height: 1)
        shopViewLine2.backgroundColor = .black
        shopView2.addSubview(shopViewLine2)
        
        shopViewButton3.frame = CGRect(x: 10, y: 192, width: shopView2.frame.width - 20, height: 30)
        shopViewButton3.setTitle("光の森店", for: .normal)
        shopViewButton3.setTitleColor(.black, for: .normal)
        shopViewButton3.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton3.addTarget(self, action: #selector(shopViewButton3Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton3)
        
        shopViewLine3.frame = CGRect(x: 10, y: 222, width: shopView2.frame.width - 20, height: 1)
        shopViewLine3.backgroundColor = .black
        shopView2.addSubview(shopViewLine3)
        
        shopViewButton4.frame = CGRect(x: 10, y: 223, width: shopView2.frame.width - 20, height: 30)
        shopViewButton4.setTitle("富合店", for: .normal)
        shopViewButton4.setTitleColor(.black, for: .normal)
        shopViewButton4.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton4.addTarget(self, action: #selector(shopViewButton4Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton4)
        
        shopViewLine4.frame = CGRect(x: 10, y: 253, width: shopView2.frame.width - 20, height: 1)
        shopViewLine4.backgroundColor = .black
        shopView2.addSubview(shopViewLine4)
        
        shopViewButton5.frame = CGRect(x: 10, y: 254, width: shopView2.frame.width - 20, height: 30)
        shopViewButton5.setTitle("イオンタウン田崎店", for: .normal)
        shopViewButton5.setTitleColor(.black, for: .normal)
        shopViewButton5.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton5.addTarget(self, action: #selector(shopViewButton5Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton5)
        
        shopViewLine5.frame = CGRect(x: 10, y: 284, width: shopView2.frame.width - 20, height: 1)
        shopViewLine5.backgroundColor = .black
        shopView2.addSubview(shopViewLine5)
        
        shopViewButton6.frame = CGRect(x: 10, y: 285, width: shopView2.frame.width - 20, height: 30)
        shopViewButton6.setTitle("荒尾グリーンランド前店", for: .normal)
        shopViewButton6.setTitleColor(.black, for: .normal)
        shopViewButton6.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton6.addTarget(self, action: #selector(shopViewButton6Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton6)
        
        shopViewLine6.frame = CGRect(x: 10, y: 315, width: shopView2.frame.width - 20, height: 1)
        shopViewLine6.backgroundColor = .black
        shopView2.addSubview(shopViewLine6)
        
        shopViewButton7.frame = CGRect(x: 10, y: 316, width: shopView2.frame.width - 20, height: 30)
        shopViewButton7.setTitle("鹿本店", for: .normal)
        shopViewButton7.setTitleColor(.black, for: .normal)
        shopViewButton7.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton7.addTarget(self, action: #selector(shopViewButton7Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton7)
        
        shopViewLine7.frame = CGRect(x: 10, y: 346, width: shopView2.frame.width - 20, height: 1)
        shopViewLine7.backgroundColor = .black
        shopView2.addSubview(shopViewLine7)
        
        shopViewButton8.frame = CGRect(x: 10, y: 347, width: shopView2.frame.width - 20, height: 30)
        shopViewButton8.setTitle("有明店", for: .normal)
        shopViewButton8.setTitleColor(.black, for: .normal)
        shopViewButton8.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton8.addTarget(self, action: #selector(shopViewButton8Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton8)
        
        shopViewLine8.frame = CGRect(x: 10, y: 378, width: shopView2.frame.width - 20, height: 1)
        shopViewLine8.backgroundColor = .black
        shopView2.addSubview(shopViewLine8)
        
        shopViewButton9.frame = CGRect(x: 10, y: 379, width: shopView2.frame.width - 20, height: 30)
        shopViewButton9.setTitle("水俣店", for: .normal)
        shopViewButton9.setTitleColor(.black, for: .normal)
        shopViewButton9.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton9.addTarget(self, action: #selector(shopViewButton9Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton9)
        
        shopViewLine9.frame = CGRect(x: 10, y: 409, width: shopView2.frame.width - 20, height: 1)
        shopViewLine9.backgroundColor = .black
        shopView2.addSubview(shopViewLine9)
    }
    
    
    @objc func useTapped(){
        self.cuponLabel4.text = "チャーシュー増量無料クーポン"
        self.view.addSubview(cuponView)
        self.usedNumber = 1
        
    }
    @objc func useTapped2(){
        self.cuponLabel4.text = "ギョーザ一皿無料クーポン"
        self.view.addSubview(cuponView)
        self.usedNumber = 2
    }
    @objc func useTapped3(){
        self.cuponLabel4.text = "麺大盛無料クーポン"
        self.view.addSubview(cuponView)
        self.usedNumber = 3
    }
    @objc func useTapped4(){
        self.cuponLabel4.text = "ギョーザ一皿無料クーポン"
        self.view.addSubview(cuponView)
        self.usedNumber = 4
    }
    @objc func viewButtonTapped(){
        
        self.useView1.frame = CGRect(x: 0, y: 0, width: self.width, height: self.height)
        self.useView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.scrollView.addSubview(useView1)
        
        self.useView2.frame = CGRect(x: 5, y: self.height / 4, width: self.width - 10, height: self.height / 4)
        self.useView2.layer.cornerRadius = 5
        self.useView2.backgroundColor = .white
        self.useView1.addSubview(self.useView2)
        
        self.useLabel.frame = CGRect(x: 0, y: 10, width: self.width - 10, height: 15)
        self.useLabel.text = "利用条件"
        self.useLabel.textAlignment = NSTextAlignment.center
        self.useView2.addSubview(self.useLabel)
        
        self.useBackButton.frame = CGRect(x: self.useView2.frame.width - 50, y: 10, width: 30, height: 30)
        self.useBackButton.backgroundColor = .white
        self.useBackButton.setTitle("×", for: .normal)
        self.useBackButton.setTitleColor(.systemGray2, for: .normal)
        self.useBackButton.addTarget(self, action: #selector(useBackButtonTap), for: .touchUpInside)
        self.useView2.addSubview(useBackButton)
        
        self.useLine.frame = CGRect(x: 0, y: 40, width: self.useView2.frame.width, height: 1)
        self.useLine.backgroundColor = .black
        self.useView2.addSubview(self.useLine)
        
        self.useTextView.frame = CGRect(x: 0, y: 42, width: self.useView2.frame.width, height: self.useView2.frame.height - 42)
        self.useTextView.text = "1日1回ルーレットに挑戦できます。\n味千アプリサービスはご注文の際にご提出ください。\n本クーポン券は1名様につき1回のご利用となります。\n本クーポン券は、日本国内の味千本店、東バイパス店、光の森店、荒尾グリーンランド前店、イオンタウン田崎店、富合店、鹿本店、水俣店のみの限定となります。\n味千感謝デーではご利用できません。\nその他のクーポン券、サービス券とは併用できません。"
        self.useView2.addSubview(useTextView)
        
        
    }
    @objc func shopViewButton1Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"本店"],merge: true)
        self.shopButton.setTitle("本店", for: .normal)
        self.shopViewLabel3.text = "本店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton2Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"東バイパス店"],merge: true)
        self.shopButton.setTitle("東バイパス店", for: .normal)
        self.shopViewLabel3.text = "東バイパス店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton3Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"光の森店"],merge: true)
        self.shopButton.setTitle("光の森店", for: .normal)
        self.shopViewLabel3.text = "光の森店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton4Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"富合店"],merge: true)
        self.shopButton.setTitle("富合店", for: .normal)
        self.shopViewLabel3.text = "富合店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton5Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"イオンタウン田崎店"],merge: true)
        self.shopButton.setTitle("イオンタウン田崎店", for: .normal)
        self.shopViewLabel3.text = "イオンタウン田崎店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton6Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"荒尾グリーンランド前店"],merge: true)
        self.shopButton.setTitle("荒尾グリーンランド前店", for: .normal)
        self.shopViewLabel3.text = "荒尾グリーンランド前店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton7Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"鹿本店"],merge: true)
        self.shopButton.setTitle("鹿本店", for: .normal)
        self.shopViewLabel3.text = "鹿本店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton8Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"有明店"],merge: true)
        self.shopButton.setTitle("有明店", for: .normal)
        self.shopViewLabel3.text = "有明店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton9Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"水俣店"],merge: true)
        self.shopButton.setTitle("水俣店", for: .normal)
        self.shopViewLabel3.text = "水俣店"
        
        shopView1.removeFromSuperview()
    }
    
    @objc func cuponButtonTap(){
        self.view.addSubview(ninsyoView1)
    }
    @objc func ninsyoButton1Tap(){
        cuponView.removeFromSuperview()
        ninsyoView1.removeFromSuperview()
    }
    @objc func ninsyoButton2Tap(){
        
        if ninsyoTextField.text == String(pass){
            let userID1 = Auth.auth().currentUser?.uid
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID1))!").getDocument{(snap, error) in
                    if let error = error {
                        fatalError("エラーした\(error)")
                    }
                    guard let data: [String : Any] = snap?.data() else {
                        print("ミスってる")
                        return
                    }
                    if self.usedNumber == 1{
                        let a = data["cuponNumber1"]! as? Int
                        let b = a! - 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID1))!").setData(["cuponNumber":b],merge: true)
                    }else if self.usedNumber == 2{
                        let a = data["cuponNumber2"]! as? Int
                        let b = a! - 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID1))!").setData(["cuponNumber":b],merge: true)
                    }else if self.usedNumber == 3{
                        let a = data["oomoriCupon"]! as? Int
                        let b = a! - 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID1))!").setData(["oomoriCupon":b],merge: true)
                    }else if self.usedNumber == 4{
                        let a = data["gyozaCupon"]! as? Int
                        let b = a! - 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID1))!").setData(["gyozaCupon":b],merge: true)
                    }
                    
                }
            
            SVProgressHUD.showSuccess(withStatus: "クーポンを使用しました。")
            cuponView.removeFromSuperview()
            ninsyoView1.removeFromSuperview()
        }else{
            SVProgressHUD.showError(withStatus: "認証番号が違います。")
            cuponView.removeFromSuperview()
            ninsyoView1.removeFromSuperview()
        }
    }
    
    @objc func useBackButtonTap(){
        useView1.removeFromSuperview()
    }
    @objc func shopViewBackButtonTap(){
        shopView1.removeFromSuperview()
    }
    @objc func cuponBackButtonTap(){
        cuponView.removeFromSuperview()
    }
    
}
extension cuponViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
}
