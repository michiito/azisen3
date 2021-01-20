
//buy2,と基本は同じ
//97〜987 商品ボタンの配置、レイアウト、アクション設定
//991〜1375 サイドメニュー内のボタンなど
//1380〜1586 お気に入りが押されているかの判別
//1605〜1912 商品ボタンのアクション
//1913〜1942 サイドメニューの出し入れ
//1943〜2080　サイドメニューのボタンのアクション




import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD


class buyViewController: UIViewController, UIGestureRecognizerDelegate {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    let starLabel1 = UILabel()
    let starLabel2 = UILabel()
    let starLabel3 = UILabel()
    let starLabel4 = UILabel()
    let starLabel5 = UILabel()
    let starLabel6 = UILabel()
    let starLabel7 = UILabel()
    let starLabel8 = UILabel()
    let starLabel9 = UILabel()
    let starLabel10 = UILabel()
    let starLabel11 = UILabel()
    let starLabel12 = UILabel()
    let starLabel13 = UILabel()
    let starLabel14 = UILabel()
    let starLabel15 = UILabel()
    let starLabel16 = UILabel()
    let starLabel17 = UILabel()
    let starLabel18 = UILabel()
    let starLabel19 = UILabel()
    let starLabel20 = UILabel()
    let starLabel21 = UILabel()
    let starLabel22 = UILabel()
    let starLabel23 = UILabel()
    let starLabel24 = UILabel()
    let starLabel25 = UILabel()
    let starLabel26 = UILabel()
    let starLabel27 = UILabel()
    let starLabel28 = UILabel()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "お買い物"
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped))
        
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
        
        SVProgressHUD.show()
        
        let menuView = UIView()
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("アイテム", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = .black
        button1.layer.cornerRadius = 10
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button1.addTarget(self, action: #selector(tapEvent1a), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button1)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: menuView.frame.width / 3, y: 5, width: menuView.frame.width / 3, height: 30)
        button2.setTitle("おすすめアイテム", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.adjustsFontSizeToFitWidth = true
        button2.layer.cornerRadius = 10
        button2.addTarget(self, action: #selector(tapEvent22), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button2)
        
        let button3 = UIButton()
        button3.frame = CGRect(x: menuView.frame.width / 3 * 2, y: 5, width: menuView.frame.width / 3, height: 30)
        button3.setTitle("お気に入り", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.titleLabel?.adjustsFontSizeToFitWidth = true
        button3.layer.cornerRadius = 10
        button3.addTarget(self, action: #selector(tapEvent33), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button3)
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 40, width: width, height:height)
        self.view.addSubview(scrollView)
        
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: width, height: 130)
        let images = UIImage(named: "menu")
        image.image = images
        scrollView.addSubview(image)
        
        let ramen = UIView()
        ramen.frame = CGRect(x: 0, y: 130, width: width, height: 35)
        ramen.backgroundColor = .black
        scrollView.addSubview(ramen)
        
        let ramen1 = UILabel()
        ramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        ramen1.text = "ラーメン"
        ramen1.textColor = .white
        ramen1.textAlignment = NSTextAlignment.center
        ramen1.font = UIFont.systemFont(ofSize: 15)
        ramen.addSubview(ramen1)
        
        let mbutton1 = UIButton()
        let mimage1 = UIImage(named: "ok1")
        mbutton1.frame = CGRect(x: 0, y: 170, width: width/3, height: 150)
        mbutton1.setImage(mimage1, for: .normal)
        mbutton1.titleLabel?.numberOfLines = 0
        mbutton1.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton1.setTitle("味千とんこつ\nラ−メン　２…\n430円(税込み)", for: .normal)
        mbutton1.setTitleColor(.black, for: .normal)
        mbutton1.addTarget(self, action: #selector(tapEvents1), for: .touchUpInside)
        mbutton1.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton1.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton1)
        
        let mview1 = UIView()
        mview1.frame = CGRect(x: width/3-30, y: 240, width: 24, height: 24)
        mview1.backgroundColor = .white
        mview1.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview1)
        
        
        starLabel1.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel1.text = "★"
        starLabel1.font = UIFont.systemFont(ofSize: 18)
        starLabel1.textColor = .gray
        mview1.addSubview(starLabel1)
        
        
        let mbutton2 = UIButton()
        let mimage2 = UIImage(named: "ok2")
        mbutton2.frame = CGRect(x: width/3, y: 170, width: width/3, height: 150)
        mbutton2.setImage(mimage2, for: .normal)
        mbutton2.titleLabel?.numberOfLines = 0
        mbutton2.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton2.setTitle("[味千×桂花]\n桂花（３食）…\n2,754円（税込み）", for: .normal)
        mbutton2.setTitleColor(.black, for: .normal)
        mbutton2.addTarget(self, action: #selector(tapEvents2), for: .touchUpInside)
        mbutton2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton2.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton2)
        
        let mview2 = UIView()
        mview2.frame = CGRect(x: width*0.667-30, y: 240, width: 24, height: 24)
        mview2.backgroundColor = .white
        mview2.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview2)
        
        
        starLabel2.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel2.text = "★"
        starLabel2.font = UIFont.systemFont(ofSize: 18)
        starLabel2.textColor = .gray
        mview2.addSubview(starLabel2)
        
        
        let mbutton3 = UIButton()
        let mimage3 = UIImage(named: "ok3")
        mbutton3.frame = CGRect(x: width-width/3, y: 170, width: width/3, height: 150)
        mbutton3.setImage(mimage3, for: .normal)
        mbutton3.titleLabel?.numberOfLines = 0
        mbutton3.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton3.setTitle("味千とんこつ\nラーメンギフ…\n2,730円（税込み）", for: .normal)
        mbutton3.setTitleColor(.black, for: .normal)
        mbutton3.addTarget(self, action: #selector(tapEvents3), for: .touchUpInside)
        mbutton3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton3.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton3.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton3)
        
        let mview3 = UIView()
        mview3.frame = CGRect(x: width-30, y: 240, width: 24, height: 24)
        mview3.backgroundColor = .white
        mview3.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview3)
        

        starLabel3.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel3.text = "★"
        starLabel3.font = UIFont.systemFont(ofSize: 18)
        starLabel3.textColor = .gray
        mview3.addSubview(starLabel3)
        
        let mbutton4 = UIButton()
        let mimage4 = UIImage(named: "ok4")
        mbutton4.frame = CGRect(x: 0, y: 320, width: width/3, height: 150)
        mbutton4.setImage(mimage4, for: .normal)
        mbutton4.titleLabel?.numberOfLines = 0
        mbutton4.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton4.setTitle("熊本味千ラーメ\nンギフトセ…\n4,420円（税込み）", for: .normal)
        mbutton4.setTitleColor(.black, for: .normal)
        mbutton4.addTarget(self, action: #selector(tapEvents4), for: .touchUpInside)
        mbutton4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton4.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton4.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton4)
        
        let mview4 = UIView()
        mview4.frame = CGRect(x:width/3-30, y: 390, width: 24, height: 24)
        mview4.backgroundColor = .white
        mview4.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview4)

        starLabel4.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel4.text = "★"
        starLabel4.font = UIFont.systemFont(ofSize: 18)
        starLabel4.textColor = .gray
        mview4.addSubview(starLabel4)
        
        
        let mbutton5 = UIButton()
        let mimage5 = UIImage(named: "ok6")
        mbutton5.frame = CGRect(x: width/3, y: 320, width: width/3, height: 150)
        mbutton5.setImage(mimage5, for: .normal)
        mbutton5.titleLabel?.numberOfLines = 0
        mbutton5.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton5.setTitle("熊本豚骨ラーメ\nン２食入り…\n280円（税込み）", for: .normal)
        mbutton5.setTitleColor(.black, for: .normal)
        mbutton5.addTarget(self, action: #selector(tapEvents5), for: .touchUpInside)
        mbutton5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton5.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton5.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton5)
        
        let mview5 = UIView()
        mview5.frame = CGRect(x:width*0.667-30, y: 390, width: 24, height: 24)
        mview5.backgroundColor = .white
        mview5.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview5)
        

        starLabel5.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel5.text = "★"
        starLabel5.font = UIFont.systemFont(ofSize: 18)
        starLabel5.textColor = .gray
        mview5.addSubview(starLabel5)
        
        
        let mbutton6 = UIButton()
        let mimage6 = UIImage(named: "ok7")
        mbutton6.frame = CGRect(x: width-width/3, y: 320, width: width/3, height: 150)
        mbutton6.setImage(mimage6, for: .normal)
        mbutton6.titleLabel?.numberOfLines = 0
        mbutton6.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton6.setTitle("匠ラーメン＋味\n千拉麺丼セット\n2,000円（税込み）", for: .normal)
        mbutton6.setTitleColor(.black, for: .normal)
        mbutton6.addTarget(self, action: #selector(tapEvents6), for: .touchUpInside)
        mbutton6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton6.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton6.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton6)
        
        let mview6 = UIView()
        mview6.frame = CGRect(x:width-30, y: 390, width: 24, height: 24)
        mview6.backgroundColor = .white
        mview6.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview6)
        

        starLabel6.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel6.text = "★"
        starLabel6.font = UIFont.systemFont(ofSize: 18)
        starLabel6.textColor = .gray
        mview6.addSubview(starLabel6)
        
        
        let mbutton7 = UIButton()
        let mimage7 = UIImage(named: "ok8")
        mbutton7.frame = CGRect(x: 0, y: 470, width: width/3, height: 150)
        mbutton7.setImage(mimage7, for: .normal)
        mbutton7.titleLabel?.numberOfLines = 0
        mbutton7.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton7.setTitle("[味千拉麺]　匠\nラーメン１食…\n594円（税込み）", for: .normal)
        mbutton7.setTitleColor(.black, for: .normal)
        mbutton7.addTarget(self, action: #selector(tapEvents7), for: .touchUpInside)
        mbutton7.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton7.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton7.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton7)
        
        let mview7 = UIView()
        mview7.frame = CGRect(x:width/3-30, y: 540, width: 24, height: 24)
        mview7.backgroundColor = .white
        mview7.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview7)
        

        starLabel7.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel7.text = "★"
        starLabel7.font = UIFont.systemFont(ofSize: 18)
        starLabel7.textColor = .gray
        mview7.addSubview(starLabel7)
        
        
        let mbutton8 = UIButton()
        let mimage8 = UIImage(named: "ok9")
        mbutton8.frame = CGRect(x: width/3, y: 470, width: width/3, height: 150)
        mbutton8.setImage(mimage8, for: .normal)
        mbutton8.titleLabel?.numberOfLines = 0
        mbutton8.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton8.setTitle("[味千拉麺]　匠\nラーメン５食…\n2,970円（税込み）", for: .normal)
        mbutton8.setTitleColor(.black, for: .normal)
        mbutton8.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton8.addTarget(self, action: #selector(tapEvents8), for: .touchUpInside)
        mbutton8.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton8.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton8)
        
        let mview8 = UIView()
        mview8.frame = CGRect(x:width*0.667-30, y: 540, width: 24, height: 24)
        mview8.backgroundColor = .white
        mview8.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview8)
        

        starLabel8.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel8.text = "★"
        starLabel8.font = UIFont.systemFont(ofSize: 18)
        starLabel8.textColor = .gray
        mview8.addSubview(starLabel8)
        
        
        let mbutton9 = UIButton()
        let mimage9 = UIImage(named: "ok10")
        mbutton9.frame = CGRect(x:width-width/3, y: 470, width: width/3, height: 150)
        mbutton9.setImage(mimage9, for: .normal)
        mbutton9.titleLabel?.numberOfLines = 0
        mbutton9.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton9.setTitle("[味千拉麺]　匠\nラーメン１０…\n5,940円（税込み）", for: .normal)
        mbutton9.addTarget(self, action: #selector(tapEvents9), for: .touchUpInside)
        mbutton9.setTitleColor(.black, for: .normal)
        mbutton9.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton9.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton9.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton9)
        
        let mview9 = UIView()
        mview9.frame = CGRect(x:width-30, y: 540, width: 24, height: 24)
        mview9.backgroundColor = .white
        mview9.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview9)
        

        starLabel9.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel9.text = "★"
        starLabel9.font = UIFont.systemFont(ofSize: 18)
        starLabel9.textColor = .gray
        mview9.addSubview(starLabel9)
        
        
        let aramen = UIView()
        aramen.frame = CGRect(x: 0, y: 620, width: width, height: 35)
        aramen.backgroundColor = .black
        scrollView.addSubview(aramen)
        
        let aramen1 = UILabel()
        aramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        aramen1.text = "ギフト"
        aramen1.textColor = .white
        aramen1.textAlignment = NSTextAlignment.center
        aramen1.font = UIFont.systemFont(ofSize: 15)
        aramen.addSubview(aramen1)
        
        let mbutton10 = UIButton()
        let mimage10 = UIImage(named: "ok11")
        mbutton10.frame = CGRect(x:0, y: 655, width: width/3, height: 150)
        mbutton10.setImage(mimage10, for: .normal)
        mbutton10.titleLabel?.numberOfLines = 0
        mbutton10.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton10.setTitle("味千とんこつ\nラーメンギフ…\n2,730円（税込み）", for: .normal)
        mbutton10.addTarget(self, action: #selector(tapEvents10), for: .touchUpInside)
        mbutton10.setTitleColor(.black, for: .normal)
        mbutton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton10.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton10)
        
        let mview10 = UIView()
        mview10.frame = CGRect(x:width/3-30, y: 725, width: 24, height: 24)
        mview10.backgroundColor = .white
        mview10.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview10)
        

        starLabel10.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel10.text = "★"
        starLabel10.font = UIFont.systemFont(ofSize: 18)
        starLabel10.textColor = .gray
        mview10.addSubview(starLabel10)
        
        
        let mbutton11 = UIButton()
        let mimage11 = UIImage(named: "ok12")
        mbutton11.frame = CGRect(x:width/3, y: 655, width: width/3, height: 150)
        mbutton11.setImage(mimage11, for: .normal)
        mbutton11.titleLabel?.numberOfLines = 0
        mbutton11.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton11.setTitle("熊本味千ラーメ\nンギフトセッ…\n4,420円（税込み）", for: .normal)
        mbutton11.setTitleColor(.black, for: .normal)
        mbutton11.addTarget(self, action: #selector(tapEvents11), for: .touchUpInside)
        mbutton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton11.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton11)
        
        let mview11 = UIView()
        mview11.frame = CGRect(x:width*0.667-30, y: 725, width: 24, height: 24)
        mview11.backgroundColor = .white
        mview11.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview11)
        

        starLabel11.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel11.text = "★"
        starLabel11.font = UIFont.systemFont(ofSize: 18)
        starLabel11.textColor = .gray
        mview11.addSubview(starLabel11)
        
        
        let mbutton12 = UIButton()
        let mimage12 = UIImage(named: "ok13")
        mbutton12.frame = CGRect(x:width-width/3, y: 655, width: width/3, height: 150)
        mbutton12.setImage(mimage12, for: .normal)
        mbutton12.titleLabel?.numberOfLines = 0
        mbutton12.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton12.setTitle("ギフト　黒マー\n油ラーメ…\n900円（税込）", for: .normal)
        mbutton12.addTarget(self, action: #selector(tapEvents12), for: .touchUpInside)
        mbutton12.setTitleColor(.black, for: .normal)
        mbutton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton12.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton12)
        
        let mview12 = UIView()
        mview12.frame = CGRect(x:width-30, y: 725, width: 24, height: 24)
        mview12.backgroundColor = .white
        mview12.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview12)
        

        starLabel12.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel12.text = "★"
        starLabel12.font = UIFont.systemFont(ofSize: 18)
        starLabel12.textColor = .gray
        mview12.addSubview(starLabel12)
        
        
        let mbutton13 = UIButton()
        let mimage13 = UIImage(named: "ok14")
        mbutton13.frame = CGRect(x:0, y: 805, width: width/3, height: 150)
        mbutton13.setImage(mimage13, for: .normal)
        mbutton13.titleLabel?.numberOfLines = 0
        mbutton13.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton13.setTitle("ギフト　味千\nラーメンBOX…\n900円（税込み）", for: .normal)
        mbutton13.addTarget(self, action: #selector(tapEvents13), for: .touchUpInside)
        mbutton13.setTitleColor(.black, for: .normal)
        mbutton13.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton13.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton13.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton13)
        
        let mview13 = UIView()
        mview13.frame = CGRect(x:width*0.667-30, y: 875, width: 24, height: 24)
        mview13.backgroundColor = .white
        mview13.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview13)
        

        starLabel13.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel13.text = "★"
        starLabel13.font = UIFont.systemFont(ofSize: 18)
        starLabel13.textColor = .gray
        mview13.addSubview(starLabel13)
        
        let mbutton14 = UIButton()
        let mimage14 = UIImage(named: "ok15")
        mbutton14.frame = CGRect(x:width / 3, y: 805, width: width/3, height: 150)
        mbutton14.setImage(mimage14, for: .normal)
        mbutton14.titleLabel?.numberOfLines = 0
        mbutton14.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton14.setTitle("味千ラーメン\nBOX×２箱…\n2,800円（税込み）", for: .normal)
        mbutton14.addTarget(self, action: #selector(tapEvents14), for: .touchUpInside)
        mbutton14.setTitleColor(.black, for: .normal)
        mbutton14.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton14.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton14.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton14)
        
        let mview14 = UIView()
        mview14.frame = CGRect(x:width*0.667-30, y: 875, width: 24, height: 24)
        mview14.backgroundColor = .white
        mview14.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview14)
        

        starLabel14.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel14.text = "★"
        starLabel14.font = UIFont.systemFont(ofSize: 18)
        starLabel14.textColor = .gray
        mview14.addSubview(starLabel14)
        
        let bramen = UIView()
        bramen.frame = CGRect(x: 0, y: 955, width: width, height: 35)
        bramen.backgroundColor = .black
        scrollView.addSubview(bramen)
        
        let bramen1 = UILabel()
        bramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        bramen1.text = "トッピング"
        bramen1.textColor = .white
        bramen1.textAlignment = NSTextAlignment.center
        bramen1.font = UIFont.systemFont(ofSize: 15)
        bramen.addSubview(bramen1)
        
        let mbutton15 = UIButton()
        let mimage15 = UIImage(named: "ok16")
        mbutton15.frame = CGRect(x:0, y: 990, width: width/3, height: 150)
        mbutton15.setImage(mimage15, for: .normal)
        mbutton15.titleLabel?.numberOfLines = 0
        mbutton15.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton15.setTitle("[冷蔵配送]く\nまもと桂花特…\n519円（税込み）", for: .normal)
        mbutton15.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton15.setTitleColor(.black, for: .normal)
        mbutton15.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton15.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton15.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton15)
        
        let mview15 = UIView()
        mview15.frame = CGRect(x:width/3-30, y: 1060, width: 24, height: 24)
        mview15.backgroundColor = .white
        mview15.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview15)
        

        starLabel15.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel15.text = "★"
        starLabel15.font = UIFont.systemFont(ofSize: 18)
        starLabel15.textColor = .gray
        mview15.addSubview(starLabel15)
        
        
        let mbutton16 = UIButton()
        let mimage16 = UIImage(named: "ok17")
        mbutton16.frame = CGRect(x:width/3, y: 990, width: width/3, height: 150)
        mbutton16.setImage(mimage16, for: .normal)
        mbutton16.titleLabel?.numberOfLines = 0
        mbutton16.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton16.setTitle("ラーメン特製ピ\nリ辛ソー…\n400円（税込み）", for: .normal)
        mbutton16.setTitleColor(.black, for: .normal)
        mbutton16.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton16.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton16.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton16.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton16)
        
        let mview16 = UIView()
        mview16.frame = CGRect(x:width*0.667-30, y: 1060, width: 24, height: 24)
        mview16.backgroundColor = .white
        mview16.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview16)
        

        starLabel16.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel16.text = "★"
        starLabel16.font = UIFont.systemFont(ofSize: 18)
        starLabel16.textColor = .gray
        mview16.addSubview(starLabel16)
        
        
        let mbutton17 = UIButton()
        let mimage17 = UIImage(named: "ok18")
        mbutton17.frame = CGRect(x:width-width/3, y: 990, width: width/3, height: 150)
        mbutton17.setImage(mimage17, for: .normal)
        mbutton17.titleLabel?.numberOfLines = 0
        mbutton17.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton17.setTitle("特製味付けメン\nマ\n864円（税込）", for: .normal)
        mbutton17.addTarget(self, action: #selector(tapEvents17), for: .touchUpInside)
        mbutton17.setTitleColor(.black, for: .normal)
        mbutton17.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton17.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton17.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton17)
        
        let mview17 = UIView()
        mview17.frame = CGRect(x:width-30, y: 1060, width: 24, height: 24)
        mview17.backgroundColor = .white
        mview17.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview17)
        

        starLabel17.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel17.text = "★"
        starLabel17.font = UIFont.systemFont(ofSize: 18)
        starLabel17.textColor = .gray
        mview17.addSubview(starLabel17)
        
        let cramen = UIView()
        cramen.frame = CGRect(x: 0, y: 1140, width: width, height: 35)
        cramen.backgroundColor = .black
        scrollView.addSubview(cramen)
        
        let cramen1 = UILabel()
        cramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        cramen1.text = "太平燕"
        cramen1.textColor = .white
        cramen1.textAlignment = NSTextAlignment.center
        cramen1.font = UIFont.systemFont(ofSize: 15)
        cramen.addSubview(bramen1)
        
        
        let mbutton18 = UIButton()
        let mimage18 = UIImage(named: "ok19")
        mbutton18.frame = CGRect(x:0, y: 1175, width: width/3, height: 150)
        mbutton18.setImage(mimage18, for: .normal)
        mbutton18.titleLabel?.numberOfLines = 0
        mbutton18.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton18.setTitle("熊本名物　太平\n燕　２食１セット\n650円（税込み）", for: .normal)
        mbutton18.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton18.setTitleColor(.black, for: .normal)
        mbutton18.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton18.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton18.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton18)
        
        let mview18 = UIView()
        mview18.frame = CGRect(x:width/3-30, y: 1245, width: 24, height: 24)
        mview18.backgroundColor = .white
        mview18.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview18)
        

        starLabel18.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel18.text = "★"
        starLabel18.font = UIFont.systemFont(ofSize: 18)
        starLabel18.textColor = .gray
        mview18.addSubview(starLabel18)
        
        
        let mbutton19 = UIButton()
        let mimage19 = UIImage(named: "ok20")
        mbutton19.frame = CGRect(x:width/3, y: 1175, width: width/3, height: 150)
        mbutton19.setImage(mimage19, for: .normal)
        mbutton19.titleLabel?.numberOfLines = 0
        mbutton19.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton19.setTitle("熊本名物　太平\n燕２食２セッ…\n1,300円（税込み）", for: .normal)
        mbutton19.setTitleColor(.black, for: .normal)
        mbutton19.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton19.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton19.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton19.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton19)
        
        let mview19 = UIView()
        mview19.frame = CGRect(x:width*0.667-30, y: 1245, width: 24, height: 24)
        mview19.backgroundColor = .white
        mview19.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview19)
        

        starLabel19.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel19.text = "★"
        starLabel19.font = UIFont.systemFont(ofSize: 18)
        starLabel19.textColor = .gray
        mview19.addSubview(starLabel19)
        
        
        let mbutton20 = UIButton()
        let mimage20 = UIImage(named: "ok21")
        mbutton20.frame = CGRect(x:width-width/3, y: 1175, width: width/3, height: 150)
        mbutton20.setImage(mimage20, for: .normal)
        mbutton20.titleLabel?.numberOfLines = 0
        mbutton20.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton20.setTitle("熊本名物　太平\n燕２食４セット\n2,600円（税込）", for: .normal)
        mbutton20.addTarget(self, action: #selector(tapEvents17), for: .touchUpInside)
        mbutton20.setTitleColor(.black, for: .normal)
        mbutton20.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton20.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton20.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton20)
        
        let mview20 = UIView()
        mview20.frame = CGRect(x:width-30, y: 1245, width: 24, height: 24)
        mview20.backgroundColor = .white
        mview20.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview20)
        

        starLabel20.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel20.text = "★"
        starLabel20.font = UIFont.systemFont(ofSize: 18)
        starLabel20.textColor = .gray
        mview20.addSubview(starLabel20)
        
        let mbutton21 = UIButton()
        let mimage21 = UIImage(named: "ok22")
        mbutton21.frame = CGRect(x:0, y: 1325, width: width/3, height: 150)
        mbutton21.setImage(mimage21, for: .normal)
        mbutton21.titleLabel?.numberOfLines = 0
        mbutton21.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton21.setTitle("熊本名物　太平\n燕　２食６セット\n3,900円（税込み）", for: .normal)
        mbutton21.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton21.setTitleColor(.black, for: .normal)
        mbutton21.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton21.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton21.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton21)
        
        let mview21 = UIView()
        mview21.frame = CGRect(x:width/3-30, y: 1395, width: 24, height: 24)
        mview21.backgroundColor = .white
        mview21.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview18)
        

        starLabel21.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel21.text = "★"
        starLabel21.font = UIFont.systemFont(ofSize: 18)
        starLabel21.textColor = .gray
        mview21.addSubview(starLabel21)
        
        
        let mbutton22 = UIButton()
        let mimage22 = UIImage(named: "ok23")
        mbutton22.frame = CGRect(x:width/3, y: 1325, width: width/3, height: 150)
        mbutton22.setImage(mimage22, for: .normal)
        mbutton22.titleLabel?.numberOfLines = 0
        mbutton22.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton22.setTitle("熊本名物　太平\n燕２食入…\n6,500円（税込み）", for: .normal)
        mbutton22.setTitleColor(.black, for: .normal)
        mbutton22.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton22.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton22.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton22.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton22)
        
        let mview22 = UIView()
        mview22.frame = CGRect(x:width*0.667-30, y: 1395, width: 24, height: 24)
        mview22.backgroundColor = .white
        mview22.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview22)
        

        starLabel22.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel22.text = "★"
        starLabel22.font = UIFont.systemFont(ofSize: 18)
        starLabel22.textColor = .gray
        mview22.addSubview(starLabel22)
        
        
        let mbutton23 = UIButton()
        let mimage23 = UIImage(named: "ok24")
        mbutton23.frame = CGRect(x:width-width/3, y: 1325, width: width/3, height: 150)
        mbutton23.setImage(mimage23, for: .normal)
        mbutton23.titleLabel?.numberOfLines = 0
        mbutton23.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton23.setTitle("[皇帝]　太平燕\nあっさりとん…\n340円（税込）", for: .normal)
        mbutton23.addTarget(self, action: #selector(tapEvents17), for: .touchUpInside)
        mbutton23.setTitleColor(.black, for: .normal)
        mbutton23.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton23.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton23.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton23)
        
        let mview23 = UIView()
        mview23.frame = CGRect(x:width-30, y: 1395, width: 24, height: 24)
        mview23.backgroundColor = .white
        mview23.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview23)
        

        starLabel23.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel23.text = "★"
        starLabel23.font = UIFont.systemFont(ofSize: 18)
        starLabel23.textColor = .gray
        mview23.addSubview(starLabel23)
        
        let mbutton24 = UIButton()
        let mimage24 = UIImage(named: "ok25")
        mbutton24.frame = CGRect(x:0, y: 1475, width: width/3, height: 150)
        mbutton24.setImage(mimage24, for: .normal)
        mbutton24.titleLabel?.numberOfLines = 0
        mbutton24.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton24.setTitle("[皇帝]　太平\n燕　チキンカ…\n340円（税込み）", for: .normal)
        mbutton24.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton24.setTitleColor(.black, for: .normal)
        mbutton24.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton24.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton24.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton24)
        
        let mview24 = UIView()
        mview24.frame = CGRect(x:width/3-30, y: 1545, width: 24, height: 24)
        mview24.backgroundColor = .white
        mview24.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview24)
        

        starLabel24.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel24.text = "★"
        starLabel24.font = UIFont.systemFont(ofSize: 18)
        starLabel24.textColor = .gray
        mview24.addSubview(starLabel24)
        
        
        let mbutton25 = UIButton()
        let mimage25 = UIImage(named: "ok25")
        mbutton25.frame = CGRect(x:width/3, y: 1475, width: width/3, height: 150)
        mbutton25.setImage(mimage25, for: .normal)
        mbutton25.titleLabel?.numberOfLines = 0
        mbutton25.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton25.setTitle("[皇帝]　太平\n燕　辛みそ…\n340円（税込み）", for: .normal)
        mbutton25.setTitleColor(.black, for: .normal)
        mbutton25.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton25.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton25.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton25.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton25)
        
        let mview25 = UIView()
        mview25.frame = CGRect(x:width*0.667-30, y: 1545, width: 24, height: 24)
        mview25.backgroundColor = .white
        mview25.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview25)
        

        starLabel25.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel25.text = "★"
        starLabel25.font = UIFont.systemFont(ofSize: 18)
        starLabel25.textColor = .gray
        mview25.addSubview(starLabel25)
        
        let dramen = UIView()
        dramen.frame = CGRect(x: 0, y: 1625, width: width, height: 35)
        dramen.backgroundColor = .black
        scrollView.addSubview(dramen)
        
        let dramen1 = UILabel()
        dramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        dramen1.text = "冷凍配送商品"
        dramen1.textColor = .white
        dramen1.textAlignment = NSTextAlignment.center
        dramen1.font = UIFont.systemFont(ofSize: 15)
        dramen.addSubview(dramen1)
        
        let mbutton26 = UIButton()
        let mimage26 = UIImage(named: "ok25")
        mbutton26.frame = CGRect(x:0, y: 1660, width: width/3, height: 150)
        mbutton26.setImage(mimage26, for: .normal)
        mbutton26.titleLabel?.numberOfLines = 0
        mbutton26.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton26.setTitle("[冷蔵配送]　く\nまもと桂花特…\n519円（税込み）", for: .normal)
        mbutton26.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton26.setTitleColor(.black, for: .normal)
        mbutton26.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton26.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton26.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton26)
        
        let mview26 = UIView()
        mview26.frame = CGRect(x:width/3-30, y: 1730, width: 24, height: 24)
        mview26.backgroundColor = .white
        mview26.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview26)
        

        starLabel26.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel26.text = "★"
        starLabel26.font = UIFont.systemFont(ofSize: 18)
        starLabel26.textColor = .gray
        mview26.addSubview(starLabel26)
        
        
        let mbutton27 = UIButton()
        let mimage27 = UIImage(named: "ok25")
        mbutton27.frame = CGRect(x:width/3, y: 1660, width: width/3, height: 150)
        mbutton27.setImage(mimage27, for: .normal)
        mbutton27.titleLabel?.numberOfLines = 0
        mbutton27.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton27.setTitle("特製味付けメン\nマ\n864円（税込み）", for: .normal)
        mbutton27.setTitleColor(.black, for: .normal)
        mbutton27.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton27.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton27.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton27.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton27)
        
        let mview27 = UIView()
        mview27.frame = CGRect(x:width*0.667-30, y: 1730, width: 24, height: 24)
        mview27.backgroundColor = .white
        mview27.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview27)

        starLabel27.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel27.text = "★"
        starLabel27.font = UIFont.systemFont(ofSize: 18)
        starLabel27.textColor = .gray
        mview27.addSubview(starLabel27)
        
        let eramen = UIView()
        eramen.frame = CGRect(x: 0, y: 1810, width: width, height: 35)
        eramen.backgroundColor = .black
        scrollView.addSubview(eramen)
        
        let eramen1 = UILabel()
        eramen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        eramen1.text = "乾麺"
        eramen1.textColor = .white
        eramen1.textAlignment = NSTextAlignment.center
        eramen1.font = UIFont.systemFont(ofSize: 15)
        eramen.addSubview(eramen1)
        
        let mbutton28 = UIButton()
        let mimage28 = UIImage(named: "ok28")
        mbutton28.frame = CGRect(x:0, y: 1845, width: width/3, height: 150)
        mbutton28.setImage(mimage28, for: .normal)
        mbutton28.titleLabel?.numberOfLines = 0
        mbutton28.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton28.setTitle("熊本豚骨ラーメ\nン２食入１セッ…\n280円（税込み）", for: .normal)
        mbutton28.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton28.setTitleColor(.black, for: .normal)
        mbutton28.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton28.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton28.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton28)
        
        let mview28 = UIView()
        mview28.frame = CGRect(x:width/3-30, y: 1915, width: 24, height: 24)
        mview28.backgroundColor = .white
        mview28.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview28)
        
        starLabel28.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel28.text = "★"
        starLabel28.font = UIFont.systemFont(ofSize: 18)
        starLabel28.textColor = .gray
        mview28.addSubview(starLabel28)
        
        scrollView.contentSize = CGSize(width: 0, height: mbutton28.layer.position.y + mbutton28.frame.height + 60)
        
        
        SVProgressHUD.dismiss()
        
        sideBar.sideView1.frame = CGRect(x: width, y: 0, width: width, height: height)
        sideBar.sideView1.backgroundColor = sideBar.color
        self.view.addSubview(sideBar.sideView1)
        
        sideBar.sideView2.frame = CGRect(x: width, y: 0, width: width, height: height)
        sideBar.sideView2.backgroundColor = .white
        self.view.addSubview(sideBar.sideView2)
        
        
        
        if  height <= 699 {
            sideBar.sideScrollView.frame = CGRect(x: width, y: 0, width: width, height: 700)
            sideBar.sideScrollView.contentSize = CGSize(width: width, height: 720)
        }else{
            sideBar.sideScrollView.frame = CGRect(x: width, y: 0, width: width, height: height)
            sideBar.sideScrollView.contentSize = CGSize(width: width, height: height)
        }
        self.view.addSubview(sideBar.sideScrollView)
        
        
        
        
        sideBar.imageView1.frame = CGRect(x: 0, y: 0, width: sideBar.sideScrollView.frame.width, height: sideBar.sideView2.frame.height / 7)
        sideBar.imageView1.setImage(sideBar.sideimage1, for: .normal)
        sideBar.imageView1.contentMode = UIView.ContentMode.scaleAspectFill
        sideBar.sideScrollView.addSubview(sideBar.imageView1)
        
        
        sideBar.imageView.image = sideBar.sideimage2
        sideBar.imageView.frame = CGRect(x: 30, y: 10, width: 60, height: 60)
        sideBar.imageView.layer.cornerRadius = 30
        sideBar.sideScrollView.addSubview(sideBar.imageView)
        
        
        sideBar.text1.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: 20, width: 50, height: 15)
        if Auth.auth().currentUser == nil{
        sideBar.text1.text = "未登録"
        }else{
            let userID = Auth.auth().currentUser?.uid
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
                if let error = error {
                    fatalError("エラーした\(error)")
                }
                guard let data: [String : Any] = snap?.data() else {
                    return
                }
                sideBar.text1.text = "\(String(describing: data["shop"]!))"
            }
        }
        sideBar.text1.font = UIFont.systemFont(ofSize: 12)
        sideBar.text1.font = UIFont.boldSystemFont(ofSize: 16)
        sideBar.sideScrollView.addSubview(sideBar.text1)
        
        sideBar.text2.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: 40, width: 90, height: 10)
        sideBar.text2.text = "マイページを見る"
        sideBar.text2.font = UIFont.systemFont(ofSize: 11)
        sideBar.sideScrollView.addSubview(sideBar.text2)
        
        
        sideBar.mView1.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7, width: 3, height: 30)
        sideBar.mView1.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView1)
        
        
        sideBar.mimageView1.image = sideBar.mimage1
        sideBar.mimageView1.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView1)
        
        
        sideBar.mbutton1.setTitle("ホーム", for: .normal)
        sideBar.mbutton1.addTarget(self, action: #selector(tapEvent1), for: .touchUpInside)
        sideBar.mbutton1.contentHorizontalAlignment = .left
        sideBar.mbutton1.setTitleColor(.black, for: .normal)
        sideBar.mbutton1.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton1)
        
        
        sideBar.lineView1.backgroundColor = .systemGray3
        sideBar.lineView1.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 31, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView1)
        
        
        sideBar.mView2.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 32, width: 3, height: 30)
        sideBar.mView2.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView2)
        
        
        sideBar.mimageView2.image = sideBar.mimage2
        sideBar.mimageView2.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 32, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView2)
        
        
        sideBar.mbutton2.setTitle("店舗情報", for: .normal)
        sideBar.mbutton2.setTitleColor(.black, for: .normal)
        sideBar.mbutton2.addTarget(self, action: #selector(tapEvents2), for: .touchUpInside)
        sideBar.mbutton2.contentHorizontalAlignment = .left
        sideBar.mbutton2.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 32, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton2)
        
        
        sideBar.lineView2.backgroundColor = .systemGray3
        sideBar.lineView2.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 63, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView2)
        
        
        sideBar.mView3.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 64, width: 3, height: 30)
        sideBar.mView3.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView3)
        
        
        sideBar.mimageView3.image = sideBar.mimage3
        sideBar.mimageView3.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 64, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView3)
        
        
        sideBar.mbutton3.setTitle("新着情報", for: .normal)
        sideBar.mbutton3.setTitleColor(.black, for: .normal)
        sideBar.mbutton3.addTarget(self, action: #selector(tapEvent3), for: .touchUpInside)
        sideBar.mbutton3.contentHorizontalAlignment = .left
        sideBar.mbutton3.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 64, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton3)
        
        
        sideBar.lineView3.backgroundColor = .systemGray3
        sideBar.lineView3.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 95, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView3)
        
        
        sideBar.mView4.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 96, width: 3, height: 30)
        sideBar.mView4.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView4)
        
        sideBar.mimageView4.image = sideBar.mimage4
        sideBar.mimageView4.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 96, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView4)
        
        sideBar.mbutton4.setTitle("クーポン", for: .normal)
        sideBar.mbutton4.addTarget(self, action: #selector(tapEvent4), for: .touchUpInside)
        sideBar.mbutton4.setTitleColor(.black, for: .normal)
        sideBar.mbutton4.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 96, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.mbutton4.contentHorizontalAlignment = .left
        sideBar.sideScrollView.addSubview(sideBar.mbutton4)
        
        
        sideBar.lineView4.backgroundColor = .systemGray3
        sideBar.lineView4.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 127, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView4)
        
        
        
        sideBar.mView5.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 128, width: 3, height: 30)
        sideBar.mView5.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView5)
        
        
        sideBar.mimageView5.image = sideBar.mimage5
        sideBar.mimageView5.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 128, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView5)
        
        sideBar.mbutton5.setTitle("マイヒストリー", for: .normal)
        sideBar.mbutton5.addTarget(self, action: #selector(tapEvent5), for: .touchUpInside)
        sideBar.mbutton5.setTitleColor(.black, for: .normal)
        sideBar.mbutton5.contentHorizontalAlignment = .left
        sideBar.mbutton5.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 128, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton5)
        
        
        sideBar.lineView5.backgroundColor = .systemGray3
        sideBar.lineView5.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 159, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView5)
        
        
        sideBar.mView6.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 160, width: 3, height: 30)
        sideBar.mView6.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView6)
        
        
        sideBar.mimageView6.image = sideBar.mimage6
        sideBar.mimageView6.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 160, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView6)
        
        
        sideBar.mbutton6.setTitle("ルーレット", for: .normal)
        sideBar.mbutton6.setTitleColor(.black, for: .normal)
        sideBar.mbutton6.addTarget(self, action: #selector(tapEvent6), for: .touchUpInside)
        sideBar.mbutton6.contentHorizontalAlignment = .left
        sideBar.mbutton6.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 160, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton6)
        
        
        sideBar.lineView6.backgroundColor = .systemGray3
        sideBar.lineView6.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 191, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView6)
        
        
        sideBar.mView7.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 192, width: 3, height: 30)
        sideBar.mView7.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView7)
        
        
        sideBar.mimageView7.image = sideBar.mimage7
        sideBar.mimageView7.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 192, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView7)
        
        
        sideBar.mbutton7.setTitle("メニュー", for: .normal)
        sideBar.mbutton7.setTitleColor(.black, for: .normal)
        sideBar.mbutton7.addTarget(self, action: #selector(tapEvent7), for: .touchUpInside)
        sideBar.mbutton7.contentHorizontalAlignment = .left
        sideBar.mbutton7.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 192, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton7)
        
        
        sideBar.lineView7.backgroundColor = .systemGray3
        sideBar.lineView7.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 223, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView7)
        
        
        sideBar.mView8.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 224, width: 3, height: 30)
        sideBar.mView8.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView8)
        
        
        sideBar.mimageView8.image = sideBar.mimage8
        sideBar.mimageView8.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 224, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView8)
        
        
        sideBar.mbutton8.setTitle("スタンプ", for: .normal)
        sideBar.mbutton8.addTarget(self, action: #selector(tapEvent8), for: .touchUpInside)
        sideBar.mbutton8.setTitleColor(.black, for: .normal)
        sideBar.mbutton8.contentHorizontalAlignment = .left
        sideBar.mbutton8.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 224, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton8)
        
        
        sideBar.lineView8.backgroundColor = .systemGray3
        sideBar.lineView8.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 255, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView8)
        
        
        sideBar.mView9.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 256, width: 3, height: 30)
        sideBar.mView9.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView9)
        
        
        sideBar.mimageView9.image = sideBar.mimage9
        sideBar.mimageView9.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 256, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView9)
        
        
        sideBar.mbutton9.setTitle("友達に紹介", for: .normal)
        sideBar.mbutton9.addTarget(self, action: #selector(tapEvent9), for: .touchUpInside)
        sideBar.mbutton9.setTitleColor(.black, for: .normal)
        sideBar.mbutton9.contentHorizontalAlignment = .left
        sideBar.mbutton9.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 256, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton9)
        
        
        sideBar.lineView9.backgroundColor = .systemGray3
        sideBar.lineView9.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 287, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView9)
        
        
        sideBar.mView10.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 288, width: 3, height: 30)
        sideBar.mView10.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView10)
        
        
        sideBar.mimageView10.image = sideBar.mimage10
        sideBar.mimageView10.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 288, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView10)
        
        
        sideBar.mbutton10.setTitle("お買い物", for: .normal)
        sideBar.mbutton10.addTarget(self, action: #selector(tapEvent10), for: .touchUpInside)
        sideBar.mbutton10.setTitleColor(.black, for: .normal)
        sideBar.mbutton10.contentHorizontalAlignment = .left
        sideBar.mbutton10.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 288, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton10)
        
        
        sideBar.lineView10.backgroundColor = .systemGray3
        sideBar.lineView10.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 319, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView10)
        
        
        sideBar.mView11.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 320, width: 3, height: 30)
        sideBar.mView11.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView11)
        
        
        sideBar.mimageView11.image = sideBar.mimage11
        sideBar.mimageView11.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 320, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView11)
        
        
        sideBar.mbutton11.setTitle("Webサイト", for: .normal)
        sideBar.mbutton11.setTitleColor(.black, for: .normal)
        sideBar.mbutton11.addTarget(self, action: #selector(tapEvent11), for: .touchUpInside)
        sideBar.mbutton11.contentHorizontalAlignment = .left
        sideBar.mbutton11.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 320, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton11)
        
        
        sideBar.lineView11.backgroundColor = .systemGray3
        sideBar.lineView11.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 351, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView11)
        
        
        sideBar.mView12.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 352, width: 3, height: 30)
        sideBar.mView12.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView12)
        
        
        sideBar.mimageView12.image = sideBar.mimage12
        sideBar.mimageView12.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 352, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView12)
        
        
        sideBar.mbutton12.setTitle("テイクアウト", for: .normal)
        sideBar.mbutton12.addTarget(self, action: #selector(tapEvent12), for: .touchUpInside)
        sideBar.mbutton12.contentHorizontalAlignment = .left
        sideBar.mbutton12.setTitleColor(.black, for: .normal)
        sideBar.mbutton12.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 352, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton12)
        
        
        sideBar.lineView12.backgroundColor = .systemGray3
        sideBar.lineView12.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 383, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView12)
        
        
        sideBar.mView13.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 384, width: 3, height: 30)
        sideBar.mView13.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView13)
        
        
        sideBar.mimageView13.image = sideBar.mimage13
        sideBar.mimageView13.frame = CGRect(x: 10, y: sideBar.sideView2.frame.height / 7 + 384, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView13)
        
        
        sideBar.mbutton13.setTitle("その他", for: .normal)
        sideBar.mbutton13.setTitleColor(.black, for: .normal)
        sideBar.mbutton13.addTarget(self, action: #selector(tapEvent13), for: .touchUpInside)
        sideBar.mbutton13.contentHorizontalAlignment = .left
        sideBar.mbutton13.frame = CGRect(x: 50, y: sideBar.sideView2.frame.height / 7 + 384, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton13)
        
        
        sideBar.lineView13.backgroundColor = .systemGray3
        sideBar.lineView13.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 415, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView13)
        
        
        sideBar.noSpace.backgroundColor = .white
        sideBar.noSpace.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 416, width: sideBar.sideView2.frame.width, height: 62)
        sideBar.sideScrollView.addSubview(sideBar.noSpace)
        
        
        sideBar.backButton.frame = CGRect(x: 0, y: sideBar.sideView2.frame.height / 7 + 478, width: sideBar.sideScrollView.frame.width, height: 40)
        sideBar.backButton.addTarget(self, action: #selector(tapEvent14), for: .touchUpInside)
        sideBar.backButton.backgroundColor = .black
        sideBar.backButton.setTitle("× 閉じる", for: .normal)
        sideBar.backButton.setTitleColor(.white, for: .normal)
        sideBar.sideScrollView.addSubview(sideBar.backButton)
        
        sideBar.subButton1.addTarget(self, action: #selector(tapEvent15), for: .touchUpInside)
        sideBar.subButton1.setImage(sideBar.subImage1, for: .normal)
        sideBar.subButton1.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 - 60, y: sideBar.sideView2.frame.height / 7 + 524, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton1)
        
        sideBar.subButton2.addTarget(self, action: #selector(tapEvent16), for: .touchUpInside)
        sideBar.subButton2.setImage(sideBar.subImage2, for: .normal)
        sideBar.subButton2.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 - 15, y: sideBar.sideView2.frame.height / 7 + 524, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton2)
        
        sideBar.subButton3.setImage(sideBar.subImage3, for: .normal)
        sideBar.subButton3.addTarget(self, action: #selector(tapEvent17), for: .touchUpInside)
        sideBar.subButton3.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 + 30, y: sideBar.sideView2.frame.height / 7 + 524, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton3)
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.tabBarController?.selectedIndex = 1
        let userID = Auth.auth().currentUser?.uid
        if userID != nil{
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            if data["buyNumber1"]! as! Int == 1{
                self.starLabel1.textColor = .yellow
                self.subNumber1 = 10
            }else{
                self.starLabel1.textColor = .gray
                self.subNumber1 = 11
            }
            if data["buyNumber2"]! as! Int == 1{
                self.starLabel2.textColor = .yellow
                self.subNumber2 = 10
            }else{
                self.starLabel2.textColor = .gray
                self.subNumber2 = 11
            }
            if data["buyNumber3"]! as! Int == 1{
                self.starLabel3.textColor = .yellow
                self.subNumber3 = 10
            }else{
                self.starLabel3.textColor = .gray
                self.subNumber3 = 11
            }
            if data["buyNumber4"]! as! Int == 1{
                self.starLabel4.textColor = .yellow
                self.subNumber4 = 10
            }else{
                self.starLabel4.textColor = .gray
                self.subNumber4 = 11
            }
            if data["buyNumber5"]! as! Int == 1{
                self.starLabel5.textColor = .yellow
                self.subNumber5 = 10
            }else{
                self.starLabel5.textColor = .gray
                self.subNumber5 = 11
            }
            if data["buyNumber6"]! as! Int == 1{
                self.starLabel6.textColor = .yellow
                self.subNumber6 = 10
            }else{
                self.starLabel6.textColor = .gray
                self.subNumber6 = 11
            }
            if data["buyNumber7"]! as! Int == 1{
                self.starLabel7.textColor = .yellow
                self.subNumber7 = 10
            }else{
                self.starLabel7.textColor = .gray
                self.subNumber7 = 11
            }
            if data["buyNumber8"]! as! Int == 1{
                self.starLabel8.textColor = .yellow
                self.subNumber8 = 10
            }else{
                self.starLabel8.textColor = .gray
                self.subNumber8 = 11
            }
            if data["buyNumber9"]! as! Int == 1{
                self.starLabel9.textColor = .yellow
                self.subNumber9 = 10
            }else{
                self.starLabel9.textColor = .gray
                self.subNumber9 = 11
            }
            if data["buyNumber10"]! as! Int == 1{
                self.starLabel10.textColor = .yellow
                self.subNumber10 = 10
            }else{
                self.starLabel10.textColor = .gray
                self.subNumber10 = 11
            }
            if data["buyNumber11"]! as! Int == 1{
                self.starLabel11.textColor = .yellow
                self.subNumber11 = 10
            }else{
                self.starLabel11.textColor = .gray
                self.subNumber11 = 11
            }
            if data["buyNumber12"]! as! Int == 1{
                self.starLabel12.textColor = .yellow
                self.subNumber12 = 10
            }else{
                self.starLabel12.textColor = .gray
                self.subNumber12 = 11
            }
            if data["buyNumber13"]! as! Int == 1{
                self.starLabel13.textColor = .yellow
                self.subNumber13 = 10
            }else{
                self.starLabel13.textColor = .gray
                self.subNumber13 = 11
            }
            if data["buyNumber14"]! as! Int == 1{
                self.starLabel14.textColor = .yellow
                self.subNumber14 = 10
            }else{
                self.starLabel14.textColor = .gray
                self.subNumber14 = 11
            }
            if data["buyNumber15"]! as! Int == 1{
                self.starLabel15.textColor = .yellow
                self.subNumber15 = 10
            }else{
                self.starLabel15.textColor = .gray
                self.subNumber15 = 11
            }
            if data["buyNumber16"]! as! Int == 1{
                self.starLabel16.textColor = .yellow
                self.subNumber16 = 10
            }else{
                self.starLabel16.textColor = .gray
                self.subNumber17 = 11
            }
            if data["buyNumber17"]! as! Int == 1{
                self.starLabel17.textColor = .yellow
                self.subNumber17 = 10
            }else{
                self.starLabel17.textColor = .gray
                self.subNumber17 = 11
            }
            if data["buyNumber18"]! as! Int == 1{
                self.starLabel18.textColor = .yellow
                self.subNumber18 = 10
            }else{
                self.starLabel18.textColor = .gray
                self.subNumber18 = 11
            }
            if data["buyNumber19"]! as! Int == 1{
                self.starLabel19.textColor = .yellow
                self.subNumber19 = 10
            }else{
                self.starLabel19.textColor = .gray
                self.subNumber19 = 11
            }
            if data["buyNumber20"]! as! Int == 1{
                self.starLabel20.textColor = .yellow
                self.subNumber20 = 10
            }else{
                self.starLabel20.textColor = .gray
                self.subNumber20 = 11
            }
            if data["buyNumber21"]! as! Int == 1{
                self.starLabel21.textColor = .yellow
                self.subNumber21 = 10
            }else{
                self.starLabel21.textColor = .gray
                self.subNumber21 = 11
            }
            if data["buyNumber22"]! as! Int == 1{
                self.starLabel22.textColor = .yellow
                self.subNumber22 = 10
            }else{
                self.starLabel22.textColor = .gray
                self.subNumber22 = 11
            }
            if data["buyNumber23"]! as! Int == 1{
                self.starLabel23.textColor = .yellow
                self.subNumber23 = 10
            }else{
                self.starLabel23.textColor = .gray
                self.subNumber23 = 11
            }
            if data["buyNumber24"]! as! Int == 1{
                self.starLabel24.textColor = .yellow
                self.subNumber24 = 10
            }else{
                self.starLabel24.textColor = .gray
                self.subNumber24 = 11
            }
            if data["buyNumber25"]! as! Int == 1{
                self.starLabel25.textColor = .yellow
                self.subNumber25 = 10
            }else{
                self.starLabel25.textColor = .gray
                self.subNumber25 = 11
            }
            if data["buyNumber26"]! as! Int == 1{
                self.starLabel26.textColor = .yellow
                self.subNumber26 = 10
            }else{
                self.starLabel26.textColor = .gray
                self.subNumber26 = 11
            }
            if data["buyNumber27"]! as! Int == 1{
                self.starLabel27.textColor = .yellow
                self.subNumber27 = 10
            }else{
                self.starLabel27.textColor = .gray
                self.subNumber27 = 11
            }
            if data["buyNumber28"]! as! Int == 1{
                self.starLabel28.textColor = .yellow
                self.subNumber28 = 10
            }else{
                self.starLabel28.textColor = .gray
                self.subNumber28 = 10
            }
        }
        }
        
    }
    
    
    
    @objc func tapEvent1a(){
        return
    }

    @objc func tapEvent22(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy2") as! buy2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func tapEvent33(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy3") as! buy3ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = ""
        vc.number11 = 1
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=5"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.paiku-men")
        vc.sendLabel1 = "パイクー麺"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = "一頭に2本しか取れない軟骨つき豚バラ肉を\n特製タレで煮込みました。"
        vc.number1 = self.subNumber2
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=83"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=47"
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.zennoseramen")
        vc.sendLabel1 = "全乗せラーメン"
        vc.sendLabel2 = "1290"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber4
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=45"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tyasyumen")
        vc.sendLabel1 = "チャーシュー麵"
        vc.sendLabel2 = "1100"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber5
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=11"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.syauyuramen")
        vc.sendLabel1 = "醤油ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber6
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=47"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.misotonkoturamen")
        vc.sendLabel1 = "味噌豚骨ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber7
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=80"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karamisoramen")
        vc.sendLabel1 = "辛みそラーメン"
        vc.sendLabel2 = "820"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber8
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=81"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.hukkokuramen")
        vc.sendLabel1 = "復刻ラーメン昭和味"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber9
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=82"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.zeitakukiriaburitya-syumen")
        vc.sendLabel1 = "贅沢切り炙りチャーシュー麵"
        vc.sendLabel2 = "1200"
        vc.sendText = ""
        vc.sendLabel3 = "ギフト"
        vc.number1 = self.subNumber10
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=47"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.pirikaranegiramen")
        vc.sendLabel1 = "ピリ辛ネギラーメン"
        vc.sendLabel2 = "800"
        vc.sendText = ""
        vc.sendLabel3 = "ギフト"
        vc.number1 = self.subNumber11
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=45"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
        vc.sendLabel2 = "940"
        vc.sendLabel3 = "ギフト"
        vc.sendText = ""
        vc.number1 = self.subNumber12
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=71"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents13(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karatukemen")
        vc.sendLabel1 = "辛つけ麺"
        vc.sendLabel2 = "960"
        vc.sendLabel3 = "ギフト"
        vc.sendText = ""
        vc.number1 = self.subNumber13
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=72"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents14(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.taipi-en")
        vc.sendLabel1 = "太平燕"
        vc.sendLabel2 = "880"
        vc.sendLabel3 = "ギフト"
        vc.sendText = "熊本生まれの春雨料理"
        vc.number1 = self.subNumber14
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=73"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents15(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.parisoba")
        vc.sendLabel1 = "パリそば"
        vc.sendLabel2 = "840"
        vc.sendLabel3 = "トッピング"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber15
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=44"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents16(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.yakisoba")
        vc.sendLabel1 = "焼きそば"
        vc.sendLabel2 = "820"
        vc.sendLabel3 = "トッピング"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber16
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=41"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents17(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tyanpon")
        vc.sendLabel1 = "ちゃんぽん"
        vc.sendLabel2 = "880"
        vc.sendText = ""
        vc.sendLabel3 = "トッピング"
        vc.number1 = self.subNumber17
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=54"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents18(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratyanpon")
        vc.sendLabel1 = "ピリ辛ちゃんぽん"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "太平燕"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber18
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=29"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents19(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.gyozaset")
        vc.sendLabel1 = "ギョーザセット"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "太平燕"
        vc.sendText = "お好みの麺＋焼きギョーザ(3個)＋ご飯＋漬物"
        vc.number1 = self.subNumber19
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=30"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents20(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karaageset")
        vc.sendLabel1 = "唐揚げセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "お好みの麺＋唐揚げ(2個)＋ご飯＋漬物"
        vc.number1 = self.subNumber20
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=31"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents21(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.hantya-hanset")
        vc.sendLabel1 = "半チャーハンセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "お好みの麺＋ハーフチャーハン＋漬物"
        vc.number1 = self.subNumber21
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=32"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents22(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(systemName: "camera")
        vc.sendLabel1 = "月替りセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "商品の構成によって価格は変動いたします。"
        vc.number1 = self.subNumber22
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=33"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents23(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.ha-huset")
        vc.sendLabel1 = "ハーフセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "ハーフラーメン＋ハーフチャーハン＋唐揚げ一個＋サラダ＋漬物"
        vc.number1 = self.subNumber23
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=28"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents24(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.supesyaruset")
        vc.sendLabel1 = "スペシャルセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "味千ラーメン(中)＋ハーフチャーハン＋ギョーザ(５個)＋漬物"
        vc.number1 = self.subNumber24
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents25(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodonset")
        vc.sendLabel1 = "チャーシュー玉子丼セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "太平燕"
        vc.sendText = "チャーシュー玉子丼＋味千ラーメン(中)＋漬物"
        vc.number1 = self.subNumber25
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents26(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.karamisotya-syu-donset")
        vc.sendLabel1 = "辛みそチャーシュー丼セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "冷凍配送商品"
        vc.sendText = "辛みそチャーシュー丼＋味千ラーメン(中)+漬物"
        vc.number1 = self.subNumber26
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents27(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.tikinnanbanset")
        vc.sendLabel1 = "チキン南蛮セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "冷凍配送商品"
        vc.sendText = "味千ラーメン(中)＋チキン南蛮＋ご飯＋漬物＋サラダ"
        vc.number1 = self.subNumber27
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents28(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "p.manpukuset")
        vc.sendLabel1 = "満腹セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "乾麺"
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋唐揚げ(4個)＋漬物"
        vc.number1 = self.subNumber28
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=11"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func barTapped1(_ sender: UIBarButtonItem){
        print("a")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: .curveEaseOut,
            animations: {
                sideBar.sideView1.layer.position.x = self.view.layer.position.x
                sideBar.sideView2.layer.position.x = self.view.layer.position.x + 80
                sideBar.sideScrollView.layer.position.x = self.view.layer.position.x + 80        },
            completion: { bool in
        })
    }
    @objc func tapped(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: .curveEaseIn,
            animations: {
                sideBar.sideView1.layer.position.x = self.view.frame.width * 2
                sideBar.sideView2.layer.position.x = self.view.frame.width * 2
                sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        },
            completion: { bool in
                self.dismiss(animated: true, completion: nil)
        }
        )
    }
    @objc func tapEvent1(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func tapEvent2(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "shop") as! shopViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func tapEvent3(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo") as! newInfoViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func tapEvent4(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "cupon") as! cuponViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent5(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history") as! historyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent6(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "rulet") as! ruletViewController
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent7(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu1") as! menu1ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent8(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "stump") as! stumpViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent9(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "friend") as! friendViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func tapEvent10(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy") as! buyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent11(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "web") as! webViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent12(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "take") as! takeViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent13(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "other") as! otherViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent14(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
    @objc func tapEvent15(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    @objc func tapEvent16(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    @objc func tapEvent17(){
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}


