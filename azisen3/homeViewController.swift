




//２１〜１５０　基本部品
//１５５〜１７１　ナビゲーションアイテムの部品の配置。サイドメニューを閉じるタップ機能の設定。
//１７６〜２４３　ログインしていればおすすめアイテムなどのタップ時に渡す値を設定。
//２４８〜６２４　基本の部品を配置。３３５〜３８４で赤いボタンを仕切る点線を配置
//６２８〜１０１３　サイドメニューの配置。
//１０１７〜１３８１　各々のボタンをタップした際の処理。基本は画面遷移。
//１３８６〜１３９１　pageControllの現在位置を設定。



import UIKit
import Firebase
import SVProgressHUD

class homeViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let scrollWidth = UIScreen.main.bounds.width
    let scrollHeight = UIScreen.main.bounds.height
    
    //基本
    let scrollView = UIScrollView()
    //三枚の画像
    let scrollView1 = UIScrollView()
    //おすすめ商品
    let scrollView2 = UIScrollView()
    //scrollViewの三点リーダー
    let pageControl = UIPageControl()
    //三枚のスライドさせる画像
    let homeImage1 = UIImage(named: "home1")
    let homeImage2 = UIImage(named: "home2")
    let homeImage3 = UIImage(named: "home3")
    let homeImages1 = UIImageView()
    let homeImages2 = UIImageView()
    let homeImages3 = UIImageView()
    //スタンプボタン
    let button1 = UIButton()
    let buttonImage1 = UIImage(systemName: "rectangle.and.pencil.and.ellipsis")
    //クーポンボタン
    let button2 = UIButton()
    let buttonImage2 = UIImage(systemName: "ticket")
    //友達に紹介ボタン
    let button3 = UIButton()
    let buttonImage3 = UIImage(systemName: "link")
    //新着情報ボタン
    let button4 = UIButton()
    let buttonImage4 = UIImage(systemName: "megaphone")
    //メニューボタン
    let button5 = UIButton()
    let buttonImage5 = UIImage(systemName: "book.closed")
    //ルーレットボタン
    let button6 = UIButton()
    let buttonImage6 = UIImage(systemName: "circles.hexagongrid")
    //おすすめアイテム
    let label = UILabel()
    //もっと見る１つ目
    let miruButton1 = UIButton()
    //もっと見る画像
    let miruImage = UIImage(named: "mottomiru")
    
    //おすすめアイテム画像
    let images2 = [UIImage(named: "osusume1"), UIImage(named: "osusume2"), UIImage(named: "osusume3"), UIImage(named: "osusume4"), UIImage(named: "osusume5"), UIImage(named: "osusume6")]
    let osusumeImage1 = UIImage(named: "osusume1")
    let osusumeImage2 = UIImage(named: "osusume2")
    let osusumeImage3 = UIImage(named: "osusume3")
    let osusumeImage4 = UIImage(named: "osusume4")
    let osusumeImage5 = UIImage(named: "osusume5")
    let osusumeImage6 = UIImage(named: "osusume6")
    //おすすめアイテムボタン
    let osusumeButton1 = UIButton()
    let osusumeButton2 = UIButton()
    let osusumeButton3 = UIButton()
    let osusumeButton4 = UIButton()
    let osusumeButton5 = UIButton()
    let osusumeButton6 = UIButton()
    //おすすめメニュータップ時にmenu4ViewCOntrollerに渡す値
    var subNumber1: Int?
    var subNumber2: Int?
    var subNumber3: Int?
    var subNumber4: Int?
    //おすすめアイテムタップ時にbuy4ViewControllerに渡す値
    var subBuyNumber1: Int?
    var subBuyNumber2: Int?
    var subBuyNumber3: Int?
    var subBuyNumber4: Int?
    var subBuyNumber5: Int?
    var subBuyNumber6: Int?
    //おすすめメニュー
    let label2 = UILabel()
    //もっと見る２つ目
    let miruButton2 = UIButton()
    //おすすめメニュー１
    let view2 = UIView()
    let image1 = UIImageView()
    let tukemen = UIImage(named: "p.tukemen")
    let nbutton = UIButton()
    let nlabel = UILabel()
    let plabel = UILabel()
    //おすすめメニュー２
    let view3 = UIView()
    let image2 = UIImageView()
    let tukemen2 = UIImage(named: "p.karatukemen")
    let nbutton2 = UIButton()
    let nlabel2 = UILabel()
    let plabel2 = UILabel()
    //おすすめメニュー３
    let view4 = UIView()
    let image3 = UIImageView()
    let tukemen3 = UIImage(named: "p.azisenramen")
    let nbutton3 = UIButton()
    let nlabel3 = UILabel()
    let plabel3 = UILabel()
    //おすすめメニュー４
    let view5 = UIView()
    let image4 = UIImageView()
    let tukemen4 = UIImage(named: "p.kuromayuramen")
    let nbutton4 = UIButton()
    let nlabel4 = UILabel()
    let plabel4 = UILabel()
    let view6 = UIView()
    //新着情報
    let label3 = UILabel()
    let miruButton3 = UIButton()
    let view9 = UIView()
    let view10 = UIView()
    let view11 = UIView()
    let view12 = UIView()
    let button9 = UIButton()
    let button10 = UIButton()
    let button11 = UIButton()
    let button12 = UIButton()
    let image9 = UIImage(named: "infosho")
    let image10 = UIImage(named: "info22")
    let image11 = UIImage(named: "infologo")
    let image12 = UIImage(named: "info22")
    let imageView9 = UIImageView()
    let imageView10 = UIImageView()
    let imageView11 = UIImageView()
    let imageView12 = UIImageView()
    //instagram,Facebook,Webページに画面遷移するボタン
    let socialMedia = UILabel()
    let socialButton1 = UIButton()
    let socialButton2 = UIButton()
    let socialButton3 = UIButton()
    let socialImage1 = UIImage(named: "bt14")
    let socialImage2 = UIImage(named: "bt15")
    let socialImage3 = UIImage(named: "bt16")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //ナビゲーション左側にロゴ画像、右側にマイページとサイドメニューを開くボタンを配置
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "logo")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(leftButtom))
        let navigationItem1 = UIBarButtonItem(image: UIImage(systemName:"square.grid.2x2"), style: .plain, target: self, action: #selector(barTapped1(_:)))
        navigationItem1.tintColor = .black
        let navigationItem2 = UIBarButtonItem(image: UIImage(systemName:"person.circle.fill"), style: .plain, target: self, action: #selector(barTapped2(_:)))
        navigationItem2.tintColor = .black
        
        self.navigationItem.rightBarButtonItems = [navigationItem1, navigationItem2]
        
        self.navigationController?.navigationBar.isTranslucent = false
        //サイドメニューを閉じるタップ判定
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped))
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.selectedIndex = 0
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //ログインしているユーザーがいた際はこの処理を行う。
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
            //おすすめメニューボタンとおすすめアイテムボタンを押した際に、画面遷移で渡す値を代入
            if data["menuNumber12"]! as! Int == 1{
                self.subNumber1 = 10
            }else{
                self.subNumber1 = 11
            }
            if data["menuNumber13"]! as! Int == 1{
                self.subNumber2 = 10
            }else{
                self.subNumber2 = 11
            }
            if data["menuNumber1"]! as! Int == 1{
                self.subNumber3 = 10
            }else{
                self.subNumber3 = 11
            }
            if data["menuNumber3"]! as! Int == 1{
                self.subNumber4 = 10
            }else{
                self.subNumber4 = 11
            }
            if data["buyNumber1"]! as! Int == 1{
                self.subBuyNumber1 = 10
            }else{
                self.subBuyNumber1 = 11
            }
            if data["buyNumber11"]! as! Int == 1{
                self.subBuyNumber2 = 10
            }else{
                self.subBuyNumber2 = 11
            }
            if data["buyNumber12"]! as! Int == 1{
                self.subBuyNumber3 = 10
            }else{
                self.subBuyNumber3 = 11
            }
            if data["buyNumber26"]! as! Int == 1{
                self.subBuyNumber4 = 10
            }else{
                self.subBuyNumber4 = 11
            }
            if data["buyNumber18"]! as! Int == 1{
                self.subBuyNumber5 = 10
            }else{
                self.subBuyNumber5 = 11
            }
            if data["buyNumber13"]! as! Int == 1{
                self.subBuyNumber6 = 10
            }else{
                self.subBuyNumber6 = 11
            }
        }
            self.navigationItem.rightBarButtonItems![1].isEnabled = true
        }else{
            //ログインしてなければマイページボタンをタップできないようにする
            self.navigationItem.rightBarButtonItems![1].isEnabled = false
        }
    }
    override func viewDidLayoutSubviews() {
        //基本的なscrollView
        scrollView.frame = CGRect(x: 0, y: 0, width: scrollWidth, height: scrollHeight)
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: scrollView.frame.height*2 + 150)
        self.view.addSubview(scrollView)
        //横スライドする画像が載っているscrollView
        scrollView1.frame = CGRect(x: 0, y: 0, width: scrollWidth, height: scrollHeight / 3)
        scrollView1.contentSize = CGSize(width: scrollView.frame.width * 3, height: 0)
        scrollView1.delegate = self
        scrollView1.isPagingEnabled = true
        scrollView1.showsVerticalScrollIndicator = false
        scrollView1.showsHorizontalScrollIndicator = false
        self.scrollView.addSubview(scrollView1)
        //横スライドするscrollViewに載せる画像3枚。
        homeImages1.image = homeImage1
        homeImages1.frame = CGRect(x: 0, y: 0, width: scrollView1.frame.width, height: scrollView1.frame.height)
        self.scrollView1.addSubview(homeImages1)
        
        homeImages2.image = homeImage2
        homeImages2.frame = CGRect(x: scrollView1.frame.width, y: 0, width: scrollView1.frame.width, height: scrollView1.frame.height)
        self.scrollView1.addSubview(homeImages2)
        
        homeImages3.image = homeImage3
        homeImages3.frame = CGRect(x: scrollView1.frame.width * 2, y: 0, width: scrollView1.frame.width, height: scrollView1.frame.height)
        self.scrollView1.addSubview(homeImages3)
        
        //スライドに追随するpageControll。
        pageControl.frame = CGRect(x: 0, y: scrollHeight / 3 + 2, width: scrollWidth, height: 10)
        pageControl.numberOfPages = 3
        pageControl.pageIndicatorTintColor = .systemGray3
        pageControl.currentPageIndicatorTintColor = .black
        self.scrollView.addSubview(pageControl)
        
        
        //赤いボタン６つ
        button1.frame = CGRect(x: 0, y: scrollHeight / 3 + 15, width: scrollWidth / 3, height: CGFloat(67))
        button1.setTitle("スタンプ", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button1.setImage(buttonImage1, for: .normal)
        button1.tintColor = .white
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button1.titleLabel?.textAlignment = NSTextAlignment.center
        button1.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button1.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button1.addTarget(self, action: #selector(button1tapped), for: .touchUpInside)
        self.scrollView.addSubview(button1)
        
        button2.frame = CGRect(x: scrollWidth / 3, y: scrollHeight / 3 + 15, width: scrollWidth / 3, height: CGFloat(67))
        button2.setTitle("クーポン", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button2.setImage(buttonImage2, for: .normal)
        button2.tintColor = .white
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button2.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button2.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button2.addTarget(self, action: #selector(button2tapped), for: .touchUpInside)
        self.scrollView.addSubview(button2)
        
        button3.frame = CGRect(x: scrollWidth / 3 * 2, y: scrollHeight / 3 + 15, width: scrollWidth / 3, height: CGFloat(67))
        button3.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button3.setTitle("友達に紹介", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.setImage(buttonImage3, for: .normal)
        button3.tintColor = .white
        button3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button3.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button3.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button3.addTarget(self, action: #selector(button3tapped), for: .touchUpInside)
        self.scrollView.addSubview(button3)
        
        button4.frame = CGRect(x: 0, y: scrollHeight / 3 + 82, width: scrollWidth / 3, height: CGFloat(67))
        button4.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button4.setTitle("新着情報", for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button4.setImage(buttonImage4, for: .normal)
        button4.tintColor = .white
        button4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button4.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button4.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button4.addTarget(self, action: #selector(button4tapped), for: .touchUpInside)
        self.scrollView.addSubview(button4)
        
        button5.frame = CGRect(x: scrollWidth / 3, y: scrollHeight / 3 + 82, width: scrollWidth / 3, height: CGFloat(67))
        button5.setTitle("メニュー", for: .normal)
        button5.setTitleColor(.white, for: .normal)
        button5.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button5.setImage(buttonImage5, for: .normal)
        button5.tintColor = .white
        button5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button5.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button5.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button5.addTarget(self, action: #selector(button5tapped), for: .touchUpInside)
        self.scrollView.addSubview(button5)
        
        button6.frame = CGRect(x: scrollWidth / 3 * 2, y: scrollHeight / 3 + 82, width: scrollWidth / 3, height: CGFloat(67))
        button6.setTitle("ルーレット", for: .normal)
        button6.setTitleColor(.white, for: .normal)
        button6.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        button6.setImage(buttonImage6, for: .normal)
        button6.tintColor = .white
        button6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        button6.imageEdgeInsets = UIEdgeInsets(top: -10, left: 40, bottom: 0, right: 0)
        button6.titleEdgeInsets = UIEdgeInsets(top: 40, left: -30, bottom: 5, right: 0)
        button6.addTarget(self, action: #selector(button6tapped), for: .touchUpInside)
        self.scrollView.addSubview(button6)
        
        //赤いボタンの仕切りとしての白い点線。９で割った際に余りが出ないタイミングで配置する。
        for i in 0 ..< Int(scrollWidth){
            for n in 0 ..< Int(i){
                if n % 9 == 0{
                    let tensen = UIView()
                    tensen.frame = CGRect(x: n + 1, y: Int(scrollHeight) / 3 + 82, width: 5, height: 1)
                    tensen.backgroundColor = .white
                    self.scrollView.addSubview(tensen)
                }
            }
        }
        for i in 0 ..< 149{
            for n in 0 ..< Int(i){
                if n % 9 == 0{
                    let tensen2 = UIView()
                    tensen2.frame = CGRect(x: Int(scrollWidth) / 3, y: Int(scrollHeight) / 3 + 16 + n, width: 1, height: 5)
                    tensen2.backgroundColor = .white
                    self.scrollView.addSubview(tensen2)
                }
            }
        }
        for i in 0 ..< 149{
            for n in 0 ..< Int(i){
                if n % 9 == 0{
                    let tensen3 = UIView()
                    tensen3.frame = CGRect(x: Int(scrollWidth) / 3 * 2, y: Int(scrollHeight) / 3 + 16 + n, width: 1, height: 5)
                    tensen3.backgroundColor = .white
                    self.scrollView.addSubview(tensen3)
                }
            }
        }
        
        label.text = "おすすめアイテム"
        label.font = label.font.withSize(13)
        label.frame = CGRect(x: 8, y: scrollHeight / 3 + 155, width: scrollWidth / 3, height: CGFloat(15))
        self.scrollView.addSubview(label)
        
        miruButton1.frame = CGRect(x: scrollWidth - scrollWidth / 6, y: scrollHeight / 3 + 155, width: scrollWidth / 6, height: CGFloat(20))
        miruButton1.setImage(miruImage, for: UIControl.State.normal)
        miruButton1.addTarget(self, action: #selector(miru1), for: .touchUpInside)
        self.scrollView.addSubview(miruButton1)
        
        scrollView2.frame = CGRect(x: 0, y: scrollHeight / 3 + 180, width: scrollWidth, height: scrollHeight / 4)
        scrollView2.contentSize = CGSize(width: scrollView2.frame.width * 2, height: scrollView2.frame.height)
        self.scrollView.addSubview(scrollView2)
        
        osusumeButton1.frame = CGRect(x: 0, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton1.setImage(osusumeImage1, for: .normal)
        osusumeButton1.addTarget(self, action: #selector(osusumeTapped1), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton1)
        
        osusumeButton2.frame = CGRect(x: osusumeButton1.layer.position.x + 60, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton2.setImage(osusumeImage2, for: .normal)
        osusumeButton2.addTarget(self, action: #selector(osusumeTapped2), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton2)
        
        osusumeButton3.frame = CGRect(x: osusumeButton2.layer.position.x + 60, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton3.setImage(osusumeImage3, for: .normal)
        osusumeButton3.addTarget(self, action: #selector(osusumeTapped3), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton3)
        
        osusumeButton4.frame = CGRect(x: osusumeButton3.layer.position.x + 60, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton4.setImage(osusumeImage4, for: .normal)
        osusumeButton4.addTarget(self, action: #selector(osusumeTapped4), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton4)
        
        osusumeButton5.frame = CGRect(x: osusumeButton4.layer.position.x + 60, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton5.setImage(osusumeImage5, for: .normal)
        osusumeButton5.addTarget(self, action: #selector(osusumeTapped5), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton5)
        
        osusumeButton6.frame = CGRect(x: osusumeButton5.layer.position.x + 60, y: 0, width: scrollView2.frame.width / 3, height: scrollView2.frame.height)
        osusumeButton6.setImage(osusumeImage6, for: .normal)
        osusumeButton6.addTarget(self, action: #selector(osusumeTapped6), for: .touchUpInside)
        self.scrollView2.addSubview(osusumeButton6)
        
        
        
        label2.text = "おすすめメニュー"
        label2.font = label2.font.withSize(13)
        label2.frame = CGRect(x: 8, y: scrollHeight / 3 + 355, width: scrollWidth / 3, height: CGFloat(15))
        self.scrollView.addSubview(label2)
        
        miruButton2.frame = CGRect(x: scrollWidth - scrollWidth / 6, y: scrollHeight / 3 + 355, width: scrollWidth / 6, height: CGFloat(20))
        miruButton2.setImage(miruImage, for: UIControl.State.normal)
        miruButton2.addTarget(self, action: #selector(miru2), for: .touchUpInside)
        self.scrollView.addSubview(miruButton2)
        
        view2.frame = CGRect(x: 0, y: scrollHeight / 3 + 380, width: scrollWidth, height: CGFloat(2))
        view2.backgroundColor = .systemGray3
        self.scrollView.addSubview(view2)
        
        image1.image = tukemen
        image1.frame = CGRect(x: 10, y: scrollHeight / 3 + 390, width: scrollWidth / 5, height: CGFloat(50))
        self.scrollView.addSubview(image1)
        
        nbutton.frame = CGRect(x: scrollWidth / 5 + 1, y: scrollHeight / 3 + 390, width: scrollWidth - (scrollWidth / 5 + scrollWidth / 27), height: CGFloat(50))
        nbutton.addTarget(self, action: #selector(osusumeMenu1), for: .touchUpInside)
        self.scrollView.addSubview(nbutton)
        
        nlabel.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 400, width: CGFloat(60), height: CGFloat(10))
        nlabel.text = "つけ麺"
        nlabel.font = UIFont.boldSystemFont(ofSize: 12)
        self.scrollView.addSubview(nlabel)
        
        plabel.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 415, width: CGFloat(60), height: CGFloat(10))
        plabel.text = "940"
        plabel.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(plabel)
        
        view3.frame = CGRect(x: 0, y: scrollHeight / 3 + 450, width: scrollWidth, height: CGFloat(2))
        view3.backgroundColor = .systemGray3
        self.scrollView.addSubview(view3)
        
        image2.image = tukemen2
        image2.frame = CGRect(x: 10, y: scrollHeight / 3 + 460, width: scrollWidth / 5, height: CGFloat(50))
        self.scrollView.addSubview(image2)
        
        nbutton2.frame = CGRect(x: scrollWidth / 5 + 1, y: scrollHeight / 3 + 460, width: scrollWidth - (scrollWidth / 5 + scrollWidth / 27), height: CGFloat(50))
        nbutton2.addTarget(self, action: #selector(osusumeMenu2), for: .touchUpInside)
        self.scrollView.addSubview(nbutton2)
        
        nlabel2.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 470, width: CGFloat(60), height: CGFloat(10))
        nlabel2.text = "辛つけ麺"
        nlabel2.font = UIFont.boldSystemFont(ofSize: 12)
        self.scrollView.addSubview(nlabel2)
        
        plabel2.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 485, width: CGFloat(60), height: CGFloat(10))
        plabel2.text = "960"
        plabel2.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(plabel2)
        
        view4.frame = CGRect(x: 0, y: scrollHeight / 3 + 520, width: scrollWidth, height: CGFloat(2))
        view4.backgroundColor = .systemGray3
        self.scrollView.addSubview(view4)
        
        image3.image = tukemen3
        image3.frame = CGRect(x: 10, y: scrollHeight / 3 + 530, width: scrollWidth / 5, height: CGFloat(50))
        self.scrollView.addSubview(image3)
        
        nbutton3.frame = CGRect(x: scrollWidth / 5 + 1, y: scrollHeight / 3 + 530, width: scrollWidth - (scrollWidth / 5 + scrollWidth / 27), height: CGFloat(50))
        nbutton3.addTarget(self, action: #selector(osusumeMenu3), for: .touchUpInside)
        self.scrollView.addSubview(nbutton3)
        
        nlabel3.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 540, width: CGFloat(100), height: CGFloat(10))
        nlabel3.text = "味千ラーメン"
        nlabel3.font = UIFont.boldSystemFont(ofSize: 12)
        self.scrollView.addSubview(nlabel3)
        
        plabel3.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 555, width: CGFloat(60), height: CGFloat(10))
        plabel3.text = "690"
        plabel3.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(plabel3)
        
        view5.frame = CGRect(x: 0, y: scrollHeight / 3 + 590, width: scrollWidth, height: CGFloat(2))
        view5.backgroundColor = .systemGray3
        self.scrollView.addSubview(view5)
        
        image4.image = tukemen4
        image4.frame = CGRect(x: 10, y: scrollHeight / 3 + 600, width: scrollWidth / 5, height: CGFloat(50))
        self.scrollView.addSubview(image4)
        
        nbutton4.frame = CGRect(x: scrollWidth / 5 + 1, y: scrollHeight / 3 + 600, width: scrollWidth - (scrollWidth / 5 + scrollWidth / 27), height: CGFloat(50))
        nbutton4.addTarget(self, action: #selector(osusumeMenu4), for: .touchUpInside)
        self.scrollView.addSubview(nbutton4)
        
        nlabel4.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 610, width: CGFloat(140), height: CGFloat(10))
        nlabel4.text = "黒マー油ラーメン"
        nlabel4.font = UIFont.boldSystemFont(ofSize: 12)
        self.scrollView.addSubview(nlabel4)
        
        plabel4.frame = CGRect(x: scrollWidth / 5 + 30, y: scrollHeight / 3 + 625, width: CGFloat(60), height: CGFloat(10))
        plabel4.text = "850"
        plabel4.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(plabel4)
        
        view6.frame = CGRect(x: 0, y: scrollHeight / 3 + 660, width: scrollWidth, height: CGFloat(2))
        view6.backgroundColor = .systemGray3
        self.scrollView.addSubview(view6)
        
        label3.frame = CGRect(x: 5, y: scrollHeight / 3 + 680, width: scrollWidth / 2, height: 10)
        label3.text = "新着情報"
        label3.textAlignment = NSTextAlignment.left
        label3.font = UIFont.systemFont(ofSize: 13)
        self.scrollView.addSubview(label3)
        
        miruButton3.frame = CGRect(x: scrollWidth - scrollWidth / 6, y: scrollHeight / 3 + 680, width: scrollWidth / 6, height: CGFloat(20))
        miruButton3.setImage(miruImage, for: UIControl.State.normal)
        miruButton3.addTarget(self, action: #selector(miru3), for: .touchUpInside)
        self.scrollView.addSubview(miruButton3)
        
        //新着情報。
        let viewArray = [view12,view11,view10,view9]
        imageView9.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView9.image = image9
        view9.addSubview(imageView9)
        button9.frame = CGRect(x: 100, y: 0, width: scrollWidth - 110, height: 90)
        button9.addTarget(self, action: #selector(buttonTap9), for: .touchUpInside)
        button9.titleLabel?.numberOfLines = 0
        button9.setTitleColor(.black, for: .normal)
        button9.setTitle("2020.10.2\n味千ラーメン通販サイトより新商品焼小籠包のお知らせです。", for: .normal)
        view9.addSubview(button9)
        
        imageView10.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView10.image = image10
        view10.addSubview(imageView10)
        button10.frame = CGRect(x: 100, y: 0, width: scrollWidth - 110, height: 90)
        button10.addTarget(self, action: #selector(buttonTap10), for: .touchUpInside)
        button10.titleLabel?.numberOfLines = 0
        button10.setTitleColor(.black, for: .normal)
        button10.setTitle("2020.10.22\n10月22日本日は味千感謝デー", for: .normal)
        view10.addSubview(button10)
        
        imageView11.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView11.image = image11
        view11.addSubview(imageView11)
        button11.frame = CGRect(x: 100, y: 0, width: scrollWidth - 110, height: 90)
        button11.addTarget(self, action: #selector(buttonTap11), for: .touchUpInside)
        button11.titleLabel?.numberOfLines = 0
        button11.setTitleColor(.black, for: .normal)
        button11.setTitle("2020.11.20\n富合店営業時間変更のお知らせ", for: .normal)
        view11.addSubview(button11)
        
        imageView12.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView12.image = image12
        view12.addSubview(imageView12)
        button12.frame = CGRect(x: 100, y: 0, width: scrollWidth - 110, height: 90)
        button12.addTarget(self, action: #selector(buttonTap12), for: .touchUpInside)
        button12.titleLabel?.numberOfLines = 0
        button12.setTitleColor(.black, for: .normal)
        button12.setTitle("2020.11.22\n本日は味千感謝デー！", for: .normal)
        view12.addSubview(button12)
        
        //新着情報の配置
        for i in 0 ..< viewArray.count{
            viewArray[i].frame = CGRect(x: 5, y: scrollHeight / 3 + 710 + (120 * CGFloat(i)), width: scrollWidth - 10, height: 100)
            viewArray[i].backgroundColor = .white
            viewArray[i].layer.cornerRadius = 5
            viewArray[i].layer.shadowOffset = CGSize(width: 0.0, height: 0.4)
            viewArray[i].layer.shadowColor = UIColor.black.cgColor
            viewArray[i].layer.shadowOpacity = 0.25
            viewArray[i].layer.shadowRadius = 5
            self.scrollView.addSubview(viewArray[i])
        }
        
        //最下部３つのボタンの配置
        socialMedia.frame = CGRect(x: 0, y: scrollHeight / 3 + 1200, width: scrollWidth, height: 13)
        socialMedia.text = "SOCIAL MEDIA"
        socialMedia.textAlignment = NSTextAlignment.center
        socialMedia.font = UIFont.systemFont(ofSize: 12)
        self.scrollView.addSubview(socialMedia)
        
        socialButton1.frame = CGRect(x: scrollWidth / 2 - 40, y: scrollHeight / 3 + 1240, width: 20, height: 20)
        socialButton1.setImage(socialImage1, for: .normal)
        socialButton1.layer.cornerRadius = 3
        socialButton1.addTarget(self, action: #selector(socialButtonTap1), for: .touchUpInside)
        self.scrollView.addSubview(socialButton1)
        
        socialButton2.frame = CGRect(x: scrollWidth / 2, y: scrollHeight / 3 + 1240, width: 20, height: 20)
        socialButton2.setImage(socialImage2, for: .normal)
        socialButton2.layer.cornerRadius = 3
        socialButton2.addTarget(self, action: #selector(socialButtonTap2), for: .touchUpInside)
        self.scrollView.addSubview(socialButton2)
        
        socialButton3.frame = CGRect(x: scrollWidth / 2 + 40, y: scrollHeight / 3 + 1240, width: 20, height: 20)
        socialButton3.setImage(socialImage3, for: .normal)
        socialButton3.layer.cornerRadius = 3
        socialButton3.addTarget(self, action: #selector(socialButtonTap3), for: .touchUpInside)
        self.scrollView.addSubview(socialButton3)
        
        self.scrollView.contentSize = CGSize(width: 0, height: self.socialButton3.layer.position.y + 120)
        
        
        
        sideBar.sideView1.frame = CGRect(x: scrollWidth, y: 0, width: scrollWidth, height: scrollHeight)
        sideBar.sideView1.backgroundColor = sideBar.color
        self.view.addSubview(sideBar.sideView1)
        
        sideBar.sideView2.frame = CGRect(x: scrollWidth, y: 0, width: scrollWidth, height: scrollHeight)
        sideBar.sideView2.backgroundColor = .white
        self.view.addSubview(sideBar.sideView2)
        
        
        
        if  scrollHeight <= 699 {
            sideBar.sideScrollView.frame = CGRect(x: scrollWidth, y: 0, width: scrollWidth, height: 700)
            sideBar.sideScrollView.contentSize = CGSize(width: scrollWidth, height: 720)
        }else{
            sideBar.sideScrollView.frame = CGRect(x: scrollWidth, y: 0, width: scrollWidth, height: scrollHeight)
            sideBar.sideScrollView.contentSize = CGSize(width: scrollWidth, height: scrollHeight)
        }
        self.view.addSubview(sideBar.sideScrollView)
        
        
        
        //サイドメニュー
        sideBar.imageView1.frame = CGRect(x: 0, y: 0, width: sideBar.sideScrollView.frame.width, height: sideBar.sideView2.frame.height / 7)
        sideBar.imageView1.setImage(sideBar.sideimage1, for: .normal)
        sideBar.imageView1.contentMode = UIView.ContentMode.scaleAspectFill
        sideBar.sideScrollView.addSubview(sideBar.imageView1)
        
        
        sideBar.imageView.image = sideBar.sideimage2
        sideBar.imageView.frame = CGRect(x: 30, y: 25, width: 60, height: 60)
        sideBar.imageView.layer.cornerRadius = 30
        sideBar.sideScrollView.addSubview(sideBar.imageView)
        
        
        sideBar.text1.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: 40, width: 50, height: 15)
        let userID2 = Auth.auth().currentUser?.uid
        if Auth.auth().currentUser == nil{
        sideBar.text1.text = "未登録"
        }else{
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID2))!").getDocument{(snap, error) in
                if let error = error {
                    fatalError("エラーした\(error)")
                }
                guard let data: [String : Any] = snap?.data() else {
                    return
                }
                sideBar.text1.text = "\(String(describing: data["nicName"]!))"
            }
        }
        
        sideBar.text1.font = UIFont.systemFont(ofSize: 12)
        sideBar.text1.font = UIFont.boldSystemFont(ofSize: 16)
        sideBar.sideScrollView.addSubview(sideBar.text1)
        
        sideBar.text2.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: 60, width: 90, height: 10)
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
    
    
    
    @objc func leftButtom(){
        return
    }
    @objc func button1tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "stump") as! stumpViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func button2tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "cupon") as! cuponViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button3tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "friend") as! friendViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button4tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo") as! newInfoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func button5tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "page") as! pageViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func button6tapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "rulet") as! ruletViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func miru1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "page2") as! page2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func miru2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "page") as! pageViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func miru3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo") as! newInfoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func osusumeTapped1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok1")
        vc.sendLabel1 = "味千とんこつラーメン　2食分\n１セット"
        vc.sendLabel2 = "430円（税込）"
        vc.sendText = "ラーメンランキング入賞の豚骨ラーメン！店舗でも一番人気！"
        vc.number1 = self.subBuyNumber1
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func osusumeTapped2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok11")
        vc.sendLabel1 = "味千とんこつラーメンギフトセッ\nト　２食入６セット　化粧箱入り"
        vc.sendLabel2 = "2,730円（税込）"
        vc.sendText = "元祖熊本拉麺　味千ラーメンギフトセット　熊本豚骨とん\nこつ　熊本ラーメン"
        vc.number1 = self.subBuyNumber2
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func osusumeTapped3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok12")
        vc.sendLabel1 = "熊本味千ラーメンギフトセット\n２食入１０セット　化粧箱入り"
        vc.sendLabel2 = "4,420円（税込）"
        vc.sendText = "元祖熊本ラーメン　味千ラーメンギフトセット　熊本豚骨　とん\nこつ　熊本ラーメン"
        vc.number1 = self.subBuyNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func osusumeTapped4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok26")
        vc.sendLabel1 = "[冷蔵配送]くまもと桂花特製太\n肉（ターロー）１袋（８０g入り）"
        vc.sendLabel2 = "519円（税込）"
        vc.sendText = "ご飯に乗せて丼でもいただけます♪\n熊本桂花ラーメン特製「豚の角煮」４時間かけてじっくりと煮込\nんだジューシーで柔らかな逸品！ご飯に乗せて丼としてもいただ\nけます♪\n\n桂花太肉（ターロー）は厳選された肉バラ肉を丁寧にじっくり４時\n間かけて仕込み、桂花ラーメンに合うように仕上げています。\n柔らかくてしっとりジューシーな桂花風豚の角煮を\nぜひご賞味下さい。"
        vc.number1 = self.subBuyNumber4
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func osusumeTapped5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok18")
        vc.sendLabel1 = "熊本名物　太平燕　２食１セット"
        vc.sendLabel2 = "650円（税込）"
        vc.sendText = "話題のヘルシーB級グルメ！中華風春雨スープ、はるさめヌードル\n「太平燕」とは・・・\n中国福建省の家庭料理をヒントに熊本の料理人が「まかない」と\nして作ったのが始まり、と言われている健康春雨スープです。\n「白湯豚骨スープ」と「鶏ガラスープ」をブレンドし、コクがあ\nるのにあっさりとしたオリジナルスープに仕上げました。お好み\nで野菜やゆで卵等を入れるとより一層美味しくいただけます。"
        vc.number1 = self.subBuyNumber5
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func osusumeTapped6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "buy4") as! buy4ViewController
        vc.sendImage = UIImage(named: "ok13")
        vc.sendLabel1 = "ギフト　黒マー油ラーメンBOX １箱\n（3食入り）"
        vc.sendLabel2 = "900円（税込）"
        vc.sendText = "癖になる大人の黒！\nほろ苦い風味豊かな黒マー油！\n今まで店舗限定販売だった黒マー油ギフトBOXが遂に、\n味千ラーメン通販サイトにて販売開始！\nお店まで中々足を運べない方でも\n黒マー油拉麺が食べられる！\n特製BOXに入っているので、贈り物にも自宅用にも！\n癖になる大人の黒！\n丸二日かけてニンニクの風味を凝縮させた\n特製黒マー油入りのスープが麺によく絡む！"
        
        vc.number1 = self.subBuyNumber6
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func osusumeMenu1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
        vc.sendLabel2 = "940"
        vc.sendText = ""
        vc.number1 = self.subNumber1
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func osusumeMenu2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karatukemen")
        vc.sendLabel1 = "辛つけ麺"
        vc.sendLabel2 = "960"
        vc.sendText = ""
        vc.number1 = self.subNumber2
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func osusumeMenu3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendText = ""
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func osusumeMenu4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.number1 = self.subNumber4
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func barTapped1(_ sender: UIBarButtonItem){
        
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
    @objc func barTapped2(_ sender: UIBarButtonItem){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "myPage") as! myPageViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func tapEvent1(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        sideBar.sideView1.layer.position.x = self.view.frame.width * 2
        sideBar.sideView2.layer.position.x = self.view.frame.width * 2
        sideBar.sideScrollView.layer.position.x = self.view.frame.width * 2
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func tapEvents2(){
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
    @objc func buttonTap9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infosho")
        vc.sendLabel1 = "2020.10.2"
        vc.sendLabel2 = "味千ラーメン通販サイトより新商品焼小籠包のお知らせです。！"
        vc.sendText = "本日2020年7月27日～8月31日迄の期間限定でランチタイムに限り、各店舗オリジナルの内容で500円のランチをご用意しております。また同時に、各店舗一部のセットメニューが通常価格より100円プライスオフ！大変お得なキャンペーンとなっております。お得なこの期間に是非味千拉麺へお越しください！\n\n※500円ランチは店舗によって内容が異なる場合がございます。\n※100円プライスオフのセットメニューの内容は各店舗異なる場合がございます。\n※店舗によりランチタイムの時間が異なる場合がございます\nまた下記の店舗では諸事情によりランチキャンペーンを行っておりません。誠に申し訳ございませんが、ご了承のほどよろしくお願いいたします。\n熊本県【　御領店・水前寺観光通店・高島公園前店・白川水源店・佐野店　】\n沖縄県【　中城店　】\n大分県【　くす店　】\n広島県【　ムツゴロウ広本店　】\n大阪府【　新大阪店・大阪伊賀店　】\n静岡県【　掛川インター店・袋井店　】\n茨城県【　永国店　】\n青森県【　青森観光通店　】\n北海道【　帯広店・札内店　】\n\n\nキャンペーン期間\n2020年7月27日(月)～2020年8月31日(月)\nキャンペーン概要\n・期間中、ランチタイムのみ各店舗500円ランチメニューの提供\n・期間中、ランチタイムのみ一部セットメニューの100円割引"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.10.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infologo")
        vc.sendLabel1 = "2020.11.20"
        vc.sendLabel2 = "富合店営業時間変更のお知らせ"
        vc.sendText = "現在富合店では6:30 〜 22:00（朝ラーメン時間6:30 〜 10:00迄）の営業時間で行っておりましたが、１２月1日（火）から朝９時の営業へと変更となります。\n\nまた、6:30〜10:00迄は朝ラーメン限定の販売でしたが、１２月１日から通常メニューの提供も開始いたします。\n\nよろしくお願い致します。"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func buttonTap12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.11.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func socialButtonTap1(){
        let url = URL(string: "https://www.instagram.com/shigemitsuaji1000/?hl=ja")
        UIApplication.shared.open(url!)
        
    }
    @objc func socialButtonTap2(){
        let url = URL(string: "https://ja-jp.facebook.com/ajisen.japan/")
        UIApplication.shared.open(url!)
    }
    @objc func socialButtonTap3(){
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "web") as! webViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
}
//pageControllの位置を決める。
extension homeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //0,1,2のいずれかが当たるようになる。
        pageControl.currentPage = Int(scrollView1.contentOffset.x / scrollView1.frame.size.width)
    }
}
