

//buyViewControllerと構造は同じ

import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth

class buy2ViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    var subNumber1: Int?
    var subNumber11: Int?
    var subNumber12: Int?
    var subNumber26: Int?
    var subNumber18: Int?
    var subNumber13: Int?
    var subNumber14: Int?
    var subNumber15: Int?
    var subNumber25: Int?
    var subNumber22: Int?
    var subNumber7: Int?
    var subNumber2: Int?
    var subNumber8: Int?
    var subNumber9: Int?
    var subNumber10: Int?
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.tabBarController?.selectedIndex = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "お買い物"
    }
    
    override func viewDidLayoutSubviews() {
        
        let menuView = UIView()
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("アイテム", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 10
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button1.addTarget(self, action: #selector(tapEvent1), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button1)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: menuView.frame.width / 3, y: 5, width: menuView.frame.width / 3, height: 30)
        button2.setTitle("おすすめアイテム", for: .normal)
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
        let mimage1 = UIImage(named: "ok1")
        mbutton1.frame = CGRect(x: 0, y: 135, width: width/3, height: 150)
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
        mview1.frame = CGRect(x: width/3-30, y: 205, width: 24, height: 24)
        mview1.backgroundColor = .white
        mview1.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview1)
        
        
        starLabel1.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel1.text = "★"
        starLabel1.font = UIFont.systemFont(ofSize: 18)
        starLabel1.textColor = .gray
        mview1.addSubview(starLabel1)
        
        
        let mbutton2 = UIButton()
        let mimage2 = UIImage(named: "ok11")
        mbutton2.frame = CGRect(x: width/3, y: 135, width: width/3, height: 150)
        mbutton2.setImage(mimage2, for: .normal)
        mbutton2.titleLabel?.numberOfLines = 0
        mbutton2.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton2.setTitle("味千とんこつ\nラーメンギフ…\n2,730円（税込み）", for: .normal)
        mbutton2.setTitleColor(.black, for: .normal)
        mbutton2.addTarget(self, action: #selector(tapEvents2), for: .touchUpInside)
        mbutton2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton2.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton2)
        
        let mview2 = UIView()
        mview2.frame = CGRect(x: width*0.667-30, y: 205, width: 24, height: 24)
        mview2.backgroundColor = .white
        mview2.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview2)
        

        starLabel2.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel2.text = "★"
        starLabel2.font = UIFont.systemFont(ofSize: 18)
        starLabel2.textColor = .gray
        mview2.addSubview(starLabel2)
        
        
        let mbutton3 = UIButton()
        let mimage3 = UIImage(named: "ok12")
        mbutton3.frame = CGRect(x: width-width/3, y: 135, width: width/3, height: 150)
        mbutton3.setImage(mimage3, for: .normal)
        mbutton3.titleLabel?.numberOfLines = 0
        mbutton3.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton3.setTitle("熊本味千ラーメ\nンギフトセッ…\n4,420円（税込み）", for: .normal)
        mbutton3.setTitleColor(.black, for: .normal)
        mbutton3.addTarget(self, action: #selector(tapEvents3), for: .touchUpInside)
        mbutton3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton3.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton3.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton3)
        
        let mview3 = UIView()
        mview3.frame = CGRect(x: width-30, y: 205, width: 24, height: 24)
        mview3.backgroundColor = .white
        mview3.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview3)

        starLabel3.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel3.text = "★"
        starLabel3.font = UIFont.systemFont(ofSize: 18)
        starLabel3.textColor = .gray
        mview3.addSubview(starLabel3)
        
        let mbutton4 = UIButton()
        let mimage4 = UIImage(named: "ok26")
        mbutton4.frame = CGRect(x: 0, y: 285, width: width/3, height: 150)
        mbutton4.setImage(mimage4, for: .normal)
        mbutton4.titleLabel?.numberOfLines = 0
        mbutton4.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton4.setTitle("[冷蔵配送]く\nまもと桂花特…\n519円(税込み)", for: .normal)
        mbutton4.setTitleColor(.black, for: .normal)
        mbutton4.addTarget(self, action: #selector(tapEvents4), for: .touchUpInside)
        mbutton4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton4.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton4.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton4)
        
        let mview4 = UIView()
        mview4.frame = CGRect(x: width/3-30, y: 355, width: 24, height: 24)
        mview4.backgroundColor = .white
        mview4.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview4)
        

        starLabel4.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel4.text = "★"
        starLabel4.font = UIFont.systemFont(ofSize: 18)
        starLabel4.textColor = .gray
        mview4.addSubview(starLabel4)
        
        
        let mbutton5 = UIButton()
        let mimage5 = UIImage(named: "ok18")
        mbutton5.frame = CGRect(x: width/3, y: 285, width: width/3, height: 150)
        mbutton5.setImage(mimage5, for: .normal)
        mbutton5.titleLabel?.numberOfLines = 0
        mbutton5.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton5.setTitle("熊本名物　太平\n燕　２食１セット\n650円（税込み）", for: .normal)
        mbutton5.setTitleColor(.black, for: .normal)
        mbutton5.addTarget(self, action: #selector(tapEvents5), for: .touchUpInside)
        mbutton5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton5.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton5.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton5)
        
        let mview5 = UIView()
        mview5.frame = CGRect(x: width*0.667-30, y: 355, width: 24, height: 24)
        mview5.backgroundColor = .white
        mview5.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview5)

        starLabel5.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel5.text = "★"
        starLabel5.font = UIFont.systemFont(ofSize: 18)
        starLabel5.textColor = .gray
        mview5.addSubview(starLabel5)
        
        
        let mbutton6 = UIButton()
        let mimage6 = UIImage(named: "ok13")
        mbutton6.frame = CGRect(x: width-width/3, y: 285, width: width/3, height: 150)
        mbutton6.setImage(mimage6, for: .normal)
        mbutton6.titleLabel?.numberOfLines = 0
        mbutton6.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton6.setTitle("ギフト　黒マー\n油ラーメ…\n900円（税込み）", for: .normal)
        mbutton6.setTitleColor(.black, for: .normal)
        mbutton6.addTarget(self, action: #selector(tapEvents6), for: .touchUpInside)
        mbutton6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton6.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton6.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton6)
        
        let mview6 = UIView()
        mview6.frame = CGRect(x: width-30, y: 355, width: 24, height: 24)
        mview6.backgroundColor = .white
        mview6.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview6)
        
        starLabel6.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel6.text = "★"
        starLabel6.font = UIFont.systemFont(ofSize: 18)
        starLabel6.textColor = .gray
        mview6.addSubview(starLabel6)
        
        let mbutton7 = UIButton()
        let mimage7 = UIImage(named: "ok14")
        mbutton7.frame = CGRect(x: 0, y: 435, width: width/3, height: 150)
        mbutton7.setImage(mimage7, for: .normal)
        mbutton7.titleLabel?.numberOfLines = 0
        mbutton7.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton7.setTitle("ギフト　味千\nラーメンBO…\n900円(税込み)", for: .normal)
        mbutton7.setTitleColor(.black, for: .normal)
        mbutton7.addTarget(self, action: #selector(tapEvents7), for: .touchUpInside)
        mbutton7.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton7.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton7.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton7)
        
        let mview7 = UIView()
        mview7.frame = CGRect(x: width/3-30, y: 505, width: 24, height: 24)
        mview7.backgroundColor = .white
        mview7.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview7)
        

        starLabel7.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel7.text = "★"
        starLabel7.font = UIFont.systemFont(ofSize: 18)
        starLabel7.textColor = .gray
        mview7.addSubview(starLabel7)
        
        
        let mbutton8 = UIButton()
        let mimage8 = UIImage(named: "ok15")
        mbutton8.frame = CGRect(x: width/3, y: 435, width: width/3, height: 150)
        mbutton8.setImage(mimage8, for: .normal)
        mbutton8.titleLabel?.numberOfLines = 0
        mbutton8.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton8.setTitle("味千ラーメン\nBOX×2箱…\n2,800円（税込み）", for: .normal)
        mbutton8.setTitleColor(.black, for: .normal)
        mbutton8.addTarget(self, action: #selector(tapEvents8), for: .touchUpInside)
        mbutton8.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton8.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton8.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton8)
        
        let mview8 = UIView()
        mview8.frame = CGRect(x: width*0.667-30, y: 505, width: 24, height: 24)
        mview8.backgroundColor = .white
        mview8.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview8)
        
  
        starLabel8.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel8.text = "★"
        starLabel8.font = UIFont.systemFont(ofSize: 18)
        starLabel8.textColor = .gray
        mview8.addSubview(starLabel8)
        
        
        let mbutton9 = UIButton()
        let mimage9 = UIImage(named: "ok12")
        mbutton9.frame = CGRect(x: width-width/3, y: 435, width: width/3, height: 150)
        mbutton9.setImage(mimage9, for: .normal)
        mbutton9.titleLabel?.numberOfLines = 0
        mbutton9.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton9.setTitle("熊本味千ラーメ\nンギフトセッ…\n4,420円（税込み）", for: .normal)
        mbutton9.setTitleColor(.black, for: .normal)
        mbutton9.addTarget(self, action: #selector(tapEvents9), for: .touchUpInside)
        mbutton9.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton9.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton9.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton9)
        
        let mview9 = UIView()
        mview9.frame = CGRect(x: width-30, y: 505, width: 24, height: 24)
        mview9.backgroundColor = .white
        mview9.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview9)
        

        starLabel9.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel9.text = "★"
        starLabel9.font = UIFont.systemFont(ofSize: 18)
        starLabel9.textColor = .gray
        mview9.addSubview(starLabel9)
        
        let mbutton10 = UIButton()
        let mimage10 = UIImage(named: "ok25")
        mbutton10.frame = CGRect(x: 0, y: 585, width: width/3, height: 150)
        mbutton10.setImage(mimage10, for: .normal)
        mbutton10.titleLabel?.numberOfLines = 0
        mbutton10.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton10.setTitle("[皇帝]　太平\n燕　辛みそ…\n340円(税込み)", for: .normal)
        mbutton10.setTitleColor(.black, for: .normal)
        mbutton10.addTarget(self, action: #selector(tapEvents10), for: .touchUpInside)
        mbutton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton10.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton10)
        
        let mview10 = UIView()
        mview10.frame = CGRect(x: width/3-30, y: 655, width: 24, height: 24)
        mview10.backgroundColor = .white
        mview10.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview10)
        

        starLabel10.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel10.text = "★"
        starLabel10.font = UIFont.systemFont(ofSize: 18)
        starLabel10.textColor = .gray
        mview10.addSubview(starLabel10)
        
        
        let mbutton11 = UIButton()
        let mimage11 = UIImage(named: "ok22")
        mbutton11.frame = CGRect(x: width/3, y: 585, width: width/3, height: 150)
        mbutton11.setImage(mimage11, for: .normal)
        mbutton11.titleLabel?.numberOfLines = 0
        mbutton11.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton11.setTitle("熊本名物　太平\n燕　２食入…\n6,500円（税込み）", for: .normal)
        mbutton11.setTitleColor(.black, for: .normal)
        mbutton11.addTarget(self, action: #selector(tapEvents11), for: .touchUpInside)
        mbutton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton11.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton11)
        
        let mview11 = UIView()
        mview11.frame = CGRect(x: width*0.667-30, y: 655, width: 24, height: 24)
        mview11.backgroundColor = .white
        mview11.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview11)
        

        starLabel11.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel11.text = "★"
        starLabel11.font = UIFont.systemFont(ofSize: 18)
        starLabel11.textColor = .gray
        mview11.addSubview(starLabel11)
        
        
        let mbutton12 = UIButton()
        let mimage12 = UIImage(named: "ok7")
        mbutton12.frame = CGRect(x: width-width/3, y: 585, width: width/3, height: 150)
        mbutton12.setImage(mimage12, for: .normal)
        mbutton12.titleLabel?.numberOfLines = 0
        mbutton12.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton12.setTitle("匠ラーメン＋味\n千拉麺丼セット\n2,000円（税込み）", for: .normal)
        mbutton12.setTitleColor(.black, for: .normal)
        mbutton12.addTarget(self, action: #selector(tapEvents12), for: .touchUpInside)
        mbutton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton12.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton12)
        
        let mview12 = UIView()
        mview12.frame = CGRect(x: width-30, y: 655, width: 24, height: 24)
        mview12.backgroundColor = .white
        mview12.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview12)
        

        starLabel12.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel12.text = "★"
        starLabel12.font = UIFont.systemFont(ofSize: 18)
        starLabel12.textColor = .gray
        mview12.addSubview(starLabel12)
        
        let mbutton13 = UIButton()
        let mimage13 = UIImage(named: "ok2")
        mbutton13.frame = CGRect(x: 0, y: 735, width: width/3, height: 150)
        mbutton13.setImage(mimage13, for: .normal)
        mbutton13.titleLabel?.numberOfLines = 0
        mbutton13.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton13.setTitle("[味千×桂花]\n桂花（３食）…\n2,754円(税込み)", for: .normal)
        mbutton13.setTitleColor(.black, for: .normal)
        mbutton13.addTarget(self, action: #selector(tapEvents13), for: .touchUpInside)
        mbutton13.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton13.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton13.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton13)
        
        let mview13 = UIView()
        mview13.frame = CGRect(x: width/3-30, y: 805, width: 24, height: 24)
        mview13.backgroundColor = .white
        mview13.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview13)
        
    
        starLabel13.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel13.text = "★"
        starLabel13.font = UIFont.systemFont(ofSize: 18)
        starLabel13.textColor = .gray
        mview13.addSubview(starLabel13)
        
        
        let mbutton14 = UIButton()
        let mimage14 = UIImage(named: "ok8")
        mbutton14.frame = CGRect(x: width/3, y: 735, width: width/3, height: 150)
        mbutton14.setImage(mimage14, for: .normal)
        mbutton14.titleLabel?.numberOfLines = 0
        mbutton14.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton14.setTitle("[味千拉麺]　匠\nラーメン１食…\n594円（税込み）", for: .normal)
        mbutton14.setTitleColor(.black, for: .normal)
        mbutton14.addTarget(self, action: #selector(tapEvents14), for: .touchUpInside)
        mbutton14.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton14.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton14.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton14)
        
        let mview14 = UIView()
        mview14.frame = CGRect(x: width*0.667-30, y: 805, width: 24, height: 24)
        mview14.backgroundColor = .white
        mview14.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview14)
        
        
        starLabel14.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel14.text = "★"
        starLabel14.font = UIFont.systemFont(ofSize: 18)
        starLabel14.textColor = .gray
        mview14.addSubview(starLabel14)
        
        
        let mbutton15 = UIButton()
        let mimage15 = UIImage(named: "ok9")
        mbutton15.frame = CGRect(x: width-width/3, y: 735, width: width/3, height: 150)
        mbutton15.setImage(mimage15, for: .normal)
        mbutton15.titleLabel?.numberOfLines = 0
        mbutton15.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton15.setTitle("[味千拉麺]　匠\nラーメン５食…\n2,970円（税込み）", for: .normal)
        mbutton15.setTitleColor(.black, for: .normal)
        mbutton15.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton15.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton15.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton15.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton15)
        
        let mview15 = UIView()
        mview15.frame = CGRect(x: width-30, y: 805, width: 24, height: 24)
        mview15.backgroundColor = .white
        mview15.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview15)
        
   
        starLabel15.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel15.text = "★"
        starLabel15.font = UIFont.systemFont(ofSize: 18)
        starLabel15.textColor = .gray
        mview15.addSubview(starLabel15)
        
        let mbutton16 = UIButton()
        let mimage16 = UIImage(named: "ok10")
        mbutton16.frame = CGRect(x: 0, y: 885, width: width/3, height: 150)
        mbutton16.setImage(mimage16, for: .normal)
        mbutton16.titleLabel?.numberOfLines = 0
        mbutton16.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton16.setTitle("[味千拉麺]　匠\nラーメン１０…\n5,940円(税込み)", for: .normal)
        mbutton16.setTitleColor(.black, for: .normal)
        mbutton16.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton16.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton16.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton16.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton16)
        
        let mview16 = UIView()
        mview16.frame = CGRect(x: width/3-30, y: 955, width: 24, height: 24)
        mview16.backgroundColor = .white
        mview16.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview16)

        starLabel16.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel16.text = "★"
        starLabel16.font = UIFont.systemFont(ofSize: 18)
        starLabel16.textColor = .gray
        mview16.addSubview(starLabel16)
        
        scrollView.contentSize = CGSize(width: 0, height: mbutton16.layer.position.y + mbutton16.frame.height + 60)
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
            if data["buyNumber11"]! as! Int == 1{
                self.starLabel2.textColor = .yellow
                self.subNumber11 = 10
            }else{
                self.starLabel2.textColor = .gray
                self.subNumber11 = 11
            }
            if data["buyNumber12"]! as! Int == 1{
                self.starLabel3.textColor = .yellow
                self.subNumber12 = 10
            }else{
                self.starLabel3.textColor = .gray
                self.subNumber12 = 11
            }
            if data["buyNumber26"]! as! Int == 1{
                self.starLabel4.textColor = .yellow
                self.subNumber26 = 10
            }else{
                self.starLabel4.textColor = .gray
                self.subNumber26 = 11
            }
            if data["buyNumber18"]! as! Int == 1{
                self.starLabel5.textColor = .yellow
                self.subNumber18 = 10
            }else{
                self.starLabel5.textColor = .gray
                self.subNumber18 = 11
            }
            if data["buyNumber13"]! as! Int == 1{
                self.starLabel6.textColor = .yellow
                self.subNumber13 = 10
            }else{
                self.starLabel6.textColor = .gray
                self.subNumber13 = 11
            }
            if data["buyNumber14"]! as! Int == 1{
                self.starLabel7.textColor = .yellow
                self.subNumber14 = 10
            }else{
                self.starLabel7.textColor = .gray
                self.subNumber14 = 11
            }
            if data["buyNumber15"]! as! Int == 1{
                self.starLabel8.textColor = .yellow
                self.subNumber15 = 10
            }else{
                self.starLabel8.textColor = .gray
                self.subNumber15 = 11
            }
            if data["buyNumber12"]! as! Int == 1{
                self.starLabel9.textColor = .yellow
                self.subNumber12 = 10
            }else{
                self.starLabel9.textColor = .gray
                self.subNumber12 = 11
            }
            if data["buyNumber25"]! as! Int == 1{
                self.starLabel10.textColor = .yellow
                self.subNumber25 = 10
            }else{
                self.starLabel10.textColor = .gray
                self.subNumber25 = 11
            }
            if data["buyNumber22"]! as! Int == 1{
                self.starLabel11.textColor = .yellow
                self.subNumber22 = 10
            }else{
                self.starLabel11.textColor = .gray
                self.subNumber22 = 11
            }
            if data["buyNumber7"]! as! Int == 1{
                self.starLabel12.textColor = .yellow
                self.subNumber7 = 10
            }else{
                self.starLabel12.textColor = .gray
                self.subNumber7 = 11
            }
            if data["buyNumber2"]! as! Int == 1{
                self.starLabel13.textColor = .yellow
                self.subNumber2 = 10
            }else{
                self.starLabel13.textColor = .gray
                self.subNumber2 = 10
            }
            if data["buyNumber8"]! as! Int == 1{
                self.starLabel14.textColor = .yellow
                self.subNumber8 = 10
            }else{
                self.starLabel14.textColor = .gray
                self.subNumber8 = 11
            }
            if data["buyNumber9"]! as! Int == 1{
                self.starLabel15.textColor = .yellow
                self.subNumber9 = 10
            }else{
                self.starLabel15.textColor = .gray
                self.subNumber9 = 11
            }
            if data["buyNumber10"]! as! Int == 1{
                self.starLabel16.textColor = .yellow
                self.subNumber10 = 10
            }else{
                self.starLabel16.textColor = .gray
                self.subNumber10 = 11
            }
        }
        }
    }
    
    @objc func tapEvent1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy") as! buyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent2(){
        return
    }
    @objc func tapEvent3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy3") as! buy3ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok1")
        vc.sendLabel1 = "味千とんこつラーメン　2食分\n１セット"
        vc.sendLabel2 = "430円（税込）"
        vc.sendText = "ラーメンランキング入賞の豚骨ラーメン！店舗でも一番人気！"
        vc.number1 = self.subNumber1
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=5"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok11")
        vc.sendLabel1 = "味千とんこつラーメンギフトセッ\nト　２食入６セット　化粧箱入り"
        vc.sendLabel2 = "2,730円（税込）"
        vc.sendText = "元祖熊本拉麺　味千ラーメンギフトセット　熊本豚骨とん\nこつ　熊本ラーメン"
        vc.number1 = self.subNumber11
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=45"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok12")
        vc.sendLabel1 = "熊本味千ラーメンギフトセット\n２食入１０セット　化粧箱入り"
        vc.sendLabel2 = "4,420円（税込）"
        vc.sendText = "元祖熊本ラーメン　味千ラーメンギフトセット　熊本豚骨　とん\nこつ　熊本ラーメン"
        vc.number1 = self.subNumber12
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=71"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok26")
        vc.sendLabel1 = "[冷蔵配送]くまもと桂花特製太\n肉（ターロー）１袋（８０g入り）"
        vc.sendLabel2 = "519円（税込）"
        vc.sendText = "ご飯に乗せて丼でもいただけます♪\n熊本桂花ラーメン特製「豚の角煮」４時間かけてじっくりと煮込\nんだジューシーで柔らかな逸品！ご飯に乗せて丼としてもいただ\nけます♪\n\n桂花太肉（ターロー）は厳選された肉バラ肉を丁寧にじっくり４時\n間かけて仕込み、桂花ラーメンに合うように仕上げています。\n柔らかくてしっとりジューシーな桂花風豚の角煮を\nぜひご賞味下さい。"
        vc.number1 = self.subNumber26
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok18")
        vc.sendLabel1 = "熊本名物　太平燕　２食１セット"
        vc.sendLabel2 = "650円（税込）"
        vc.sendText = "話題のヘルシーB級グルメ！中華風春雨スープ、はるさめヌードル\n「太平燕」とは・・・\n中国福建省の家庭料理をヒントに熊本の料理人が「まかない」と\nして作ったのが始まり、と言われている健康春雨スープです。\n「白湯豚骨スープ」と「鶏ガラスープ」をブレンドし、コクがあ\nるのにあっさりとしたオリジナルスープに仕上げました。お好み\nで野菜やゆで卵等を入れるとより一層美味しくいただけます。"
        vc.number1 = self.subNumber18
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=29"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok13")
        vc.sendLabel1 = "ギフト　黒マー油ラーメンBOX １箱\n（3食入り）"
        vc.sendLabel2 = "900円（税込）"
        vc.sendText = "癖になる大人の黒！\nほろ苦い風味豊かな黒マー油！\n今まで店舗限定販売だった黒マー油ギフトBOXが遂に、\n味千ラーメン通販サイトにて販売開始！\nお店まで中々足を運べない方でも\n黒マー油拉麺が食べられる！\n特製BOXに入っているので、贈り物にも自宅用にも！\n癖になる大人の黒！\n丸二日かけてニンニクの風味を凝縮させた\n特製黒マー油入りのスープが麺によく絡む！"
        vc.number1 = self.subNumber13
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=72"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok14")
        vc.sendLabel1 = "ギフト　味千ラーメンBOX １箱（３食いり）"
        vc.sendLabel2 = "900円（税込）"
        vc.sendText = "癖になる大人の黒！\nほろ苦い風味豊かな黒マー油！\n今まで店舗限定販売だった黒マー油ギフトBOXが遂に、\n味千ラーメン通販サイトにて販売開始！\nお店まで中々足を運べない方でも\n黒マー油拉麺が食べられる！\n特製BOXに入っているので、贈り物にも自宅用にも！\n癖になる大人の黒！\n丸二日かけてニンニクの風味を凝縮させた\n特製黒マー油入りのスープが麺によく絡む！"
        vc.number1 = self.subNumber14
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=73"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok15")
        vc.sendLabel1 = "味千ラーメンBOX×２箱　各箱３食\nずつ（６食入り）　黒マー油拉麺\nBOX×１箱（３食いり）詰め合わせ"
        vc.sendLabel2 = "2,800円"
        vc.sendText = "癖になる大人の黒！\nほろ苦い風味豊かな黒マー油！\n今まで店舗限定販売だった黒マー油ギフトBOXが遂に、\n味千ラーメン通販サイトにて販売開始！\nお店まで中々足を運べない方でも\n黒マー油拉麺が食べられる！\n特製BOXに入っているので、贈り物にも自宅用にも！\n癖になる大人の黒！\n丸二日かけてニンニクの風味を凝縮させた\n特製黒マー油入りのスープが麺によく絡む！"
        vc.number1 = self.subNumber15
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=44"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok12")
        vc.sendLabel1 = "熊本味千ラーメンギフトセット\n２食入り１０セット　化粧箱入り"
        vc.sendLabel2 = "4,420円（税込）"
        vc.sendText = "元祖熊本ラーメン　味千ラーメンギフトセット　熊本豚骨"
        vc.number1 = self.subNumber12
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=71"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok25")
        vc.sendLabel1 = "[皇帝]　太平燕　辛みそ味カップ\nスープ５食入り"
        vc.sendLabel2 = "340円（税込）"
        vc.sendText = "ヘルシー！１食あたり７３kcal★カップにお湯を注いで３分！\nお弁当のお供にも最適♪"
        vc.number1 = self.subNumber25
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=27"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok22")
        vc.sendLabel1 = "熊本名物　太平燕２食入り１０セット\n（全２０食入）送料無料"
        vc.sendLabel2 = "6,500円（税込）"
        vc.sendText = "話題のヘルシーB級グルメ！中華風春雨スープ、はるさめヌードル\n「太平燕」とは・・・\n中国福建省の家庭料理をヒントに熊本の料理人が「まかない」と\nして作ったのが始まり、と言われている健康春雨スープです。\n「白湯豚骨スープ」と「鶏ガラスープ」をブレンドし、コクがあ\nるのにあっさりとしたオリジナルスープに仕上げました。お好み\nで野菜やゆで卵等を入れるとより一層美味しくいただけます。"
        vc.number1 = self.subNumber22
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=33"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok7")
        vc.sendLabel1 = "匠ラーメン＋味千拉麺丼セット"
        vc.sendLabel2 = "2,000円（税込）"
        vc.sendText = "味千拉麺通販初　匠ラーメンとロゴ入りオリジナル丼セット\nありそうでなかった、「半生麺なのにお鍋一つで簡単調理」可\n能な味千」拉麺の「匠」を詰め込んだ自信作の「匠ラーメン」と味\n千拉麺オリジナルの丼セットで販売。しかも送料無料！味千拉麺\nでロゴ入り丼は初めての販売！是非プレミア感満載の匠拉麺\n＋丼セットを！"
        vc.number1 = self.subNumber7
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=71"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents13(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok2")
        vc.sendLabel1 = "[味千×桂花]　桂花（３食）×匠ラーメ\nン（３食）セット"
        vc.sendLabel2 = "2,754円（税込）"
        vc.sendText = "味千の匠と桂花ラーメンのセット！\nありそうでなかった、「半生麺なのにお鍋一つで簡単調理」可\n能な味千」拉麺の「匠」を詰め込んだ自信作の「匠ラーメン」\n豚骨と鶏ガラWスープが特徴の、創業昭和３０年から続く伝統\n桂花ラーメン２つの商品が夢の共演！"
        vc.number1 = self.subNumber2
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=83"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents14(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok8")
        vc.sendLabel1 = "[味千拉麺]匠拉麺１食入り"
        vc.sendLabel2 = "594円（税込）"
        vc.sendText = "ありそうでなかった、「半生麺なのにお鍋一つで簡単調理」可\n能な味千」拉麺の「匠」を詰め込んだ自信作の「匠ラーメン」"
        vc.number1 = self.subNumber8
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=81"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents15(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok9")
        vc.sendLabel1 = "[味千拉麺]匠拉麺5食入り"
        vc.sendLabel2 = "2,970円（税込）"
        vc.sendText = "ありそうでなかった、「半生麺なのにお鍋一つで簡単調理」可\n能な味千」拉麺の「匠」を詰め込んだ自信作の「匠ラーメン」"
        vc.number1 = self.subNumber9
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=82"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents16(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok10")
        vc.sendLabel1 = "[味千拉麺]匠拉麺10食入り"
        vc.sendLabel2 = "5,940円（税込）"
        vc.sendText = "ありそうでなかった、「半生麺なのにお鍋一つで簡単調理」可\n能な味千」拉麺の「匠」を詰め込んだ自信作の「匠ラーメン」"
        vc.number1 = self.subNumber10
        vc.sendUrl = "https://aji1000.com/products/detail.php?product_id=47"
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}

