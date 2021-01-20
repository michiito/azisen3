
//buyViewControllerと構造は同じ

import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth

class menu1ViewController: UIViewController {
    
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
    let starLabel29 = UILabel()
    let starLabel30 = UILabel()
    let starLabel31 = UILabel()
    let starLabel32 = UILabel()
    let starLabel33 = UILabel()
    let starLabel34 = UILabel()
    let starLabel35 = UILabel()
    let starLabel36 = UILabel()
    let starLabel37 = UILabel()
    let starLabel38 = UILabel()
    let starLabel39 = UILabel()
    let starLabel40 = UILabel()
    let starLabel41 = UILabel()
    let starLabel42 = UILabel()
    let starLabel43 = UILabel()
    let starLabel44 = UILabel()
    let starLabel45 = UILabel()
    let starLabel46 = UILabel()
    let starLabel47 = UILabel()
    let starLabel48 = UILabel()
    let starLabel49 = UILabel()
    let starLabel50 = UILabel()
    let starLabel51 = UILabel()
    let starLabel52 = UILabel()
    let starLabel53 = UILabel()
    let starLabel54 = UILabel()
    let starLabel55 = UILabel()
    let starLabel56 = UILabel()
    let starLabel57 = UILabel()
    let starLabel58 = UILabel()
    let starLabel59 = UILabel()
    let starLabel60 = UILabel()
    let starLabel61 = UILabel()
    let starLabel62 = UILabel()
    let starLabel63 = UILabel()
    let starLabel64 = UILabel()
    let starLabel65 = UILabel()
    let starLabel66 = UILabel()
    let starLabel67 = UILabel()
    let starLabel68 = UILabel()
    let starLabel69 = UILabel()
    
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
    var subNumber29: Int?
    var subNumber30: Int?
    var subNumber31: Int?
    var subNumber32: Int?
    var subNumber33: Int?
    var subNumber34: Int?
    var subNumber35: Int?
    var subNumber36: Int?
    var subNumber37: Int?
    var subNumber38: Int?
    var subNumber39: Int?
    var subNumber40: Int?
    var subNumber41: Int?
    var subNumber42: Int?
    var subNumber43: Int?
    var subNumber44: Int?
    var subNumber45: Int?
    var subNumber46: Int?
    var subNumber47: Int?
    var subNumber48: Int?
    var subNumber49: Int?
    var subNumber50: Int?
    var subNumber51: Int?
    var subNumber52: Int?
    var subNumber53: Int?
    var subNumber54: Int?
    var subNumber55: Int?
    var subNumber56: Int?
    var subNumber57: Int?
    var subNumber58: Int?
    var subNumber59: Int?
    var subNumber60: Int?
    var subNumber61: Int?
    var subNumber62: Int?
    var subNumber63: Int?
    var subNumber64: Int?
    var subNumber65: Int?
    var subNumber66: Int?
    var subNumber67: Int?
    var subNumber68: Int?
    var subNumber69: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let menuView = UIView()
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        
        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("メニュー", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = .black
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
        ramen1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        ramen1.text = "ラーメン"
        ramen1.textColor = .white
        ramen1.textAlignment = NSTextAlignment.center
        ramen1.font = UIFont.systemFont(ofSize: 10)
        ramen.addSubview(ramen1)
        
        let ramen2 = UILabel()
        ramen2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        ramen2.text = "ramen"
        ramen2.textColor = .white
        ramen2.textAlignment = NSTextAlignment.center
        ramen2.font = UIFont.systemFont(ofSize: 10)
        ramen.addSubview(ramen2)
        
        let mbutton1 = UIButton()
        let mimage1 = UIImage(named: "p.azisenramen")
        mbutton1.frame = CGRect(x: 0, y: 170, width: width/3, height: 150)
        mbutton1.setImage(mimage1, for: .normal)
        mbutton1.titleLabel?.numberOfLines = 2
        mbutton1.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton1.setTitle("味千ラーメン\n670", for: .normal)
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
        mview1.addSubview(starLabel1)
        
        
        let mbutton2 = UIButton()
        let mimage2 = UIImage(named: "p.paiku-men")
        mbutton2.frame = CGRect(x: width/3, y: 170, width: width/3, height: 150)
        mbutton2.setImage(mimage2, for: .normal)
        mbutton2.titleLabel?.numberOfLines = 2
        mbutton2.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton2.setTitle("パイクー麺\n900", for: .normal)
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
        let mimage3 = UIImage(named: "p.kuromayuramen")
        mbutton3.frame = CGRect(x: width-width/3, y: 170, width: width/3, height: 150)
        mbutton3.setImage(mimage3, for: .normal)
        mbutton3.titleLabel?.numberOfLines = 2
        mbutton3.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton3.setTitle("黒マー油ラーメン\n850", for: .normal)
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
        let mimage4 = UIImage(named: "p.zennoseramen")
        mbutton4.frame = CGRect(x: 0, y: 320, width: width/3, height: 150)
        mbutton4.setImage(mimage4, for: .normal)
        mbutton4.titleLabel?.numberOfLines = 2
        mbutton4.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton4.setTitle("全のせラーメン\n1290", for: .normal)
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
        let mimage5 = UIImage(named: "p.tyasyumen")
        mbutton5.frame = CGRect(x: width/3, y: 320, width: width/3, height: 150)
        mbutton5.setImage(mimage5, for: .normal)
        mbutton5.titleLabel?.numberOfLines = 2
        mbutton5.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton5.setTitle("チャーシュー麵\n1100", for: .normal)
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
        let mimage6 = UIImage(named: "p.syauyuramen")
        mbutton6.frame = CGRect(x: width-width/3, y: 320, width: width/3, height: 150)
        mbutton6.setImage(mimage6, for: .normal)
        mbutton6.titleLabel?.numberOfLines = 2
        mbutton6.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton6.setTitle("醤油ラーメン\n790", for: .normal)
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
        let mimage7 = UIImage(named: "p.misotonkoturamen")
        mbutton7.frame = CGRect(x: 0, y: 470, width: width/3, height: 150)
        mbutton7.setImage(mimage7, for: .normal)
        mbutton7.titleLabel?.numberOfLines = 2
        mbutton7.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton7.setTitle("味噌豚骨ラーメン\n790", for: .normal)
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
        let mimage8 = UIImage(named: "p.karamisoramen")
        mbutton8.frame = CGRect(x: width/3, y: 470, width: width/3, height: 150)
        mbutton8.setImage(mimage8, for: .normal)
        mbutton8.titleLabel?.numberOfLines = 2
        mbutton8.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton8.setTitle("辛みそラーメン\n820", for: .normal)
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
        let mimage9 = UIImage(named: "p.hukkokuramen")
        mbutton9.frame = CGRect(x:width-width/3, y: 470, width: width/3, height: 150)
        mbutton9.setImage(mimage9, for: .normal)
        mbutton9.titleLabel?.numberOfLines = 2
        mbutton9.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton9.setTitle("復刻ラーメン昭和味\n790", for: .normal)
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
        
        
        let mbutton10 = UIButton()
        let mimage10 = UIImage(named: "p.zeitakukiriaburitya-syumen")
        mbutton10.frame = CGRect(x:0, y: 620, width: width/3, height: 150)
        mbutton10.setImage(mimage10, for: .normal)
        mbutton10.titleLabel?.numberOfLines = 3
        mbutton10.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton10.setTitle("贅沢切り炙り\nチャーシュー麵\n1200", for: .normal)
        mbutton10.addTarget(self, action: #selector(tapEvents10), for: .touchUpInside)
        mbutton10.setTitleColor(.black, for: .normal)
        mbutton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton10.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton10)
        
        let mview10 = UIView()
        mview10.frame = CGRect(x:width/3-30, y: 690, width: 24, height: 24)
        mview10.backgroundColor = .white
        mview10.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview10)
        

        starLabel10.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel10.text = "★"
        starLabel10.font = UIFont.systemFont(ofSize: 18)
        starLabel10.textColor = .gray
        mview10.addSubview(starLabel10)
        
        
        let mbutton11 = UIButton()
        let mimage11 = UIImage(named: "p.pirikaranegiramen")
        mbutton11.frame = CGRect(x:width/3, y: 620, width: width/3, height: 150)
        mbutton11.setImage(mimage11, for: .normal)
        mbutton11.titleLabel?.numberOfLines = 2
        mbutton11.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton11.setTitle("ピリ辛ネギラーメン\n800", for: .normal)
        mbutton11.setTitleColor(.black, for: .normal)
        mbutton11.addTarget(self, action: #selector(tapEvents11), for: .touchUpInside)
        mbutton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton11.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton11)
        
        let mview11 = UIView()
        mview11.frame = CGRect(x:width*0.667-30, y: 690, width: 24, height: 24)
        mview11.backgroundColor = .white
        mview11.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview11)
        

        starLabel11.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel11.text = "★"
        starLabel11.font = UIFont.systemFont(ofSize: 18)
        starLabel11.textColor = .gray
        mview11.addSubview(starLabel11)
        
        
        let tukemen = UIView()
        tukemen.frame = CGRect(x: 0, y: 770, width: width, height: 35)
        tukemen.backgroundColor = .black
        scrollView.addSubview(tukemen)
        
        let tukemen1 = UILabel()
        tukemen1.frame = CGRect(x: width/10, y: 5, width:width-width/10 , height: 15)
        tukemen1.text = "つけ麵"
        tukemen1.textColor = .white
        tukemen1.textAlignment = NSTextAlignment.center
        tukemen1.font = UIFont.systemFont(ofSize: 10)
        tukemen.addSubview(tukemen1)
        
        let tukemen2 = UILabel()
        tukemen2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        tukemen2.text = "dipping noodles"
        tukemen2.textColor = .white
        tukemen2.textAlignment = NSTextAlignment.center
        tukemen2.font = UIFont.systemFont(ofSize: 10)
        tukemen.addSubview(tukemen2)
        
        
        let mbutton12 = UIButton()
        let mimage12 = UIImage(named: "p.tukemen")
        mbutton12.frame = CGRect(x:0, y: 805, width: width/3, height: 150)
        mbutton12.setImage(mimage12, for: .normal)
        mbutton12.titleLabel?.numberOfLines = 2
        mbutton12.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton12.setTitle("つけ麵\n940", for: .normal)
        mbutton12.addTarget(self, action: #selector(tapEvents12), for: .touchUpInside)
        mbutton12.setTitleColor(.black, for: .normal)
        mbutton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton12.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton12)
        
        let mview12 = UIView()
        mview12.frame = CGRect(x:width/3-30, y: 875, width: 24, height: 24)
        mview12.backgroundColor = .white
        mview12.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview12)
        

        starLabel12.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel12.text = "★"
        starLabel12.font = UIFont.systemFont(ofSize: 18)
        starLabel12.textColor = .gray
        mview12.addSubview(starLabel12)
        
        
        let mbutton13 = UIButton()
        let mimage13 = UIImage(named: "p.karatukemen")
        mbutton13.frame = CGRect(x:width/3, y: 805, width: width/3, height: 150)
        mbutton13.setImage(mimage13, for: .normal)
        mbutton13.titleLabel?.numberOfLines = 2
        mbutton13.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton13.setTitle("辛つけ麵\n960", for: .normal)
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
        
        
        let chukamen = UIView()
        chukamen.frame = CGRect(x: 0, y: 955, width: width, height: 35)
        chukamen.backgroundColor = .black
        scrollView.addSubview(chukamen)
        
        let chukamen1 = UILabel()
        chukamen1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        chukamen1.text = "中華麺"
        chukamen1.textAlignment = NSTextAlignment.center
        chukamen1.textColor = .white
        chukamen1.font = UIFont.systemFont(ofSize: 10)
        chukamen.addSubview(chukamen1)
        
        let chukamen2 = UILabel()
        chukamen2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        chukamen2.text = "Chinese noodles"
        chukamen2.textAlignment = NSTextAlignment.center
        chukamen2.textColor = .white
        chukamen2.font = UIFont.systemFont(ofSize: 10)
        chukamen.addSubview(chukamen2)
        
        
        let mbutton14 = UIButton()
        let mimage14 = UIImage(named: "p.taipi-en")
        mbutton14.frame = CGRect(x:0, y: 1000, width: width/3, height: 150)
        mbutton14.setImage(mimage14, for: .normal)
        mbutton14.titleLabel?.numberOfLines = 2
        mbutton14.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton14.setTitle("太平燕\n880", for: .normal)
        mbutton14.setTitleColor(.black, for: .normal)
        mbutton14.addTarget(self, action: #selector(tapEvents14), for: .touchUpInside)
        mbutton14.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton14.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton14.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton14)
        
        let mview14 = UIView()
        mview14.frame = CGRect(x:width/3-30, y: 1070, width: 24, height: 24)
        mview14.backgroundColor = .white
        mview14.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview14)
        

        starLabel14.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel14.text = "★"
        starLabel14.font = UIFont.systemFont(ofSize: 18)
        starLabel14.textColor = .gray
        mview14.addSubview(starLabel14)
        
        
        let mbutton15 = UIButton()
        let mimage15 = UIImage(named: "p.parisoba")
        mbutton15.frame = CGRect(x:width/3, y: 1000, width: width/3, height: 150)
        mbutton15.setImage(mimage15, for: .normal)
        mbutton15.titleLabel?.numberOfLines = 2
        mbutton15.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton15.setTitle("パリそば\n840", for: .normal)
        mbutton15.setTitleColor(.black, for: .normal)
        mbutton15.addTarget(self, action: #selector(tapEvents15), for: .touchUpInside)
        mbutton15.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton15.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton15.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton15)
        
        let mview15 = UIView()
        mview15.frame = CGRect(x:width*0.667-30, y: 1070, width: 24, height: 24)
        mview15.backgroundColor = .white
        mview15.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview15)
        

        starLabel15.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel15.text = "★"
        starLabel15.font = UIFont.systemFont(ofSize: 18)
        starLabel15.textColor = .gray
        mview15.addSubview(starLabel15)
        
        
        let mbutton16 = UIButton()
        let mimage16 = UIImage(named: "p.yakisoba")
        mbutton16.frame = CGRect(x:width-width/3, y: 1000, width: width/3, height: 150)
        mbutton16.setImage(mimage16, for: .normal)
        mbutton16.titleLabel?.numberOfLines = 2
        mbutton16.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton16.setTitle("焼きそば\n820", for: .normal)
        mbutton16.setTitleColor(.black, for: .normal)
        mbutton16.addTarget(self, action: #selector(tapEvents16), for: .touchUpInside)
        mbutton16.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton16.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton16.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton16)
        
        let mview16 = UIView()
        mview16.frame = CGRect(x:width-30, y: 1070, width: 24, height: 24)
        mview16.backgroundColor = .white
        mview16.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview16)
        

        starLabel16.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel16.text = "★"
        starLabel16.font = UIFont.systemFont(ofSize: 18)
        starLabel16.textColor = .gray
        mview16.addSubview(starLabel16)
        
        
        let mbutton17 = UIButton()
        let mimage17 = UIImage(named: "p.tyanpon")
        mbutton17.frame = CGRect(x:0, y: 1150, width: width/3, height: 150)
        mbutton17.setImage(mimage17, for: .normal)
        mbutton17.titleLabel?.numberOfLines = 2
        mbutton17.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton17.setTitle("ちゃんぽん\n880", for: .normal)
        mbutton17.setTitleColor(.black, for: .normal)
        mbutton17.addTarget(self, action: #selector(tapEvents17), for: .touchUpInside)
        mbutton17.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton17.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton17.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton17)
        
        let mview17 = UIView()
        mview17.frame = CGRect(x:width/3-30, y: 1220, width: 24, height: 24)
        mview17.backgroundColor = .white
        mview17.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview17)
        

        starLabel17.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel17.text = "★"
        starLabel17.font = UIFont.systemFont(ofSize: 18)
        starLabel17.textColor = .gray
        mview17.addSubview(starLabel17)
        
        
        let mbutton18 = UIButton()
        let mimage18 = UIImage(named: "p.pirikaratyanpon")
        mbutton18.frame = CGRect(x:width/3, y: 1150, width: width/3, height: 150)
        mbutton18.setImage(mimage18, for: .normal)
        mbutton18.titleLabel?.numberOfLines = 2
        mbutton18.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton18.setTitle("ピリ辛ちゃんぽん\n900", for: .normal)
        mbutton18.setTitleColor(.black, for: .normal)
        mbutton18.addTarget(self, action: #selector(tapEvents18), for: .touchUpInside)
        mbutton18.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton18.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton18.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton18)
        
        let mview18 = UIView()
        mview18.frame = CGRect(x:width*0.667-30, y: 1220, width: 24, height: 24)
        mview18.backgroundColor = .white
        mview18.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview18)
        

        starLabel18.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel18.text = "★"
        starLabel18.font = UIFont.systemFont(ofSize: 18)
        starLabel18.textColor = .gray
        mview18.addSubview(starLabel18)
        
        
        let okonomimen = UIView()
        okonomimen.frame = CGRect(x: 0, y: 1300, width: width, height: 35)
        okonomimen.backgroundColor = .black
        scrollView.addSubview(okonomimen)
        
        let okonomimen1 = UILabel()
        okonomimen1.frame = CGRect(x: width/10, y: 10, width: width-width/10, height: 15)
        okonomimen1.text = "お好み麵セット"
        okonomimen1.textAlignment = NSTextAlignment.center
        okonomimen1.textColor = .white
        okonomimen1.font = UIFont.systemFont(ofSize: 13)
        okonomimen.addSubview(okonomimen1)
        
        
        let mbutton19 = UIButton()
        let mimage19 = UIImage(named: "p.gyozaset")
        mbutton19.frame = CGRect(x:0, y: 1335, width: width/3, height: 150)
        mbutton19.setImage(mimage19, for: .normal)
        mbutton19.titleLabel?.numberOfLines = 0
        mbutton19.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton19.setTitle("ギョーザセット", for: .normal)
        mbutton19.setTitleColor(.black, for: .normal)
        mbutton19.addTarget(self, action: #selector(tapEvents19), for: .touchUpInside)
        mbutton19.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton19.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton19.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton19)
        
        let mview19 = UIView()
        mview19.frame = CGRect(x:width/3-30, y: 1405, width: 24, height: 24)
        mview19.backgroundColor = .white
        mview19.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview19)
        
 
        starLabel19.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel19.text = "★"
        starLabel19.font = UIFont.systemFont(ofSize: 18)
        starLabel19.textColor = .gray
        mview19.addSubview(starLabel19)
        
        
        let mbutton20 = UIButton()
        let mimage20 = UIImage(named: "p.karaageset")
        mbutton20.frame = CGRect(x:width/3, y: 1335, width: width/3, height: 150)
        mbutton20.setImage(mimage20, for: .normal)
        mbutton20.titleLabel?.numberOfLines = 0
        mbutton20.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton20.setTitle("唐揚げセット", for: .normal)
        mbutton20.setTitleColor(.black, for: .normal)
        mbutton20.addTarget(self, action: #selector(tapEvents20), for: .touchUpInside)
        mbutton20.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton20.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton20.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton20)
        
        let mview20 = UIView()
        mview20.frame = CGRect(x:width*0.667-30, y: 1405, width: 24, height: 24)
        mview20.backgroundColor = .white
        mview20.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview20)
        

        starLabel20.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel20.text = "★"
        starLabel20.font = UIFont.systemFont(ofSize: 18)
        starLabel20.textColor = .gray
        mview20.addSubview(starLabel20)
        
        
        let mbutton21 = UIButton()
        let mimage21 = UIImage(named: "p.hantya-hanset")
        mbutton21.frame = CGRect(x:width-width/3, y: 1335, width: width/3, height: 150)
        mbutton21.setImage(mimage21, for: .normal)
        mbutton21.titleLabel?.numberOfLines = 0
        mbutton21.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton21.setTitle("半チャーハンセット", for: .normal)
        mbutton21.setTitleColor(.black, for: .normal)
        mbutton21.addTarget(self, action: #selector(tapEvents21), for: .touchUpInside)
        mbutton21.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton21.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton21.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton21)
        
        let mview21 = UIView()
        mview21.frame = CGRect(x:width-30, y: 1405, width: 24, height: 24)
        mview21.backgroundColor = .white
        mview21.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview21)
        
 
        starLabel21.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel21.text = "★"
        starLabel21.font = UIFont.systemFont(ofSize: 18)
        starLabel21.textColor = .gray
        mview21.addSubview(starLabel21)
        
        
        let mbutton22 = UIButton()
        let mimage22 = UIImage(named: "p.no")
        mimage22?.withTintColor(UIColor.systemGray3)
        mbutton22.frame = CGRect(x:0, y: 1485, width: width/3, height: 150)
        mbutton22.setImage(mimage22, for: .normal)
        mbutton22.titleLabel?.numberOfLines = 0
        mbutton22.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton22.setTitle("月替わりセット", for: .normal)
        mbutton22.setTitleColor(.black, for: .normal)
        mbutton22.addTarget(self, action: #selector(tapEvents22), for: .touchUpInside)
        mbutton22.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton22.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton22.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton22)
        
        let mview22 = UIView()
        mview22.frame = CGRect(x:width/3-30, y: 1555, width: 24, height: 24)
        mview22.backgroundColor = .white
        mview22.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview22)
        

        starLabel22.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel22.text = "★"
        starLabel22.font = UIFont.systemFont(ofSize: 18)
        starLabel22.textColor = .gray
        mview22.addSubview(starLabel22)
        
        let set = UIView()
        set.frame = CGRect(x: 0, y: 1635, width: width, height: 35)
        set.backgroundColor = .black
        scrollView.addSubview(set)
        
        let set1 = UILabel()
        set1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        set1.text = "セットメニュー"
        set1.textAlignment = NSTextAlignment.center
        set1.textColor = .white
        set1.font = UIFont.systemFont(ofSize: 10)
        set.addSubview(set1)
        
        let set2 = UILabel()
        set2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        set2.text = "set menu"
        set2.textAlignment = NSTextAlignment.center
        set2.textColor = .white
        set2.font = UIFont.systemFont(ofSize: 10)
        set.addSubview(set2)
        
        
        let mbutton23 = UIButton()
        let mimage23 = UIImage(named: "p.ha-huset")
        mbutton23.frame = CGRect(x:0, y: 1670, width: width/3, height: 150)
        mbutton23.setImage(mimage23, for: .normal)
        mbutton23.titleLabel?.numberOfLines = 0
        mbutton23.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton23.setTitle("ハーフセット", for: .normal)
        mbutton23.setTitleColor(.black, for: .normal)
        mbutton23.addTarget(self, action: #selector(tapEvents23), for: .touchUpInside)
        mbutton23.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton23.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton23.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton23)
        
        let mview23 = UIView()
        mview23.frame = CGRect(x:width/3-30, y: 1740, width: 24, height: 24)
        mview23.backgroundColor = .white
        mview23.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview23)
        

        starLabel23.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel23.text = "★"
        starLabel23.font = UIFont.systemFont(ofSize: 18)
        starLabel23.textColor = .gray
        mview23.addSubview(starLabel23)
        
        
        let mbutton24 = UIButton()
        let mimage24 = UIImage(named: "p.supesyaruset")
        mbutton24.frame = CGRect(x:width / 3, y: 1670, width: width/3, height: 150)
        mbutton24.setImage(mimage24, for: .normal)
        mbutton24.titleLabel?.numberOfLines = 0
        mbutton24.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton24.setTitle("スペシャルセット", for: .normal)
        mbutton24.setTitleColor(.black, for: .normal)
        mbutton24.addTarget(self, action: #selector(tapEvents24), for: .touchUpInside)
        mbutton24.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton24.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton24.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton24)
        
        let mview24 = UIView()
        mview24.frame = CGRect(x:width*0.667-30, y: 1740, width: 24, height: 24)
        mview24.backgroundColor = .white
        mview24.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview24)
        

        starLabel24.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel24.text = "★"
        starLabel24.font = UIFont.systemFont(ofSize: 18)
        starLabel24.textColor = .gray
        mview24.addSubview(starLabel24)
        
        
        let mbutton25 = UIButton()
        let mimage25 = UIImage(named: "p.tya-syu-tamagodonset")
        mbutton25.frame = CGRect(x:width - width / 3, y: 1670, width: width/3, height: 150)
        mbutton25.setImage(mimage25, for: .normal)
        mbutton25.titleLabel?.numberOfLines = 0
        mbutton25.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton25.setTitle("チャーシュー玉子丼セット", for: .normal)
        mbutton25.setTitleColor(.black, for: .normal)
        mbutton25.addTarget(self, action: #selector(tapEvents25), for: .touchUpInside)
        mbutton25.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton25.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton25.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton25)
        
        let mview25 = UIView()
        mview25.frame = CGRect(x:width-30, y: 1740, width: 24, height: 24)
        mview25.backgroundColor = .white
        mview25.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview25)
        

        starLabel25.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel25.text = "★"
        starLabel25.font = UIFont.systemFont(ofSize: 18)
        starLabel25.textColor = .gray
        mview25.addSubview(starLabel25)
        
        
        let mbutton26 = UIButton()
        let mimage26 = UIImage(named: "p.karamisotya-syu-donset")
        mbutton26.frame = CGRect(x:0, y: 1820, width: width/3, height: 150)
        mbutton26.setImage(mimage26, for: .normal)
        mbutton26.titleLabel?.numberOfLines = 0
        mbutton26.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton26.setTitle("辛みそチャーシュー丼セット", for: .normal)
        mbutton26.setTitleColor(.black, for: .normal)
        mbutton26.addTarget(self, action: #selector(tapEvents26), for: .touchUpInside)
        mbutton26.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton26.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton26.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton26)
        
        let mview26 = UIView()
        mview26.frame = CGRect(x:width/3-30, y: 1890, width: 24, height: 24)
        mview26.backgroundColor = .white
        mview26.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview26)
        
  
        starLabel26.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel26.text = "★"
        starLabel26.font = UIFont.systemFont(ofSize: 18)
        starLabel26.textColor = .gray
        mview26.addSubview(starLabel26)
        
        
        let mbutton27 = UIButton()
        let mimage27 = UIImage(named: "p.tikinnanbanset")
        mbutton27.frame = CGRect(x:width / 3, y: 1820, width: width/3, height: 150)
        mbutton27.setImage(mimage27, for: .normal)
        mbutton27.titleLabel?.numberOfLines = 0
        mbutton27.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton27.setTitle("チキン南蛮セット", for: .normal)
        mbutton27.setTitleColor(.black, for: .normal)
        mbutton27.addTarget(self, action: #selector(tapEvents27), for: .touchUpInside)
        mbutton27.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton27.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton27.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton27)
        
        let mview27 = UIView()
        mview27.frame = CGRect(x:width * 0.677 - 30, y: 1890, width: 24, height: 24)
        mview27.backgroundColor = .white
        mview27.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview27)
        

        starLabel27.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel27.text = "★"
        starLabel27.font = UIFont.systemFont(ofSize: 18)
        starLabel27.textColor = .gray
        mview27.addSubview(starLabel27)
        
        
        let mbutton28 = UIButton()
        let mimage28 = UIImage(named: "p.manpukuset")
        mbutton28.frame = CGRect(x:width - width / 3, y: 1820, width: width/3, height: 150)
        mbutton28.setImage(mimage28, for: .normal)
        mbutton28.titleLabel?.numberOfLines = 0
        mbutton28.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton28.setTitle("満腹セット", for: .normal)
        mbutton28.setTitleColor(.black, for: .normal)
        mbutton28.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton28.addTarget(self, action: #selector(tapEvents28), for: .touchUpInside)
        mbutton28.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton28.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton28)
        
        let mview28 = UIView()
        mview28.frame = CGRect(x:width - 30, y: 1890, width: 24, height: 24)
        mview28.backgroundColor = .white
        mview28.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview28)
        

        starLabel28.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel28.text = "★"
        starLabel28.font = UIFont.systemFont(ofSize: 18)
        starLabel28.textColor = .gray
        mview28.addSubview(starLabel28)
        
        
        let mbutton29 = UIButton()
        let mimage29 = UIImage(named: "p.aburitya-syu-donset")
        mbutton29.frame = CGRect(x:0, y: 1970, width: width/3, height: 150)
        mbutton29.setImage(mimage29, for: .normal)
        mbutton29.titleLabel?.numberOfLines = 0
        mbutton29.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton29.setTitle("炙りチャーシュー丼セット", for: .normal)
        mbutton29.setTitleColor(.black, for: .normal)
        mbutton29.addTarget(self, action: #selector(tapEvents29), for: .touchUpInside)
        mbutton29.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton29.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton29.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton29)
        
        let mview29 = UIView()
        mview29.frame = CGRect(x:width / 3 - 30, y: 2040, width: 24, height: 24)
        mview29.backgroundColor = .white
        mview29.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview29)
        

        starLabel29.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel29.text = "★"
        starLabel29.font = UIFont.systemFont(ofSize: 18)
        starLabel29.textColor = .gray
        mview29.addSubview(starLabel29)
        
        
        let mbutton30 = UIButton()
        let mimage30 = UIImage(named: "p.dxset")
        mbutton30.frame = CGRect(x:width / 3, y: 1970, width: width/3, height: 150)
        mbutton30.setImage(mimage30, for: .normal)
        mbutton30.titleLabel?.numberOfLines = 0
        mbutton30.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton30.setTitle("DXセット", for: .normal)
        mbutton30.setTitleColor(.black, for: .normal)
        mbutton30.addTarget(self, action: #selector(tapEvents30), for: .touchUpInside)
        mbutton30.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton30.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton30.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton30)
        
        let mview30 = UIView()
        mview30.frame = CGRect(x:width * 0.677 - 30, y: 2040, width: 24, height: 24)
        mview30.backgroundColor = .white
        mview30.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview30)
        
        
        starLabel30.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel30.text = "★"
        starLabel30.font = UIFont.systemFont(ofSize: 18)
        starLabel30.textColor = .gray
        mview30.addSubview(starLabel30)
        
        
        let mbutton31 = UIButton()
        let mimage31 = UIImage(named: "p.no")
        mbutton31.frame = CGRect(x:width - width / 3, y: 1970, width: width/3, height: 150)
        mbutton31.setImage(mimage31, for: .normal)
        mbutton31.titleLabel?.numberOfLines = 0
        mbutton31.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton31.setTitle("馬丼セット", for: .normal)
        mbutton31.addTarget(self, action: #selector(tapEvents31), for: .touchUpInside)
        mbutton31.setTitleColor(.black, for: .normal)
        mbutton31.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton31.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton31.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton31)
        
        let mview31 = UIView()
        mview31.frame = CGRect(x:width - 30, y: 2040, width: 24, height: 24)
        mview31.backgroundColor = .white
        mview31.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview31)
        

        starLabel31.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel31.text = "★"
        starLabel31.font = UIFont.systemFont(ofSize: 18)
        starLabel31.textColor = .gray
        mview31.addSubview(starLabel31)
        
        
        let child = UIView()
        child.frame = CGRect(x: 0, y: 2120, width: width, height: 35)
        child.backgroundColor = .black
        scrollView.addSubview(child)
        
        let child1 = UILabel()
        child1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        child1.text = "お子様用セット"
        child1.textAlignment = NSTextAlignment.center
        child1.textColor = .white
        child1.font = UIFont.systemFont(ofSize: 10)
        child.addSubview(child1)
        
        let child2 = UILabel()
        child2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        child2.text = "Set for children"
        child2.textAlignment = NSTextAlignment.center
        child2.textColor = .white
        child2.font = UIFont.systemFont(ofSize: 10)
        child.addSubview(child2)
        
        
        let mbutton32 = UIButton()
        let mimage32 = UIImage(named: "p.dxset")
        mbutton32.frame = CGRect(x:0, y: 2155, width: width/3, height: 150)
        mbutton32.setImage(mimage32, for: .normal)
        mbutton32.titleLabel?.numberOfLines = 0
        mbutton32.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton32.setTitle("ラーメンkids", for: .normal)
        mbutton32.setTitleColor(.black, for: .normal)
        mbutton32.addTarget(self, action: #selector(tapEvents32), for: .touchUpInside)
        mbutton32.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton32.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton32.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton32)
        
        let mview32 = UIView()
        mview32.frame = CGRect(x:width / 3 - 30, y: 2225, width: 24, height: 24)
        mview32.backgroundColor = .white
        mview32.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview32)
        

        starLabel32.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel32.text = "★"
        starLabel32.font = UIFont.systemFont(ofSize: 18)
        starLabel32.textColor = .gray
        mview32.addSubview(starLabel32)
        
        
        let mbutton33 = UIButton()
        let mimage33 = UIImage(named: "p.dxset")
        mbutton33.frame = CGRect(x:width / 3, y: 2155, width: width/3, height: 150)
        mbutton33.setImage(mimage33, for: .normal)
        mbutton33.titleLabel?.numberOfLines = 0
        mbutton33.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton33.setTitle("ラーメンJr.", for: .normal)
        mbutton33.setTitleColor(.black, for: .normal)
        mbutton33.addTarget(self, action: #selector(tapEvents33), for: .touchUpInside)
        mbutton33.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton33.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton33.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton33)
        
        let mview33 = UIView()
        mview33.frame = CGRect(x:width - width / 3 - 30, y: 2225, width: 24, height: 24)
        mview33.backgroundColor = .white
        mview33.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview33)
        

        starLabel33.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel33.text = "★"
        starLabel33.font = UIFont.systemFont(ofSize: 18)
        starLabel33.textColor = .gray
        mview33.addSubview(starLabel33)
        
        
        let side = UIView()
        side.frame = CGRect(x: 0, y: 2305, width: width, height: 35)
        side.backgroundColor = .black
        scrollView.addSubview(side)
        
        let side1 = UILabel()
        side1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        side1.text = "サイドメニュー、一品物"
        side1.textAlignment = NSTextAlignment.center
        side1.textColor = .white
        side1.font = UIFont.systemFont(ofSize: 10)
        side.addSubview(side1)
        
        let side2 = UILabel()
        side2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        side2.text = "sidemenu"
        side2.textAlignment = NSTextAlignment.center
        side2.textColor = .white
        side2.font = UIFont.systemFont(ofSize: 10)
        side.addSubview(side2)
        
        
        let mbutton34 = UIButton()
        let mimage34 = UIImage(named: "p.yakigyo-zaset")
        mbutton34.frame = CGRect(x:0, y: 2340, width: width/3, height: 150)
        mbutton34.setImage(mimage34, for: .normal)
        mbutton34.titleLabel?.numberOfLines = 0
        mbutton34.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton34.setTitle("焼きギョーザ", for: .normal)
        mbutton34.setTitleColor(.black, for: .normal)
        mbutton34.addTarget(self, action: #selector(tapEvents34), for: .touchUpInside)
        mbutton34.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton34.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton34.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton34)
        
        let mview34 = UIView()
        mview34.frame = CGRect(x:width / 3 - 30, y: 2410, width: 24, height: 24)
        mview34.backgroundColor = .white
        mview34.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview34)
        

        starLabel34.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel34.text = "★"
        starLabel34.font = UIFont.systemFont(ofSize: 18)
        starLabel34.textColor = .gray
        mview34.addSubview(starLabel34)
        
        
        let mbutton35 = UIButton()
        let mimage35 = UIImage(named: "p.karaage")
        mbutton35.frame = CGRect(x:width / 3, y: 2340, width: width/3, height: 150)
        mbutton35.setImage(mimage35, for: .normal)
        mbutton35.titleLabel?.numberOfLines = 0
        mbutton35.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton35.setTitle("唐揚げ５個入り", for: .normal)
        mbutton35.setTitleColor(.black, for: .normal)
        mbutton35.addTarget(self, action: #selector(tapEvents35), for: .touchUpInside)
        mbutton35.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton35.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton35.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton35)
        
        let mview35 = UIView()
        mview35.frame = CGRect(x:width - width / 3 - 30, y: 2410, width: 24, height: 24)
        mview35.backgroundColor = .white
        mview35.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview35)
        

        starLabel35.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel35.text = "★"
        starLabel35.font = UIFont.systemFont(ofSize: 18)
        starLabel35.textColor = .gray
        mview35.addSubview(starLabel35)
        
        
        let mbutton36 = UIButton()
        let mimage36 = UIImage(named: "p.enokigyuunikumaki")
        mbutton36.frame = CGRect(x:width - width / 3, y: 2340, width: width/3, height: 150)
        mbutton36.setImage(mimage36, for: .normal)
        mbutton36.titleLabel?.numberOfLines = 0
        mbutton36.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton36.setTitle("えのき牛肉巻き", for: .normal)
        mbutton36.setTitleColor(.black, for: .normal)
        mbutton36.addTarget(self, action: #selector(tapEvents36), for: .touchUpInside)
        mbutton36.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton36.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton36.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton36)
        
        let mview36 = UIView()
        mview36.frame = CGRect(x:width - 30, y: 2410, width: 24, height: 24)
        mview36.backgroundColor = .white
        mview36.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview36)
        

        starLabel36.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel36.text = "★"
        starLabel36.font = UIFont.systemFont(ofSize: 18)
        starLabel36.textColor = .gray
        mview36.addSubview(starLabel36)
        
        
        let mbutton37 = UIButton()
        let mimage37 = UIImage(named: "p.ebiharumaki")
        mbutton37.frame = CGRect(x:0, y: 2490, width: width/3, height: 150)
        mbutton37.setImage(mimage37, for: .normal)
        mbutton37.titleLabel?.numberOfLines = 0
        mbutton37.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton37.setTitle("エビ春巻き１本", for: .normal)
        mbutton37.setTitleColor(.black, for: .normal)
        mbutton37.addTarget(self, action: #selector(tapEvents37), for: .touchUpInside)
        mbutton37.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton37.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton37.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton37)
        
        let mview37 = UIView()
        mview37.frame = CGRect(x:width / 3 - 30, y: 2560, width: 24, height: 24)
        mview37.backgroundColor = .white
        mview37.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview37)
        

        starLabel37.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel37.text = "★"
        starLabel37.font = UIFont.systemFont(ofSize: 18)
        starLabel37.textColor = .gray
        mview37.addSubview(starLabel37)
        
        
        let mbutton38 = UIButton()
        let mimage38 = UIImage(named: "p.guri-nsarada")
        mbutton38.frame = CGRect(x:width / 3, y: 2490, width: width/3, height: 150)
        mbutton38.setImage(mimage38, for: .normal)
        mbutton38.titleLabel?.numberOfLines = 0
        mbutton38.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton38.setTitle("グリーンサラダ", for: .normal)
        mbutton38.setTitleColor(.black, for: .normal)
        mbutton38.addTarget(self, action: #selector(tapEvents38), for: .touchUpInside)
        mbutton38.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton38.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton38.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton38)
        
        let mview38 = UIView()
        mview38.frame = CGRect(x:width - width / 3 - 30, y: 2560, width: 24, height: 24)
        mview38.backgroundColor = .white
        mview38.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview38)
        

        starLabel38.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel38.text = "★"
        starLabel38.font = UIFont.systemFont(ofSize: 18)
        starLabel38.textColor = .gray
        mview38.addSubview(starLabel38)
        
        
        let mbutton39 = UIButton()
        let mimage39 = UIImage(named: "p.aburitya-syu-")
        mbutton39.frame = CGRect(x:width - width / 3, y: 2490, width: width/3, height: 150)
        mbutton39.setImage(mimage39, for: .normal)
        mbutton39.titleLabel?.numberOfLines = 0
        mbutton39.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton39.setTitle("炙りチャーシュー", for: .normal)
        mbutton39.setTitleColor(.black, for: .normal)
        mbutton39.addTarget(self, action: #selector(tapEvents39), for: .touchUpInside)
        mbutton39.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton39.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton39.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton39)
        
        let mview39 = UIView()
        mview39.frame = CGRect(x:width - 30, y: 2560, width: 24, height: 24)
        mview39.backgroundColor = .white
        mview39.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview39)
        

        starLabel39.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel39.text = "★"
        starLabel39.font = UIFont.systemFont(ofSize: 18)
        starLabel39.textColor = .gray
        mview39.addSubview(starLabel39)
        
        
        let mbutton40 = UIButton()
        let mimage40 = UIImage(named: "p.edamame")
        mbutton40.frame = CGRect(x:0, y: 2640, width: width/3, height: 150)
        mbutton40.setImage(mimage40, for: .normal)
        mbutton40.titleLabel?.numberOfLines = 0
        mbutton40.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton40.setTitle("枝豆", for: .normal)
        mbutton40.setTitleColor(.black, for: .normal)
        mbutton40.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton40.addTarget(self, action: #selector(tapEvents40), for: .touchUpInside)
        mbutton40.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton40.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton40)
        
        let mview40 = UIView()
        mview40.frame = CGRect(x:width / 3 - 30, y: 2710, width: 24, height: 24)
        mview40.backgroundColor = .white
        mview40.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview40)

        starLabel40.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel40.text = "★"
        starLabel40.font = UIFont.systemFont(ofSize: 18)
        starLabel40.textColor = .gray
        mview40.addSubview(starLabel40)
        
        
        let mbutton41 = UIButton()
        let mimage41 = UIImage(named: "p.tonsoku")
        mbutton41.frame = CGRect(x:width / 3, y: 2640, width: width/3, height: 150)
        mbutton41.setImage(mimage41, for: .normal)
        mbutton41.titleLabel?.numberOfLines = 0
        mbutton41.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton41.setTitle("豚足", for: .normal)
        mbutton41.addTarget(self, action: #selector(tapEvents41), for: .touchUpInside)
        mbutton41.setTitleColor(.black, for: .normal)
        mbutton41.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton41.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton41.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton41)
        
        let mview41 = UIView()
        mview41.frame = CGRect(x:width - width / 3 - 30, y: 2710, width: 24, height: 24)
        mview41.backgroundColor = .white
        mview41.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview41)
        

        starLabel41.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel41.text = "★"
        starLabel41.font = UIFont.systemFont(ofSize: 18)
        starLabel41.textColor = .gray
        mview41.addSubview(starLabel41)
        
        
        let mbutton42 = UIButton()
        let mimage42 = UIImage(named: "p.tikinnanban")
        mbutton42.frame = CGRect(x:width - width / 3, y: 2640, width: width/3, height: 150)
        mbutton42.setImage(mimage42, for: .normal)
        mbutton42.titleLabel?.numberOfLines = 0
        mbutton42.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton42.setTitle("チキン南蛮", for: .normal)
        mbutton42.addTarget(self, action: #selector(tapEvents42), for: .touchUpInside)
        mbutton42.setTitleColor(.black, for: .normal)
        mbutton42.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton42.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton42.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton42)
        
        let mview42 = UIView()
        mview42.frame = CGRect(x:width - 30, y: 2710, width: 24, height: 24)
        mview42.backgroundColor = .white
        mview42.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview42)
        

        starLabel42.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel42.text = "★"
        starLabel42.font = UIFont.systemFont(ofSize: 18)
        starLabel42.textColor = .gray
        mview42.addSubview(starLabel42)
        
        
        let mbutton43 = UIButton()
        let mimage43 = UIImage(named: "p.potetohurai")
        mbutton43.frame = CGRect(x:0, y: 2790, width: width/3, height: 150)
        mbutton43.setImage(mimage43, for: .normal)
        mbutton43.titleLabel?.numberOfLines = 0
        mbutton43.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton43.setTitle("ポテトフライ", for: .normal)
        mbutton43.addTarget(self, action: #selector(tapEvents43), for: .touchUpInside)
        mbutton43.setTitleColor(.black, for: .normal)
        mbutton43.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton43.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton43.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton43)
        
        let mview43 = UIView()
        mview43.frame = CGRect(x:width / 3 - 30, y: 2860, width: 24, height: 24)
        mview43.backgroundColor = .white
        mview43.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview43)
        

        starLabel43.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel43.text = "★"
        starLabel43.font = UIFont.systemFont(ofSize: 18)
        starLabel43.textColor = .gray
        mview43.addSubview(starLabel43)
        
        
        let mbutton44 = UIButton()
        let mimage44 = UIImage(named: "p.no")
        mbutton44.frame = CGRect(x:width / 3, y: 2790, width: width/3, height: 150)
        mbutton44.setImage(mimage44, for: .normal)
        mbutton44.titleLabel?.numberOfLines = 0
        mbutton44.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton44.setTitle("ちょい飲みセットA", for: .normal)
        mbutton44.setTitleColor(.black, for: .normal)
        mbutton44.addTarget(self, action: #selector(tapEvents44), for: .touchUpInside)
        mbutton44.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton44.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton44.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton44)
        
        let mview44 = UIView()
        mview44.frame = CGRect(x:width - width / 3 - 30, y: 2860, width: 24, height: 24)
        mview44.backgroundColor = .white
        mview44.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview44)
        

        starLabel44.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel44.text = "★"
        starLabel44.font = UIFont.systemFont(ofSize: 18)
        starLabel44.textColor = .gray
        mview44.addSubview(starLabel44)
        
        
        let mbutton45 = UIButton()
        let mimage45 = UIImage(named: "p.no")
        mbutton45.frame = CGRect(x:width - width / 3, y: 2790, width: width/3, height: 150)
        mbutton45.setImage(mimage45, for: .normal)
        mbutton45.titleLabel?.numberOfLines = 0
        mbutton45.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton45.setTitle("ちょい飲みセットB", for: .normal)
        mbutton45.addTarget(self, action: #selector(tapEvents45), for: .touchUpInside)
        mbutton45.setTitleColor(.black, for: .normal)
        mbutton45.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton45.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton45.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton45)
        
        let mview45 = UIView()
        mview45.frame = CGRect(x:width - 30, y: 2860, width: 24, height: 24)
        mview45.backgroundColor = .white
        mview45.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview45)
        

        starLabel45.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel45.text = "★"
        starLabel45.font = UIFont.systemFont(ofSize: 18)
        starLabel45.textColor = .gray
        mview45.addSubview(starLabel45)
        
        
        let topping = UIView()
        topping.frame = CGRect(x: 0, y: 2940, width: width, height: 35)
        topping.backgroundColor = .black
        scrollView.addSubview(topping)
        
        let topping1 = UILabel()
        topping1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        topping1.text = "トッピング"
        topping1.textAlignment = NSTextAlignment.center
        topping1.textColor = .white
        topping1.font = UIFont.systemFont(ofSize: 10)
        topping.addSubview(topping1)
        
        let topping2 = UILabel()
        topping2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        topping2.text = "topping"
        topping2.textAlignment = NSTextAlignment.center
        topping2.textColor = .white
        topping2.font = UIFont.systemFont(ofSize: 10)
        topping.addSubview(topping2)
        
        
        let mbutton46 = UIButton()
        let mimage46 = UIImage(named: "p.negitappuri")
        mbutton46.frame = CGRect(x:0, y: 2975,width: width/3, height: 150)
        mbutton46.setImage(mimage46, for: .normal)
        mbutton46.titleLabel?.numberOfLines = 0
        mbutton46.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton46.setTitle("ネギたっぷり", for: .normal)
        mbutton46.addTarget(self, action: #selector(tapEvents46), for: .touchUpInside)
        mbutton46.setTitleColor(.black, for: .normal)
        mbutton46.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton46.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton46.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton46)
        
        let mview46 = UIView()
        mview46.frame = CGRect(x:width / 3 - 30, y: 3045, width: 24, height: 24)
        mview46.backgroundColor = .white
        mview46.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview46)
        

        starLabel46.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel46.text = "★"
        starLabel46.font = UIFont.systemFont(ofSize: 18)
        starLabel46.textColor = .gray
        mview46.addSubview(starLabel46)
        
        
        let mbutton47 = UIButton()
        let mimage47 = UIImage(named: "p.tya-syu-")
        mbutton47.frame = CGRect(x:width / 3, y: 2975,width: width/3, height: 150)
        mbutton47.setImage(mimage47, for: .normal)
        mbutton47.titleLabel?.numberOfLines = 0
        mbutton47.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton47.setTitle("チャーシュー", for: .normal)
        mbutton47.setTitleColor(.black, for: .normal)
        mbutton47.addTarget(self, action: #selector(tapEvents47), for: .touchUpInside)
        mbutton47.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton47.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton47.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton47)
        
        let mview47 = UIView()
        mview47.frame = CGRect(x:width - width / 3 - 30, y: 3045, width: 24, height: 24)
        mview47.backgroundColor = .white
        mview47.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview47)
        
        
        starLabel47.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel47.text = "★"
        starLabel47.font = UIFont.systemFont(ofSize: 18)
        starLabel47.textColor = .gray
        mview47.addSubview(starLabel47)
        
        
        
        let mbutton48 = UIButton()
        let mimage48 = UIImage(named: "p.yasai")
        mbutton48.frame = CGRect(x:width - width / 3, y: 2975,width: width/3, height: 150)
        mbutton48.setImage(mimage48, for: .normal)
        mbutton48.titleLabel?.numberOfLines = 0
        mbutton48.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton48.setTitle("野菜", for: .normal)
        mbutton48.setTitleColor(.black, for: .normal)
        mbutton48.addTarget(self, action: #selector(tapEvents48), for: .touchUpInside)
        mbutton48.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton48.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton48.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton48)
        
        let mview48 = UIView()
        mview48.frame = CGRect(x:width - 30, y: 3045, width: 24, height: 24)
        mview48.backgroundColor = .white
        mview48.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview48)
        
       
        starLabel48.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel48.text = "★"
        starLabel48.font = UIFont.systemFont(ofSize: 18)
        starLabel48.textColor = .gray
        mview48.addSubview(starLabel48)
        
        
        let mbutton49 = UIButton()
        let mimage49 = UIImage(named: "p.hanzyukutamago")
        mbutton49.frame = CGRect(x: 0, y: 3125,width: width/3, height: 150)
        mbutton49.setImage(mimage49, for: .normal)
        mbutton49.titleLabel?.numberOfLines = 0
        mbutton49.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton49.setTitle("半熟玉子", for: .normal)
        mbutton49.setTitleColor(.black, for: .normal)
        mbutton49.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton49.addTarget(self, action: #selector(tapEvents49), for: .touchUpInside)
        mbutton49.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton49.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton49)
        
        let mview49 = UIView()
        mview49.frame = CGRect(x:width / 3 - 30, y: 3195, width: 24, height: 24)
        mview49.backgroundColor = .white
        mview49.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview49)
        
        
        starLabel49.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel49.text = "★"
        starLabel49.font = UIFont.systemFont(ofSize: 18)
        starLabel49.textColor = .gray
        mview49.addSubview(starLabel49)
        
        
        let mbutton50 = UIButton()
        let mimage50 = UIImage(named: "p.paiku-")
        mbutton50.frame = CGRect(x: width / 3, y: 3125,width: width/3, height: 150)
        mbutton50.setImage(mimage50, for: .normal)
        mbutton50.titleLabel?.numberOfLines = 0
        mbutton50.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton50.setTitle("パイクー(2個)", for: .normal)
        mbutton50.setTitleColor(.black, for: .normal)
        mbutton50.addTarget(self, action: #selector(tapEvents50), for: .touchUpInside)
        mbutton50.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton50.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton50.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton50)
        
        let mview50 = UIView()
        mview50.frame = CGRect(x:width - width / 3 - 30, y: 3195, width: 24, height: 24)
        mview50.backgroundColor = .white
        mview50.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview50)
        
       
        starLabel50.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel50.text = "★"
        starLabel50.font = UIFont.systemFont(ofSize: 18)
        starLabel50.textColor = .gray
        mview50.addSubview(starLabel50)
        
        
        let mbutton51 = UIButton()
        let mimage51 = UIImage(named: "p.kikurage")
        mbutton51.frame = CGRect(x: width - width / 3, y: 3125,width: width/3, height: 150)
        mbutton51.setImage(mimage51, for: .normal)
        mbutton51.titleLabel?.numberOfLines = 0
        mbutton51.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton51.setTitle("木耳", for: .normal)
        mbutton51.setTitleColor(.black, for: .normal)
        mbutton51.addTarget(self, action: #selector(tapEvents51), for: .touchUpInside)
        mbutton51.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton51.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton51.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton51)
        
        let mview51 = UIView()
        mview51.frame = CGRect(x:width - 30, y: 3195, width: 24, height: 24)
        mview51.backgroundColor = .white
        mview51.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview51)
        
     
        starLabel51.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel51.text = "★"
        starLabel51.font = UIFont.systemFont(ofSize: 18)
        starLabel51.textColor = .gray
        mview51.addSubview(starLabel51)
        
        
        let mbutton52 = UIButton()
        let mimage52 = UIImage(named: "p.moyasi")
        mbutton52.frame = CGRect(x: 0, y: 3275,width: width/3, height: 150)
        mbutton52.setImage(mimage52, for: .normal)
        mbutton52.titleLabel?.numberOfLines = 0
        mbutton52.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton52.setTitle("もやし", for: .normal)
        mbutton52.addTarget(self, action: #selector(tapEvents52), for: .touchUpInside)
        mbutton52.setTitleColor(.black, for: .normal)
        mbutton52.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton52.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton52.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton52)
        
        let mview52 = UIView()
        mview52.frame = CGRect(x:width / 3 - 30, y: 3345, width: 24, height: 24)
        mview52.backgroundColor = .white
        mview52.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview52)

        starLabel52.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel52.text = "★"
        starLabel52.font = UIFont.systemFont(ofSize: 18)
        starLabel52.textColor = .gray
        mview52.addSubview(starLabel52)
        
        
        let mbutton53 = UIButton()
        let mimage53 = UIImage(named: "p.ko-n")
        mbutton53.frame = CGRect(x: width / 3, y: 3275,width: width/3, height: 150)
        mbutton53.setImage(mimage53, for: .normal)
        mbutton53.titleLabel?.numberOfLines = 0
        mbutton53.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton53.setTitle("コーン", for: .normal)
        mbutton53.addTarget(self, action: #selector(tapEvents53), for: .touchUpInside)
        mbutton53.setTitleColor(.black, for: .normal)
        mbutton53.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton53.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton53.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton53)
        
        let mview53 = UIView()
        mview53.frame = CGRect(x:width - width / 3 - 30, y: 3345, width: 24, height: 24)
        mview53.backgroundColor = .white
        mview53.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview53)
        
 
        starLabel53.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel53.text = "★"
        starLabel53.font = UIFont.systemFont(ofSize: 18)
        starLabel53.textColor = .gray
        mview53.addSubview(starLabel53)
        
        
        let mbutton54 = UIButton()
        let mimage54 = UIImage(named: "p.no")
        mbutton54.frame = CGRect(x: width - width / 3, y: 3275,width: width/3, height: 150)
        mbutton54.setImage(mimage54, for: .normal)
        mbutton54.titleLabel?.numberOfLines = 0
        mbutton54.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton54.setTitle("メンマ", for: .normal)
        mbutton54.setTitleColor(.black, for: .normal)
        mbutton54.addTarget(self, action: #selector(tapEvents54), for: .touchUpInside)
        mbutton54.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton54.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton54.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton54)
        
        let mview54 = UIView()
        mview54.frame = CGRect(x:width - 30, y: 3345, width: 24, height: 24)
        mview54.backgroundColor = .white
        mview54.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview54)
        

        starLabel54.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel54.text = "★"
        starLabel54.font = UIFont.systemFont(ofSize: 18)
        starLabel54.textColor = .gray
        mview54.addSubview(starLabel54)
        
        
        let rice = UIView()
        rice.frame = CGRect(x: 0, y: 3425, width: width, height: 35)
        rice.backgroundColor = .black
        scrollView.addSubview(rice)
        
        let rice1 = UILabel()
        rice1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        rice1.text = "ご飯もの"
        rice1.textAlignment = NSTextAlignment.center
        rice1.textColor = .white
        rice1.font = UIFont.systemFont(ofSize: 10)
        rice.addSubview(rice1)
        
        let rice2 = UILabel()
        rice2.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        rice2.text = "rice"
        rice2.textAlignment = NSTextAlignment.center
        rice2.textColor = .white
        rice2.font = UIFont.systemFont(ofSize: 10)
        rice.addSubview(rice2)
        
        
        let mbutton55 = UIButton()
        let mimage55 = UIImage(named: "p.tya-han")
        mbutton55.frame = CGRect(x: 0, y: 3460,width: width/3, height: 150)
        mbutton55.setImage(mimage55, for: .normal)
        mbutton55.titleLabel?.numberOfLines = 0
        mbutton55.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton55.setTitle("チャーハン(スープ付き)", for: .normal)
        mbutton55.setTitleColor(.black, for: .normal)
        mbutton55.addTarget(self, action: #selector(tapEvents55), for: .touchUpInside)
        mbutton55.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton55.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton55.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton55)
        
        let mview55 = UIView()
        mview55.frame = CGRect(x:width / 3 - 30, y: 3530, width: 24, height: 24)
        mview55.backgroundColor = .white
        mview55.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview55)
        

        starLabel55.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel55.text = "★"
        starLabel55.font = UIFont.systemFont(ofSize: 18)
        starLabel55.textColor = .gray
        mview55.addSubview(starLabel55)
        
        
        let mbutton56 = UIButton()
        let mimage56 = UIImage(named: "p.pirikaratya-han")
        mbutton56.frame = CGRect(x: width / 3, y: 3460,width: width/3, height: 150)
        mbutton56.setImage(mimage56, for: .normal)
        mbutton56.titleLabel?.numberOfLines = 0
        mbutton56.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton56.setTitle("ピリ辛チャーハン(スープ付き)", for: .normal)
        mbutton56.setTitleColor(.black, for: .normal)
        mbutton56.addTarget(self, action: #selector(tapEvents56), for: .touchUpInside)
        mbutton56.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton56.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton56.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton56)
        
        let mview56 = UIView()
        mview56.frame = CGRect(x:width - width / 3 - 30, y: 3530, width: 24, height: 24)
        mview56.backgroundColor = .white
        mview56.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview56)

        starLabel56.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel56.text = "★"
        starLabel56.font = UIFont.systemFont(ofSize: 18)
        starLabel56.textColor = .gray
        mview56.addSubview(starLabel56)
        
        
        
        let mbutton57 = UIButton()
        let mimage57 = UIImage(named: "p.otonanokurotya-han")
        mbutton57.frame = CGRect(x: width - width / 3, y: 3460,width: width/3, height: 150)
        mbutton57.setImage(mimage57, for: .normal)
        mbutton57.titleLabel?.numberOfLines = 0
        mbutton57.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton57.setTitle("大人の黒チャーハン(スープ付き)", for: .normal)
        mbutton57.setTitleColor(.black, for: .normal)
        mbutton57.addTarget(self, action: #selector(tapEvents57), for: .touchUpInside)
        mbutton57.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton57.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton57.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton57)
        
        let mview57 = UIView()
        mview57.frame = CGRect(x:width - 30, y: 3530, width: 24, height: 24)
        mview57.backgroundColor = .white
        mview57.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview57)

        starLabel57.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel57.text = "★"
        starLabel57.font = UIFont.systemFont(ofSize: 18)
        starLabel57.textColor = .gray
        mview57.addSubview(starLabel57)
        
        
        let mbutton58 = UIButton()
        let mimage58 = UIImage(named: "p.tya-syu-tamagodon")
        mbutton58.frame = CGRect(x: 0, y: 3610,width: width/3, height: 150)
        mbutton58.setImage(mimage58, for: .normal)
        mbutton58.titleLabel?.numberOfLines = 0
        mbutton58.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton58.setTitle("チャーシュー玉子丼", for: .normal)
        mbutton58.setTitleColor(.black, for: .normal)
        mbutton58.addTarget(self, action: #selector(tapEvents58), for: .touchUpInside)
        mbutton58.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton58.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton58.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton58)
        
        let mview58 = UIView()
        mview58.frame = CGRect(x:width / 3 - 30, y: 3680, width: 24, height: 24)
        mview58.backgroundColor = .white
        mview58.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview58)
        

        starLabel58.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel58.text = "★"
        starLabel58.font = UIFont.systemFont(ofSize: 18)
        starLabel58.textColor = .gray
        mview58.addSubview(starLabel58)
        
        
        let mbutton59 = UIButton()
        let mimage59 = UIImage(named: "p.karamisotya-syu-don")
        mbutton59.frame = CGRect(x: width / 3, y: 3610,width: width/3, height: 150)
        mbutton59.setImage(mimage59, for: .normal)
        mbutton59.titleLabel?.numberOfLines = 0
        mbutton59.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton59.setTitle("辛みそチャーシュー丼", for: .normal)
        mbutton59.setTitleColor(.black, for: .normal)
        mbutton59.addTarget(self, action: #selector(tapEvents59), for: .touchUpInside)
        mbutton59.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton59.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton59.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton59)
        
        let mview59 = UIView()
        mview59.frame = CGRect(x:width - width / 3 - 30, y: 3680, width: 24, height: 24)
        mview59.backgroundColor = .white
        mview59.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview59)

        starLabel59.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel59.text = "★"
        starLabel59.font = UIFont.systemFont(ofSize: 18)
        starLabel59.textColor = .gray
        mview59.addSubview(starLabel59)
        
        
        let mbutton60 = UIButton()
        let mimage60 = UIImage(named: "p.raisu")
        mbutton60.frame = CGRect(x:width - width / 3, y: 3610,width: width/3, height: 150)
        mbutton60.setImage(mimage60, for: .normal)
        mbutton60.titleLabel?.numberOfLines = 0
        mbutton60.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton60.setTitle("ライス", for: .normal)
        mbutton60.setTitleColor(.black, for: .normal)
        mbutton60.addTarget(self, action: #selector(tapEvents60), for: .touchUpInside)
        mbutton60.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton60.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton60.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton60)
        
        let mview60 = UIView()
        mview60.frame = CGRect(x:width - 30, y: 3680, width: 24, height: 24)
        mview60.backgroundColor = .white
        mview60.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview60)
        
  
        starLabel60.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel60.text = "★"
        starLabel60.font = UIFont.systemFont(ofSize: 18)
        starLabel60.textColor = .gray
        mview60.addSubview(starLabel60)
        
        
        let mbutton61 = UIButton()
        let mimage61 = UIImage(named: "p.onigiri")
        mbutton61.frame = CGRect(x: 0, y: 3760,width: width/3, height: 150)
        mbutton61.setImage(mimage61, for: .normal)
        mbutton61.titleLabel?.numberOfLines = 0
        mbutton61.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton61.setTitle("ライス", for: .normal)
        mbutton61.setTitleColor(.black, for: .normal)
        mbutton61.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton61.addTarget(self, action: #selector(tapEvents61), for: .touchUpInside)
        mbutton61.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton61.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton61)
        
        let mview61 = UIView()
        mview61.frame = CGRect(x:width / 3 - 30, y: 3830, width: 24, height: 24)
        mview61.backgroundColor = .white
        mview61.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview61)
        

        starLabel61.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel61.text = "★"
        starLabel61.font = UIFont.systemFont(ofSize: 18)
        starLabel61.textColor = .gray
        mview61.addSubview(starLabel61)
        
        
        
        let mbutton62 = UIButton()
        let mimage62 = UIImage(named: "p.no")
        mbutton62.frame = CGRect(x: width / 3, y: 3760,width: width/3, height: 150)
        mbutton62.setImage(mimage62, for: .normal)
        mbutton62.titleLabel?.numberOfLines = 0
        mbutton62.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton62.setTitle("馬丼", for: .normal)
        mbutton62.setTitleColor(.black, for: .normal)
        mbutton62.addTarget(self, action: #selector(tapEvents62), for: .touchUpInside)
        mbutton62.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton62.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton62.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton62)
        
        let mview62 = UIView()
        mview62.frame = CGRect(x:width - width / 3 - 30, y: 3830, width: 24, height: 24)
        mview62.backgroundColor = .white
        mview62.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview62)
        
  
        starLabel62.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel62.text = "★"
        starLabel62.font = UIFont.systemFont(ofSize: 18)
        starLabel62.textColor = .gray
        mview62.addSubview(starLabel62)
        
        
        let ricea = UIView()
        ricea.frame = CGRect(x: 0, y: 3910, width: width, height: 35)
        ricea.backgroundColor = .black
        scrollView.addSubview(ricea)
        
        let riceb = UILabel()
        riceb.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        riceb.text = "デザート"
        riceb.textAlignment = NSTextAlignment.center
        riceb.textColor = .white
        riceb.font = UIFont.systemFont(ofSize: 10)
        ricea.addSubview(riceb)
        
        let ricec = UILabel()
        ricec.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        ricec.text = "dessert"
        ricec.textAlignment = NSTextAlignment.center
        ricec.textColor = .white
        ricec.font = UIFont.systemFont(ofSize: 10)
        ricea.addSubview(ricec)
        
        
        let mbutton63 = UIButton()
        let mimage63 = UIImage(named: "p.annindouhu")
        mbutton63.frame = CGRect(x: 0, y: 3945,width: width/3, height: 150)
        mbutton63.setImage(mimage63, for: .normal)
        mbutton63.titleLabel?.numberOfLines = 0
        mbutton63.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton63.setTitle("杏仁豆腐", for: .normal)
        mbutton63.setTitleColor(.black, for: .normal)
        mbutton63.addTarget(self, action: #selector(tapEvents63), for: .touchUpInside)
        mbutton63.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton63.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton63.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton63)
        
        let mview63 = UIView()
        mview63.frame = CGRect(x:width / 3 - 30, y: 4015, width: 24, height: 24)
        mview63.backgroundColor = .white
        mview63.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview63)
        

        starLabel63.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel63.text = "★"
        starLabel63.font = UIFont.systemFont(ofSize: 18)
        starLabel63.textColor = .gray
        mview63.addSubview(starLabel63)
        
        
        let ricea1 = UIView()
        ricea1.frame = CGRect(x: 0, y: 4095, width: width, height: 35)
        ricea1.backgroundColor = .black
        scrollView.addSubview(ricea1)
        
        let riceb1 = UILabel()
        riceb1.frame = CGRect(x: width/10, y: 5, width: width-width/10, height: 15)
        riceb1.text = "ドリンク"
        riceb1.textAlignment = NSTextAlignment.center
        riceb1.textColor = .white
        riceb1.font = UIFont.systemFont(ofSize: 10)
        ricea1.addSubview(riceb1)
        
        let ricec1 = UILabel()
        ricec1.frame = CGRect(x: width/10, y: 20, width: width-width/10, height: 15)
        ricec1.text = "drink"
        ricec1.textAlignment = NSTextAlignment.center
        ricec1.textColor = .white
        ricec1.font = UIFont.systemFont(ofSize: 10)
        ricea1.addSubview(ricec1)
        
        
        let mbutton64 = UIButton()
        let mimage64 = UIImage(named: "p.u-rontya")
        mbutton64.frame = CGRect(x: 0, y: 4130,width: width/3, height: 150)
        mbutton64.setImage(mimage64, for: .normal)
        mbutton64.titleLabel?.numberOfLines = 0
        mbutton64.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton64.setTitle("ウーロン茶", for: .normal)
        mbutton64.addTarget(self, action: #selector(tapEvents64), for: .touchUpInside)
        mbutton64.setTitleColor(.black, for: .normal)
        mbutton64.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton64.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton64.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton64)
        
        let mview64 = UIView()
        mview64.frame = CGRect(x:width / 3 - 30, y: 4200, width: 24, height: 24)
        mview64.backgroundColor = .white
        mview64.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview64)
        

        starLabel64.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel64.text = "★"
        starLabel64.font = UIFont.systemFont(ofSize: 18)
        starLabel64.textColor = .gray
        mview64.addSubview(starLabel64)
        
        
        let mbutton65 = UIButton()
        let mimage65 = UIImage(named: "p.namabi-ru")
        mbutton65.frame = CGRect(x: width / 3, y: 4130,width: width/3, height: 150)
        mbutton65.setImage(mimage65, for: .normal)
        mbutton65.titleLabel?.numberOfLines = 0
        mbutton65.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton65.setTitle("生ビール(中)", for: .normal)
        mbutton65.addTarget(self, action: #selector(tapEvents65), for: .touchUpInside)
        mbutton65.setTitleColor(.black, for: .normal)
        mbutton65.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton65.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton65.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton65)
        
        let mview65 = UIView()
        mview65.frame = CGRect(x:width - width / 3 - 30, y: 4200, width: 24, height: 24)
        mview65.backgroundColor = .white
        mview65.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview65)
        

        starLabel65.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel65.text = "★"
        starLabel65.font = UIFont.systemFont(ofSize: 18)
        starLabel65.textColor = .gray
        mview65.addSubview(starLabel65)
        
        
        let mbutton66 = UIButton()
        let mimage66 = UIImage(named: "p.binbi-ru")
        mbutton66.frame = CGRect(x: width - width / 3, y: 4130,width: width/3, height: 150)
        mbutton66.setImage(mimage66, for: .normal)
        mbutton66.titleLabel?.numberOfLines = 0
        mbutton66.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton66.setTitle("瓶ビール(中瓶)", for: .normal)
        mbutton66.setTitleColor(.black, for: .normal)
        mbutton66.addTarget(self, action: #selector(tapEvents66), for: .touchUpInside)
        mbutton66.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton66.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton66.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton66)
        
        let mview66 = UIView()
        mview66.frame = CGRect(x:width - 30, y: 4200, width: 24, height: 24)
        mview66.backgroundColor = .white
        mview66.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview66)
        
  
        starLabel66.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel66.text = "★"
        starLabel66.font = UIFont.systemFont(ofSize: 18)
        starLabel66.textColor = .gray
        mview66.addSubview(starLabel66)
        
        
        let mbutton67 = UIButton()
        let mimage67 = UIImage(named: "p.nonaruko-rubi-ru")
        mbutton67.frame = CGRect(x: 0, y: 4280,width: width/3, height: 150)
        mbutton67.setImage(mimage67, for: .normal)
        mbutton67.titleLabel?.numberOfLines = 0
        mbutton67.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton67.setTitle("ノンアルコールビール(小瓶)", for: .normal)
        mbutton67.setTitleColor(.black, for: .normal)
        mbutton67.addTarget(self, action: #selector(tapEvents67), for: .touchUpInside)
        mbutton67.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton67.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton67.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton67)
        
        let mview67 = UIView()
        mview67.frame = CGRect(x:width / 3 - 30, y: 4350, width: 24, height: 24)
        mview67.backgroundColor = .white
        mview67.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview67)
        
      
        starLabel67.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel67.text = "★"
        starLabel67.font = UIFont.systemFont(ofSize: 18)
        starLabel67.textColor = .gray
        mview67.addSubview(starLabel67)
        
        
        let mbutton68 = UIButton()
        let mimage68 = UIImage(named: "p.no")
        mbutton68.frame = CGRect(x: width / 3, y: 4280,width: width/3, height: 150)
        mbutton68.setImage(mimage68, for: .normal)
        mbutton68.titleLabel?.numberOfLines = 0
        mbutton68.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton68.setTitle("(米焼酎)白岳", for: .normal)
        mbutton68.setTitleColor(.black, for: .normal)
        mbutton68.addTarget(self, action: #selector(tapEvents68), for: .touchUpInside)
        mbutton68.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton68.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton68.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton68)
        
        let mview68 = UIView()
        mview68.frame = CGRect(x:width - width / 3 - 30, y: 4350, width: 24, height: 24)
        mview68.backgroundColor = .white
        mview68.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview68)
        
 
        starLabel68.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel68.text = "★"
        starLabel68.font = UIFont.systemFont(ofSize: 18)
        starLabel68.textColor = .gray
        mview68.addSubview(starLabel68)
        
        
        let mbutton69 = UIButton()
        let mimage69 = UIImage(named: "p.no")
        mbutton69.frame = CGRect(x: width - width / 3, y: 4280,width: width/3, height: 150)
        mbutton69.setImage(mimage69, for: .normal)
        mbutton69.titleLabel?.numberOfLines = 0
        mbutton69.titleLabel?.textAlignment = NSTextAlignment.center
        mbutton69.setTitle("(芋焼酎)黒霧島", for: .normal)
        mbutton69.setTitleColor(.black, for: .normal)
        mbutton69.addTarget(self, action: #selector(tapEvents69), for: .touchUpInside)
        mbutton69.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        mbutton69.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        mbutton69.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(mbutton1.frame.width - mbutton1.frame.width / 9), bottom: 10, right: 10)
        scrollView.addSubview(mbutton69)
        
        let mview69 = UIView()
        mview69.frame = CGRect(x:width - 30, y: 4350, width: 24, height: 24)
        mview69.backgroundColor = .white
        mview69.layer.cornerRadius = mview1.frame.width / 2
        scrollView.addSubview(mview69)
        
     
        starLabel69.frame = CGRect(x: 3, y: 3, width: 18, height: 18)
        starLabel69.text = "★"
        starLabel69.font = UIFont.systemFont(ofSize: 18)
        starLabel69.textColor = .gray
        mview69.addSubview(starLabel69)
        
        scrollView.contentSize = CGSize(width: 0, height: mbutton69.frame.height + mbutton69.layer.position.y + 50)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
            if data["menuNumber1"]! as! Int == 1{
                self.starLabel1.textColor = .yellow
                self.subNumber1 = 10
            }else{
                self.starLabel1.textColor = .gray
                self.subNumber1 = 11
            }
            if data["menuNumber2"]! as! Int == 1{
                self.starLabel2.textColor = .yellow
                self.subNumber2 = 10
            }else{
                self.starLabel2.textColor = .gray
                self.subNumber2 = 11
            }
            if data["menuNumber3"]! as! Int == 1{
                self.starLabel3.textColor = .yellow
                self.subNumber3 = 10
            }else{
                self.starLabel3.textColor = .gray
                self.subNumber3 = 11
            }
            if data["menuNumber4"]! as! Int == 1{
                self.starLabel4.textColor = .yellow
                self.subNumber4 = 10
            }else{
                self.starLabel4.textColor = .gray
                self.subNumber4 = 11
            }
            if data["menuNumber5"]! as! Int == 1{
                self.starLabel5.textColor = .yellow
                self.subNumber5 = 10
            }else{
                self.starLabel5.textColor = .gray
                self.subNumber5 = 11
            }
            if data["menuNumber6"]! as! Int == 1{
                self.starLabel6.textColor = .yellow
                self.subNumber6 = 10
            }else{
                self.starLabel6.textColor = .gray
                self.subNumber6 = 11
            }
            if data["menuNumber7"]! as! Int == 1{
                self.starLabel7.textColor = .yellow
                self.subNumber7 = 10
            }else{
                self.starLabel7.textColor = .gray
                self.subNumber7 = 11
            }
            if data["menuNumber8"]! as! Int == 1{
                self.starLabel8.textColor = .yellow
                self.subNumber8 = 10
            }else{
                self.starLabel8.textColor = .gray
                self.subNumber8 = 11
            }
            if data["menuNumber9"]! as! Int == 1{
                self.starLabel9.textColor = .yellow
                self.subNumber9 = 10
            }else{
                self.starLabel9.textColor = .gray
                self.subNumber9 = 11
            }
            if data["menuNumber10"]! as! Int == 1{
                self.starLabel10.textColor = .yellow
                self.subNumber10 = 10
            }else{
                self.starLabel10.textColor = .gray
                self.subNumber10 = 11
            }
            if data["menuNumber11"]! as! Int == 1{
                self.starLabel11.textColor = .yellow
                self.subNumber11 = 10
            }else{
                self.starLabel11.textColor = .gray
                self.subNumber11 = 11
            }
            if data["menuNumber12"]! as! Int == 1{
                self.starLabel12.textColor = .yellow
                self.subNumber12 = 10
            }else{
                self.starLabel12.textColor = .gray
                self.subNumber12 = 11
            }
            if data["menuNumber13"]! as! Int == 1{
                self.starLabel13.textColor = .yellow
                self.subNumber13 = 10
            }else{
                self.starLabel13.textColor = .gray
                self.subNumber13 = 11
            }
            if data["menuNumber14"]! as! Int == 1{
                self.starLabel14.textColor = .yellow
                self.subNumber14 = 10
            }else{
                self.starLabel14.textColor = .gray
                self.subNumber14 = 11
            }
            if data["menuNumber15"]! as! Int == 1{
                self.starLabel15.textColor = .yellow
                self.subNumber15 = 10
            }else{
                self.starLabel15.textColor = .gray
                self.subNumber15 = 11
            }
            if data["menuNumber16"]! as! Int == 1{
                self.starLabel16.textColor = .yellow
                self.subNumber16 = 10
            }else{
                self.starLabel16.textColor = .gray
                self.subNumber16 = 11
            }
            if data["menuNumber17"]! as! Int == 1{
                self.starLabel17.textColor = .yellow
                self.subNumber17 = 10
            }else{
                self.starLabel17.textColor = .gray
                self.subNumber17 = 11
            }
            if data["menuNumber18"]! as! Int == 1{
                self.starLabel18.textColor = .yellow
                self.subNumber18 = 10
            }else{
                self.starLabel18.textColor = .gray
                self.subNumber18 = 11
            }
            if data["menuNumber19"]! as! Int == 1{
                self.starLabel19.textColor = .yellow
                self.subNumber19 = 10
            }else{
                self.starLabel19.textColor = .gray
                self.subNumber19 = 11
            }
            if data["menuNumber20"]! as! Int == 1{
                self.starLabel20.textColor = .yellow
                self.subNumber20 = 10
            }else{
                self.starLabel20.textColor = .gray
                self.subNumber20 = 11
            }
            if data["menuNumber21"]! as! Int == 1{
                self.starLabel21.textColor = .yellow
                self.subNumber21 = 10
            }else{
                self.starLabel21.textColor = .gray
                self.subNumber21 = 11
            }
            if data["menuNumber22"]! as! Int == 1{
                self.starLabel22.textColor = .yellow
                self.subNumber22 = 10
            }else{
                self.starLabel22.textColor = .gray
                self.subNumber22 = 11
            }
            if data["menuNumber23"]! as! Int == 1{
                self.starLabel23.textColor = .yellow
                self.subNumber23 = 10
                
            }else{
                self.starLabel23.textColor = .gray
                self.subNumber23 = 11
            }
            if data["menuNumber24"]! as! Int == 1{
                self.starLabel24.textColor = .yellow
                self.subNumber24 = 10
            }else{
                self.starLabel24.textColor = .gray
                self.subNumber24 = 11
            }
            if data["menuNumber25"]! as! Int == 1{
                self.starLabel25.textColor = .yellow
                self.subNumber25 = 10
            }else{
                self.starLabel25.textColor = .gray
                self.subNumber25 = 11
            }
            if data["menuNumber26"]! as! Int == 1{
                self.starLabel26.textColor = .yellow
                self.subNumber26 = 10
            }else{
                self.starLabel26.textColor = .gray
                self.subNumber26 = 11
            }
            if data["menuNumber27"]! as! Int == 1{
                self.starLabel27.textColor = .yellow
                self.subNumber27 = 10
                
            }else{
                self.starLabel27.textColor = .gray
                self.subNumber27 = 11
            }
            if data["menuNumber28"]! as! Int == 1{
                self.starLabel28.textColor = .yellow
                self.subNumber28 = 10
            }else{
                self.starLabel28.textColor = .gray
                self.subNumber28 = 11
            }
            if data["menuNumber29"]! as! Int == 1{
                self.starLabel29.textColor = .yellow
                self.subNumber29 = 10
            }else{
                self.starLabel29.textColor = .gray
                self.subNumber29 = 11
            }
            if data["menuNumber30"]! as! Int == 1{
                self.starLabel30.textColor = .yellow
                self.subNumber30 = 10
            }else{
                self.starLabel30.textColor = .gray
                self.subNumber30 = 11
            }
            if data["menuNumber31"]! as! Int == 1{
                self.starLabel31.textColor = .yellow
                self.subNumber31 = 10
            }else{
                self.starLabel31.textColor = .gray
                self.subNumber31 = 11
            }
            if data["menuNumber32"]! as! Int == 1{
                self.starLabel32.textColor = .yellow
                self.subNumber32 = 10
            }else{
                self.starLabel32.textColor = .gray
                self.subNumber32 = 11
            }
            if data["menuNumber33"]! as! Int == 1{
                self.starLabel33.textColor = .yellow
                self.subNumber33 = 10
            }else{
                self.starLabel33.textColor = .gray
                self.subNumber33 = 11
            }
            if data["menuNumber34"]! as! Int == 1{
                self.starLabel34.textColor = .yellow
                self.subNumber34 = 10
            }else{
                self.starLabel34.textColor = .gray
                self.subNumber34 = 11
            }
            if data["menuNumber35"]! as! Int == 1{
                self.starLabel35.textColor = .yellow
                self.subNumber35 = 10
            }else{
                self.starLabel35.textColor = .gray
                self.subNumber35 = 11
            }
            if data["menuNumber36"]! as! Int == 1{
                self.starLabel36.textColor = .yellow
                self.subNumber36 = 10
            }else{
                self.starLabel36.textColor = .gray
                self.subNumber36 = 11
            }
            if data["menuNumber37"]! as! Int == 1{
                self.starLabel37.textColor = .yellow
                self.subNumber37 = 10
            }else{
                self.starLabel37.textColor = .gray
                self.subNumber37 = 11
            }
            if data["menuNumber38"]! as! Int == 1{
                self.starLabel38.textColor = .yellow
                self.subNumber38 = 10
            }else{
                self.starLabel38.textColor = .gray
                self.subNumber38 = 11
            }
            if data["menuNumber39"]! as! Int == 1{
                self.starLabel39.textColor = .yellow
                self.subNumber39 = 10
            }else{
                self.starLabel39.textColor = .gray
                self.subNumber39 = 11
            }
            if data["menuNumber40"]! as! Int == 1{
                self.starLabel40.textColor = .yellow
                self.subNumber40 = 10
            }else{
                self.starLabel40.textColor = .gray
                self.subNumber40 = 11
            }
            if data["menuNumber41"]! as! Int == 1{
                self.starLabel41.textColor = .yellow
                self.subNumber41 = 10
            }else{
                self.starLabel41.textColor = .gray
                self.subNumber41 = 11
            }
            if data["menuNumber42"]! as! Int == 1{
                self.starLabel42.textColor = .yellow
                self.subNumber42 = 10
            }else{
                self.starLabel42.textColor = .gray
                self.subNumber42 = 11
            }
            if data["menuNumber43"]! as! Int == 1{
                self.starLabel43.textColor = .yellow
                self.subNumber43 = 10
            }else{
                self.starLabel43.textColor = .gray
                self.subNumber43 = 11
            }
            if data["menuNumber44"]! as! Int == 1{
                self.starLabel44.textColor = .yellow
                self.subNumber44 = 10
            }else{
                self.starLabel44.textColor = .gray
                self.subNumber44 = 11
            }
            if data["menuNumber45"]! as! Int == 1{
                self.starLabel45.textColor = .yellow
                self.subNumber45 = 10
            }else{
                self.starLabel45.textColor = .gray
                self.subNumber45 = 11
            }
            if data["menuNumber46"]! as! Int == 1{
                self.starLabel46.textColor = .yellow
                self.subNumber46 = 10
            }else{
                self.starLabel46.textColor = .gray
                self.subNumber46 = 11
            }
            if data["menuNumber47"]! as! Int == 1{
                self.starLabel47.textColor = .yellow
                self.subNumber47 = 10
            }else{
                self.starLabel47.textColor = .gray
                self.subNumber47 = 11
            }
            if data["menuNumber48"]! as! Int == 1{
                self.starLabel48.textColor = .yellow
                self.subNumber48 = 10
            }else{
                self.starLabel48.textColor = .gray
                self.subNumber48 = 11
            }
            if data["menuNumber49"]! as! Int == 1{
                self.starLabel49.textColor = .yellow
                self.subNumber49 = 10
            }else{
                self.starLabel49.textColor = .gray
                self.subNumber49 = 11
            }
            if data["menuNumber50"]! as! Int == 1{
                self.starLabel50.textColor = .yellow
                self.subNumber50 = 10
            }else{
                self.starLabel50.textColor = .gray
                self.subNumber50 = 11
            }
            if data["menuNumber51"]! as! Int == 1{
                self.starLabel51.textColor = .yellow
                self.subNumber51 = 10
            }else{
                self.starLabel51.textColor = .gray
                self.subNumber51 = 11
            }
            if data["menuNumber52"]! as! Int == 1{
                self.starLabel52.textColor = .yellow
                self.subNumber52 = 10
            }else{
                self.starLabel52.textColor = .gray
                self.subNumber52 = 11
            }
            if data["menuNumber53"]! as! Int == 1{
                self.starLabel53.textColor = .yellow
                self.subNumber53 = 10
            }else{
                self.starLabel53.textColor = .gray
                self.subNumber53 = 11
            }
            if data["menuNumber54"]! as! Int == 1{
                self.starLabel54.textColor = .yellow
                self.subNumber54 = 10
            }else{
                self.starLabel54.textColor = .gray
                self.subNumber54 = 11
            }
            if data["menuNumber55"]! as! Int == 1{
                self.starLabel55.textColor = .yellow
                self.subNumber55 = 10
            }else{
                self.starLabel55.textColor = .gray
                self.subNumber55 = 11
            }
            if data["menuNumber56"]! as! Int == 1{
                self.starLabel56.textColor = .yellow
                self.subNumber56 = 10
            }else{
                self.starLabel56.textColor = .gray
                self.subNumber56 = 11
            }
            if data["menuNumber57"]! as! Int == 1{
                self.starLabel57.textColor = .yellow
                self.subNumber57 = 10
            }else{
                self.starLabel57.textColor = .gray
                self.subNumber57 = 11
            }
            if data["menuNumber58"]! as! Int == 1{
                self.starLabel58.textColor = .yellow
                self.subNumber58 = 10
            }else{
                self.starLabel58.textColor = .gray
                self.subNumber58 = 11
            }
            if data["menuNumber59"]! as! Int == 1{
                self.starLabel59.textColor = .yellow
                self.subNumber59 = 10
            }else{
                self.starLabel59.textColor = .gray
                self.subNumber59 = 11
            }
            if data["menuNumber60"]! as! Int == 1{
                self.starLabel60.textColor = .yellow
                self.subNumber60 = 10
            }else{
                self.starLabel60.textColor = .gray
                self.subNumber60 = 11
            }
            if data["menuNumber61"]! as! Int == 1{
                self.starLabel61.textColor = .yellow
                self.subNumber61 = 10
            }else{
                self.starLabel61.textColor = .gray
                self.subNumber61 = 11
            }
            if data["menuNumber62"]! as! Int == 1{
                self.starLabel62.textColor = .yellow
                self.subNumber62 = 10
            }else{
                self.starLabel62.textColor = .gray
                self.subNumber62 = 11
            }
            if data["menuNumber63"]! as! Int == 1{
                self.starLabel63.textColor = .yellow
                self.subNumber63 = 10
            }else{
                self.starLabel63.textColor = .gray
                self.subNumber63 = 11
            }
            if data["menuNumber64"]! as! Int == 1{
                self.starLabel64.textColor = .yellow
                self.subNumber64 = 10
            }else{
                self.starLabel64.textColor = .gray
                self.subNumber64 = 11
            }
            if data["menuNumber65"]! as! Int == 1{
                self.starLabel65.textColor = .yellow
                self.subNumber65 = 10
            }else{
                self.starLabel65.textColor = .gray
                self.subNumber65 = 11
            }
            if data["menuNumber66"]! as! Int == 1{
                self.starLabel66.textColor = .yellow
                self.subNumber66 = 10
            }else{
                self.starLabel66.textColor = .gray
                self.subNumber66 = 11
            }
            if data["menuNumber67"]! as! Int == 1{
                self.starLabel67.textColor = .yellow
                self.subNumber67 = 10
            }else{
                self.starLabel67.textColor = .gray
                self.subNumber67 = 11
            }
            if data["menuNumber68"]! as! Int == 1{
                self.starLabel68.textColor = .yellow
                self.subNumber68 = 10
            }else{
                self.starLabel68.textColor = .gray
                self.subNumber68 = 11
            }
            if data["menuNumber69"]! as! Int == 1{
                self.starLabel69.textColor = .yellow
                self.subNumber69 = 10
            }else{
                self.starLabel69.textColor = .gray
                self.subNumber69 = 11
            }
            
        }
        }
    }
    
    @objc func tapEvent1(){
        return
    }
    @objc func tapEvent2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu2") as! menu2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu3") as! menu3ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = ""
        vc.number1 = self.subNumber1
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.paiku-men")
        vc.sendLabel1 = "パイクー麺"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = "一頭に2本しか取れない軟骨つき豚バラ肉を\n特製タレで煮込みました。"
        vc.number1 = self.subNumber2
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zennoseramen")
        vc.sendLabel1 = "全乗せラーメン"
        vc.sendLabel3 = "ラーメン"
        vc.sendLabel2 = "1290"
        vc.sendText = ""
        vc.number1 = self.subNumber4
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tyasyumen")
        vc.sendLabel1 = "チャーシュー麵"
        vc.sendLabel2 = "1100"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber5
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.syauyuramen")
        vc.sendLabel1 = "醤油ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber6
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.misotonkoturamen")
        vc.sendLabel1 = "味噌豚骨ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber7
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karamisoramen")
        vc.sendLabel1 = "辛みそラーメン"
        vc.sendLabel2 = "820"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber8
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hukkokuramen")
        vc.sendLabel1 = "復刻ラーメン昭和味"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.sendLabel3 = "ラーメン"
        vc.number1 = self.subNumber9
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zeitakukiriaburitya-syumen")
        vc.sendLabel1 = "贅沢切り炙りチャーシュー麵"
        vc.sendLabel2 = "1200"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = ""
        vc.number1 = self.subNumber10
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaranegiramen")
        vc.sendLabel1 = "ピリ辛ネギラーメン"
        vc.sendLabel2 = "800"
        vc.sendLabel3 = "ラーメン"
        vc.sendText = ""
        vc.number1 = self.subNumber11
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
        vc.sendLabel3 = "つけ麺"
        vc.sendLabel2 = "940"
        vc.sendText = ""
        vc.number1 = self.subNumber12
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents13(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karatukemen")
        vc.sendLabel1 = "辛つけ麺"
        vc.sendLabel2 = "960"
        vc.sendLabel3 = "つけ麺"
        vc.sendText = ""
        vc.number1 = self.subNumber13
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents14(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.taipi-en")
        vc.sendLabel1 = "太平燕"
        vc.sendLabel2 = "880"
        vc.sendLabel3 = "中華麺"
        vc.sendText = "熊本生まれの春雨料理"
        vc.number1 = self.subNumber14
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents15(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.parisoba")
        vc.sendLabel1 = "パリそば"
        vc.sendLabel2 = "840"
        vc.sendLabel3 = "中華麺"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber15
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents16(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yakisoba")
        vc.sendLabel1 = "焼きそば"
        vc.sendLabel2 = "820"
        vc.sendLabel3 = "中華麺"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber16
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents17(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tyanpon")
        vc.sendLabel1 = "ちゃんぽん"
        vc.sendLabel2 = "880"
        vc.sendLabel3 = "中華麺"
        vc.sendText = ""
        vc.number1 = self.subNumber17
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents18(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratyanpon")
        vc.sendLabel1 = "ピリ辛ちゃんぽん"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "中華麺"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber18
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents19(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.gyozaset")
        vc.sendLabel1 = "ギョーザセット"
        vc.sendLabel2 = "900"
        vc.sendLabel3 = "お好み麺セット"
        vc.sendText = "お好みの麺＋焼きギョーザ(3個)＋ご飯＋漬物"
        vc.number1 = self.subNumber19
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents20(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karaageset")
        vc.sendLabel1 = "唐揚げセット"
        vc.sendLabel3 = "お好み麺セット"
        vc.sendLabel2 = ""
        vc.sendText = "お好みの麺＋唐揚げ(2個)＋ご飯＋漬物"
        vc.number1 = self.subNumber20
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents21(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hantya-hanset")
        vc.sendLabel1 = "半チャーハンセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "お好み麺セット"
        vc.sendText = "お好みの麺＋ハーフチャーハン＋漬物"
        vc.number1 = self.subNumber21
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents22(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(systemName: "camera")
        vc.sendLabel1 = "月替りセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "お好み麺セット"
        vc.sendText = "商品の構成によって価格は変動いたします。"
        vc.number1 = self.subNumber22
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents23(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ha-huset")
        vc.sendLabel1 = "ハーフセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "セットメニュー"
        vc.sendText = "ハーフラーメン＋ハーフチャーハン＋唐揚げ一個＋サラダ＋漬物"
        vc.number1 = self.subNumber23
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents24(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.supesyaruset")
        vc.sendLabel1 = "スペシャルセット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "セットメニュー"
        vc.sendText = "味千ラーメン(中)＋ハーフチャーハン＋ギョーザ(５個)＋漬物"
        vc.number1 = self.subNumber24
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents25(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodonset")
        vc.sendLabel1 = "チャーシュー玉子丼セット"
        vc.sendLabel3 = "セットメニュー"
        vc.sendLabel2 = ""
        vc.sendText = "チャーシュー玉子丼＋味千ラーメン(中)＋漬物"
        vc.number1 = self.subNumber25
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents26(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karamisotya-syu-donset")
        vc.sendLabel1 = "辛みそチャーシュー丼セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "セットメニュー"
        vc.sendText = "辛みそチャーシュー丼＋味千ラーメン(中)+漬物"
        vc.number1 = self.subNumber26
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents27(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tikinnanbanset")
        vc.sendLabel1 = "チキン南蛮セット"
        vc.sendLabel3 = "セットメニュー"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋チキン南蛮＋ご飯＋漬物＋サラダ"
        vc.number1 = self.subNumber27
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents28(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.manpukuset")
        vc.sendLabel1 = "満腹セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "セットメニュー"
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋唐揚げ(4個)＋漬物"
        vc.number1 = self.subNumber28
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents29(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.aburitya-syu-donset")
        vc.sendLabel1 = "炙りチャーシュー丼セット"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "セットメニュー"
        vc.sendText = "味千ラーメン(中)＋炙りチャーシュー丼＋漬物"
        vc.number1 = self.subNumber29
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents30(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.dxset")
        vc.sendLabel1 = "DXセット"
        vc.sendLabel3 = "セットメニュー"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋ギョーザ(５個)＋サラダ"
        vc.number1 = self.subNumber30
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents31(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "馬丼セット"
        vc.sendLabel3 = "セットメニュー"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber31
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents32(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ラーメンKids"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "お子様用セット"
        vc.sendText = "ハーフラーメン＋ゼリー＋ジュース"
        vc.number1 = self.subNumber32
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents33(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ラーメンJr."
        vc.sendLabel2 = ""
        vc.sendLabel3 = "お子様用セット"
        vc.sendText = "ハーフラーメン＋唐揚げ(1個)＋ジュース＋ふりかけごはん"
        vc.number1 = self.subNumber33
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents34(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yakigyo-zaset")
        vc.sendLabel1 = "焼きギョーザ5個入り/10個入り"
        vc.sendLabel2 = ""
        vc.sendText = "金額は税抜き価格です。"
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.number1 = self.subNumber34
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents35(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karaage")
        vc.sendLabel1 = "唐揚げ5個入り"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = ""
        vc.number1 = self.subNumber35
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents36(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.enokigyuunikumaki")
        vc.sendLabel1 = "えのき牛肉巻"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = ""
        vc.number1 = self.subNumber36
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents37(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ebiharumaki")
        vc.sendLabel1 = "海老春巻き一本"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.number1 = self.subNumber37
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents38(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.guri-nsarada")
        vc.sendLabel1 = "グリーンサラダ"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = ""
        vc.number1 = self.subNumber38
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents39(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.aburitya-syu-")
        vc.sendLabel1 = "炙りチャーシュー"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.number1 = self.subNumber39
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents40(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.edamame")
        vc.sendLabel1 = "枝豆"
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber40
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents41(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tonsoku")
        vc.sendLabel1 = "豚足"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = ""
        vc.number1 = self.subNumber41
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents42(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tikinnanban")
        vc.sendLabel1 = "チキン南蛮"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.number1 = self.subNumber42
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents43(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.potetohurai")
        vc.sendLabel1 = "ポテトフライ"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = ""
        vc.number1 = self.subNumber43
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents44(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ちょい飲みセットA"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = "①枝豆＋炙りチャーシュー＋生ビール\n②枝豆＋豚足＋生ビール"
        vc.number1 = self.subNumber44
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents45(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ちょい飲みセットB"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "サイドメニュー、一品物"
        vc.sendText = "①チキン南蛮＋枝豆＋生ビール\n②えのき牛肉巻＋豚足＋生ビール"
        vc.number1 = self.subNumber45
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents46(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.negitappuri")
        vc.sendLabel1 = "ネギたっぷり"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "トッピング"
        vc.number1 = self.subNumber46
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents47(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-")
        vc.sendLabel1 = "チャーシュー"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "トッピング"
        vc.sendText = ""
        vc.number1 = self.subNumber47
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents48(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yasai")
        vc.sendLabel1 = "野菜"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "トッピング"
        vc.sendText = ""
        vc.number1 = self.subNumber48
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents49(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hanzyukutamago")
        vc.sendLabel1 = "半熟玉子"
        vc.sendLabel3 = "トッピング"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber49
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents50(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.paiku-")
        vc.sendLabel1 = "パイクー(2個)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "トッピング"
        vc.sendText = ""
        vc.number1 = self.subNumber50
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents51(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kikurage")
        vc.sendLabel1 = "木耳"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "トッピング"
        vc.sendText = ""
        vc.number1 = self.subNumber51
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents52(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.moyasi")
        vc.sendLabel1 = "もやし"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "トッピング"
        vc.number1 = self.subNumber52
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents53(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ko-n")
        vc.sendLabel1 = "コーン"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "トッピング"
        vc.number1 = self.subNumber53
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents54(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "メンマ"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "トッピング"
        vc.sendText = ""
        vc.number1 = self.subNumber54
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents55(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-han")
        vc.sendLabel1 = "チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ご飯もの"
        vc.sendText = "チャーハン＋チャーハンスープ＋漬物"
        vc.number1 = self.subNumber55
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents56(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratya-han")
        vc.sendLabel1 = "ピリ辛チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ご飯もの"
        vc.sendText = "ピリ辛チャーハン＋チャーハンスープ＋漬物"
        vc.number1 = self.subNumber56
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents57(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.otonanokurotya-han")
        vc.sendLabel1 = "大人の黒チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "ご飯もの"
        vc.number1 = self.subNumber57
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents58(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodon")
        vc.sendLabel1 = "チャーシュー玉子丼"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ご飯もの"
        vc.sendText = ""
        vc.number1 = self.subNumber58
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents59(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karamisotya-syu-don")
        vc.sendLabel1 = "辛みそチャーシュー丼"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ご飯もの"
        vc.sendText = ""
        vc.number1 = self.subNumber59
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents60(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.raisu")
        vc.sendLabel1 = "ライス"
        vc.sendLabel3 = "ご飯もの"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber60
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents61(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.onigiri")
        vc.sendLabel1 = "おにぎり1個"
        vc.sendLabel2 = ""
        vc.sendText = "おにぎり一個＋漬物"
        vc.sendLabel3 = "ご飯もの"
        vc.number1 = self.subNumber61
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents62(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "馬丼"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ご飯もの"
        vc.sendText = ""
        vc.number1 = self.subNumber62
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents63(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.annindouhu")
        vc.sendLabel1 = "杏仁豆腐"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "デザート"
        vc.number1 = self.subNumber63
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents64(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.u-rontya")
        vc.sendLabel1 = "ウーロン茶"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ドリンク"
        vc.sendText = ""
        vc.number1 = self.subNumber64
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents65(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.namabi-ru")
        vc.sendLabel1 = "生ビール(中)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ドリンク"
        vc.sendText = ""
        vc.number1 = self.subNumber65
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents66(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.binbi-ru")
        vc.sendLabel1 = "瓶ビール(中)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ドリンク"
        vc.sendText = ""
        vc.number1 = self.subNumber66
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents67(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.nonaruko-rubi-ru")
        vc.sendLabel1 = "ノンアルコールビール(小瓶)"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ドリンク"
        vc.sendText = ""
        vc.number1 = self.subNumber67
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents68(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "(米焼酎)白岳"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.sendLabel3 = "ドリンク"
        vc.number1 = self.subNumber68
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents69(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "(芋焼酎)黒霧島"
        vc.sendLabel2 = ""
        vc.sendLabel3 = "ドリンク"
        vc.sendText = ""
        vc.number1 = self.subNumber69
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
}
