
//buyViewControllerと構造は同じ

import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth

class menu2ViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "メニュー"
        
        let menuView = UIView()
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("メニュー", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 10
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button1.addTarget(self, action: #selector(tapEvent1), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button1)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: menuView.frame.width / 3, y: 5, width: menuView.frame.width / 3, height: 30)
        button2.setTitle("おすすめメニュー", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.adjustsFontSizeToFitWidth = true
        button2.layer.cornerRadius = 10
        button2.backgroundColor = .black
        button2.addTarget(self, action: #selector(tapEvent2), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button2)
        
        let button3 = UIButton()
        button3.frame = CGRect(x: menuView.frame.width / 3 * 2, y: 5, width: menuView.frame.width / 3, height: 30)
        button3.setTitle("お気に入り", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.titleLabel?.adjustsFontSizeToFitWidth = true
        button3.layer.cornerRadius = 10
        button3.addTarget(self, action: #selector(tapEvent3), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button3)
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 40, width: width, height: height)
        self.view.addSubview(scrollView)
        
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: width, height: 130)
        let images = UIImage(named: "menu")
        image.image = images
        scrollView.addSubview(image)
        
        
        let mbutton1 = UIButton()
        let mimage1 = UIImage(named: "p.kuromayuramen")
        mbutton1.frame = CGRect(x: 0, y: 140, width: width/3, height: 150)
        mbutton1.setImage(mimage1, for: .normal)
        mbutton1.titleLabel?.numberOfLines = 2
        mbutton1.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton1.setTitle("黒マー油ラーメン\n850", for: .normal)
        mbutton1.setTitleColor(.black, for: .normal)
        mbutton1.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton1.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        mbutton1.addTarget(self, action: #selector(tapEvents1), for: .touchUpInside)
        scrollView.addSubview(mbutton1)
        
        let mview1 = UIView()
        mview1.frame = CGRect(x: width/3-30, y: 200, width: 24, height: 24)
        mview1.backgroundColor = .white
        mview1.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview1)
        
   
        starLabel1.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel1.text = "★"
        starLabel1.font = UIFont.systemFont(ofSize: 18)
        starLabel1.textColor = .gray
        mview1.addSubview(starLabel1)
        
        
        let mbutton2 = UIButton()
        let mimage2 = UIImage(named: "p.azisenramen")
        mbutton2.frame = CGRect(x: width/3, y: 130, width: width/3, height: 150)
        mbutton2.setImage(mimage2, for: .normal)
        mbutton2.titleLabel?.numberOfLines = 2
        mbutton2.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton2.setTitle("味千ラーメン\n670", for: .normal)
        mbutton2.setTitleColor(.black, for: .normal)
        mbutton2.addTarget(self, action: #selector(tapEvents2), for: .touchUpInside)
        mbutton2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton2.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton2)
        
        let mview2 = UIView()
        mview2.frame = CGRect(x: width*0.667-30, y: 200, width: 24, height: 24)
        mview2.backgroundColor = .white
        mview2.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview2)
        

        starLabel2.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel2.text = "★"
        starLabel2.font = UIFont.systemFont(ofSize: 18)
        starLabel2.textColor = .gray
        mview2.addSubview(starLabel2)
        
        
        let mbutton3 = UIButton()
        let mimage3 = UIImage(named: "p.zennoseramen")
        mbutton3.frame = CGRect(x: width-width/3, y: 130, width: width/3, height: 150)
        mbutton3.setImage(mimage3, for: .normal)
        mbutton3.titleLabel?.numberOfLines = 2
        mbutton3.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton3.setTitle("全乗せラーメン\n1290", for: .normal)
        mbutton3.setTitleColor(.black, for: .normal)
        mbutton3.addTarget(self, action: #selector(tapEvents3), for: .touchUpInside)
        mbutton3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton3.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton3.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton3)
        
        let mview3 = UIView()
        mview3.frame = CGRect(x: width-30, y: 200, width: 24, height: 24)
        mview3.backgroundColor = .white
        mview3.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview3)
        

        starLabel3.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel3.text = "★"
        starLabel3.font = UIFont.systemFont(ofSize: 18)
        starLabel3.textColor = .gray
        mview3.addSubview(starLabel3)
        
        
        let mbutton4 = UIButton()
        let mimage4 = UIImage(named: "p.hukkokuramen")
        mbutton4.frame = CGRect(x: 0, y: 280, width: width/3, height: 150)
        mbutton4.setImage(mimage4, for: .normal)
        mbutton4.titleLabel?.numberOfLines = 2
        mbutton4.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton4.setTitle("復刻ラーメン昭和味\n790", for: .normal)
        mbutton4.setTitleColor(.black, for: .normal)
        mbutton4.addTarget(self, action: #selector(tapEvents4), for: .touchUpInside)
        mbutton4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton4.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton4.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton4)
        
        let mview4 = UIView()
        mview4.frame = CGRect(x:width/3-30, y: 350, width: 24, height: 24)
        mview4.backgroundColor = .white
        mview4.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview4)
        

        starLabel4.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel4.text = "★"
        starLabel4.font = UIFont.systemFont(ofSize: 18)
        starLabel4.textColor = .gray
        mview4.addSubview(starLabel4)
        
        
        let mbutton5 = UIButton()
        let mimage5 = UIImage(named: "p.tukemen")
        mbutton5.frame = CGRect(x: width/3, y: 280, width: width/3, height: 150)
        mbutton5.setImage(mimage5, for: .normal)
        mbutton5.titleLabel?.numberOfLines = 2
        mbutton5.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton5.setTitle("つけ麵\n940", for: .normal)
        mbutton5.setTitleColor(.black, for: .normal)
        mbutton5.addTarget(self, action: #selector(tapEvents5), for: .touchUpInside)
        mbutton5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton5.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton5.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton5)
        
        let mview5 = UIView()
        mview5.frame = CGRect(x:width*0.667-30, y: 350, width: 24, height: 24)
        mview5.backgroundColor = .white
        mview5.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview5)
        
 
        starLabel5.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel5.text = "★"
        starLabel5.font = UIFont.systemFont(ofSize: 18)
        starLabel5.textColor = .gray
        mview5.addSubview(starLabel5)
        
        
        let mbutton6 = UIButton()
        let mimage6 = UIImage(named: "p.karatukemen")
        mbutton6.frame = CGRect(x: width-width/3, y: 280, width: width/3, height: 150)
        mbutton6.setImage(mimage6, for: .normal)
        mbutton6.titleLabel?.numberOfLines = 2
        mbutton6.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton6.setTitle("辛つけ麺\n960", for: .normal)
        mbutton6.setTitleColor(.black, for: .normal)
        mbutton6.addTarget(self, action: #selector(tapEvents6), for: .touchUpInside)
        mbutton6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton6.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton6.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton6)
        
        let mview6 = UIView()
        mview6.frame = CGRect(x:width-30, y: 350, width: 24, height: 24)
        mview6.backgroundColor = .white
        mview6.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview6)
        

        starLabel6.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel6.text = "★"
        starLabel6.font = UIFont.systemFont(ofSize: 18)
        starLabel6.textColor = .gray
        mview6.addSubview(starLabel6)
        
        
        let mbutton7 = UIButton()
        let mimage7 = UIImage(named: "p.yakigyo-zaset")
        mbutton7.frame = CGRect(x: 0, y: 430, width: width/3, height: 150)
        mbutton7.setImage(mimage7, for: .normal)
        mbutton7.titleLabel?.numberOfLines = 2
        mbutton7.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton7.setTitle("焼きギョーザ　５個入り/１０個入り", for: .normal)
        mbutton7.setTitleColor(.black, for: .normal)
        mbutton7.addTarget(self, action: #selector(tapEvents7), for: .touchUpInside)
        mbutton7.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton7.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton7.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton7)
        
        let mview7 = UIView()
        mview7.frame = CGRect(x:width/3-30, y: 500, width: 24, height: 24)
        mview7.backgroundColor = .white
        mview7.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview7)
        
 
        starLabel7.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel7.text = "★"
        starLabel7.font = UIFont.systemFont(ofSize: 18)
        starLabel7.textColor = .gray
        mview7.addSubview(starLabel7)
        
        
        let mbutton8 = UIButton()
        let mimage8 = UIImage(named: "p.tya-han")
        mbutton8.frame = CGRect(x: width/3, y: 430, width: width/3, height: 150)
        mbutton8.setImage(mimage8, for: .normal)
        mbutton8.titleLabel?.numberOfLines = 2
        mbutton8.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton8.setTitle("チャーハン(スープ付き)", for: .normal)
        mbutton8.setTitleColor(.black, for: .normal)
        mbutton8.addTarget(self, action: #selector(tapEvents8), for: .touchUpInside)
        mbutton8.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton8.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton8.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton8)
        
        let mview8 = UIView()
        mview8.frame = CGRect(x:width*0.667-30, y: 500, width: 24, height: 24)
        mview8.backgroundColor = .white
        mview8.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview8)
        
        
        starLabel8.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel8.text = "★"
        starLabel8.font = UIFont.systemFont(ofSize: 18)
        starLabel8.textColor = .gray
        mview8.addSubview(starLabel8)
        
        
        let mbutton9 = UIButton()
        let mimage9 = UIImage(named: "p.pirikaratya-han")
        mbutton9.frame = CGRect(x:width-width/3, y: 430, width: width/3, height: 150)
        mbutton9.setImage(mimage9, for: .normal)
        mbutton9.titleLabel?.numberOfLines = 2
        mbutton9.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton9.setTitle("ピリ辛チャーハン(スープ付き)", for: .normal)
        mbutton9.setTitleColor(.black, for: .normal)
        mbutton9.addTarget(self, action: #selector(tapEvents9), for: .touchUpInside)
        mbutton9.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton9.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton9.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton9)
        
        let mview9 = UIView()
        mview9.frame = CGRect(x:width-30, y: 500, width: 24, height: 24)
        mview9.backgroundColor = .white
        mview9.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview9)
        
  
        starLabel9.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel9.text = "★"
        starLabel9.font = UIFont.systemFont(ofSize: 18)
        starLabel9.textColor = .gray
        mview9.addSubview(starLabel9)
        
        
        let mbutton10 = UIButton()
        let mimage10 = UIImage(named: "p.ha-huset")
        mbutton10.frame = CGRect(x:0, y: 580, width: width/3, height: 150)
        mbutton10.setImage(mimage10, for: .normal)
        mbutton10.titleLabel?.numberOfLines = 3
        mbutton10.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton10.setTitle("ハーフセット", for: .normal)
        mbutton10.setTitleColor(.black, for: .normal)
        mbutton10.addTarget(self, action: #selector(tapEvents10), for: .touchUpInside)
        mbutton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton10.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton10)
        
        let mview10 = UIView()
        mview10.frame = CGRect(x:width/3-30, y: 650, width: 24, height: 24)
        mview10.backgroundColor = .white
        mview10.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview10)
        

        starLabel10.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel10.text = "★"
        starLabel10.font = UIFont.systemFont(ofSize: 18)
        starLabel10.textColor = .gray
        mview10.addSubview(starLabel10)
        
        
        let mbutton11 = UIButton()
        let mimage11 = UIImage(named: "p.supesyaruset")
        mbutton11.frame = CGRect(x:width/3, y: 580, width: width/3, height: 150)
        mbutton11.setImage(mimage11, for: .normal)
        mbutton11.titleLabel?.numberOfLines = 2
        mbutton11.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton11.setTitle("スペシャルセット", for: .normal)
        mbutton11.setTitleColor(.black, for: .normal)
        mbutton11.addTarget(self, action: #selector(tapEvents11), for: .touchUpInside)
        mbutton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton11.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton11)
        
        let mview11 = UIView()
        mview11.frame = CGRect(x:width*0.667-30, y: 650, width: 24, height: 24)
        mview11.backgroundColor = .white
        mview11.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview11)
        

        starLabel11.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel11.text = "★"
        starLabel11.font = UIFont.systemFont(ofSize: 18)
        starLabel11.textColor = .gray
        mview11.addSubview(starLabel11)
        
        
        
        let mbutton12 = UIButton()
        let mimage12 = UIImage(named: "p.hantya-hanset")
        mbutton12.frame = CGRect(x:width - width / 3, y: 580, width: width/3, height: 150)
        mbutton12.setImage(mimage12, for: .normal)
        mbutton12.titleLabel?.numberOfLines = 2
        mbutton12.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton12.setTitle("半チャーハンセット", for: .normal)
        mbutton12.setTitleColor(.black, for: .normal)
        mbutton12.addTarget(self, action: #selector(tapEvents12), for: .touchUpInside)
        mbutton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton12.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton12)
        
        let mview12 = UIView()
        mview12.frame = CGRect(x:width-30, y: 650, width: 24, height: 24)
        mview12.backgroundColor = .white
        mview12.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview12)
        

        starLabel12.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel12.text = "★"
        starLabel12.font = UIFont.systemFont(ofSize: 18)
        starLabel12.textColor = .gray
        mview12.addSubview(starLabel12)
        
        
        let mbutton13 = UIButton()
        let mimage13 = UIImage(named: "p.zeitakukiriaburitya-syumen")
        mbutton13.frame = CGRect(x:0, y: 730, width: width/3, height: 150)
        mbutton13.setImage(mimage13, for: .normal)
        mbutton13.titleLabel?.numberOfLines = 2
        mbutton13.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton13.setTitle("贅沢切り炙りチャーシュー麵", for: .normal)
        mbutton13.setTitleColor(.black, for: .normal)
        mbutton13.addTarget(self, action: #selector(tapEvents13), for: .touchUpInside)
        mbutton13.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton13.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton13.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton13)
        
        let mview13 = UIView()
        mview13.frame = CGRect(x:width / 3 - 30, y: 800, width: 24, height: 24)
        mview13.backgroundColor = .white
        mview13.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview13)
        

        starLabel13.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel13.text = "★"
        starLabel13.font = UIFont.systemFont(ofSize: 18)
        starLabel13.textColor = .gray
        mview13.addSubview(starLabel13)
        
        scrollView.contentSize = CGSize(width: 0, height: mbutton13.frame.height + mbutton13.layer.position.y + 50)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.tabBarController?.selectedIndex = 0
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
            if data["menuNumber3"]! as! Int == 1{
                self.starLabel1.textColor = .yellow
                self.subNumber1 = 10
            }else{
                self.starLabel1.textColor = .gray
                self.subNumber1 = 11
            }
            if data["menuNumber1"]! as! Int == 1{
                self.starLabel2.textColor = .yellow
                self.subNumber2 = 10
            }else{
                self.starLabel2.textColor = .gray
                self.subNumber2 = 11
            }
            if data["menuNumber4"]! as! Int == 1{
                self.starLabel3.textColor = .yellow
                self.subNumber3 = 10
            }else{
                self.starLabel3.textColor = .gray
                self.subNumber3 = 11
            }
            if data["menuNumber9"]! as! Int == 1{
                self.starLabel4.textColor = .yellow
                self.subNumber4 = 10
            }else{
                self.starLabel4.textColor = .gray
                self.subNumber4 = 11
            }
            if data["menuNumber12"]! as! Int == 1{
                self.starLabel5.textColor = .yellow
                self.subNumber5 = 10
            }else{
                self.starLabel5.textColor = .gray
                self.subNumber5 = 11
            }
            if data["menuNumber13"]! as! Int == 1{
                self.starLabel6.textColor = .yellow
                self.subNumber6 = 10
            }else{
                self.starLabel6.textColor = .gray
                self.subNumber6 = 11
            }
            if data["menuNumber34"]! as! Int == 1{
                self.starLabel7.textColor = .yellow
                self.subNumber7 = 10
            }else{
                self.starLabel7.textColor = .gray
                self.subNumber7 = 11
            }
            if data["menuNumber55"]! as! Int == 1{
                self.starLabel8.textColor = .yellow
                self.subNumber8 = 10
            }else{
                self.starLabel8.textColor = .gray
                self.subNumber8 = 11
            }
            if data["menuNumber56"]! as! Int == 1{
                self.starLabel9.textColor = .yellow
                self.subNumber9 = 10
            }else{
                self.starLabel9.textColor = .gray
                self.subNumber9 = 11
            }
            if data["menuNumber23"]! as! Int == 1{
                self.starLabel10.textColor = .yellow
                self.subNumber10 = 10
            }else{
                self.starLabel10.textColor = .gray
                self.subNumber10 = 11
            }
            if data["menuNumber24"]! as! Int == 1{
                self.starLabel11.textColor = .yellow
                self.subNumber11 = 10
            }else{
                self.starLabel11.textColor = .gray
                self.subNumber11 = 11
            }
            if data["menuNumber21"]! as! Int == 1{
                self.starLabel12.textColor = .yellow
                self.subNumber12 = 10
            }else{
                self.starLabel12.textColor = .gray
                self.subNumber12 = 11
            }
            if data["menuNumber10"]! as! Int == 1{
                self.starLabel13.textColor = .yellow
                self.subNumber13 = 10
            }else{
                self.starLabel13.textColor = .gray
                self.subNumber13 = 11
            }
            
            
        }
        }
        
    }
    
    
    @objc func tapEvent1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu1") as! menu1ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent2(){
        return
    }
    @objc func tapEvent3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu3") as! menu3ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.number1 = self.subNumber1
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendText = ""
        vc.number1 = self.subNumber2
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zennoseramen")
        vc.sendLabel1 = "全乗せラーメン"
        vc.sendLabel2 = "1290"
        vc.sendText = ""
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hukkokuramen")
        vc.sendLabel1 = "復刻ラーメン昭和味"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber4
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
        vc.sendLabel2 = "940"
        vc.sendText = ""
        vc.number1 = self.subNumber5
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karatukemen")
        vc.sendLabel1 = "辛つけ麺"
        vc.sendLabel2 = "960"
        vc.sendText = ""
        vc.number1 = self.subNumber6
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yakigyo-zaset")
        vc.sendLabel1 = "焼きギョーザ　５個入り/１０個入り"
        vc.sendLabel2 = ""
        vc.sendText = "金額は税抜き価格です。"
        vc.number1 = self.subNumber7
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-han")
        vc.sendLabel1 = "チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendText = "チャーハン＋チャーハンスープ＋漬物"
        vc.number1 = self.subNumber8
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratya-han")
        vc.sendLabel1 = "ピリ辛チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendText = "ピリ辛チャーハン＋チャーハンスープ＋漬物"
        vc.number1 = self.subNumber9
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ha-huset")
        vc.sendLabel1 = "ハーフセット"
        vc.sendLabel2 = ""
        vc.sendText = "ハーフラーメン＋ハーフチャーハン＋唐揚げ一個＋サラダ＋漬物"
        vc.number1 = self.subNumber10
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.supesyaruset")
        vc.sendLabel1 = "スペシャルセット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋ハーフチャーハン＋ギョーザ(５個)＋漬物"
        vc.number1 = self.subNumber11
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hantya-hanset")
        vc.sendLabel1 = "半チャーハンセット"
        vc.sendLabel2 = ""
        vc.sendText = "お好みの麺＋ハーフチャーハン＋漬物"
        vc.number1 = self.subNumber12
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents13(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zeitakukiriaburitya-syumen")
        vc.sendLabel1 = "贅沢切り炙りチャーシュー麵"
        vc.sendLabel2 = "1200"
        vc.sendText = ""
        vc.number1 = self.subNumber13
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}
