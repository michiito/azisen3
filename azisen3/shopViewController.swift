
//店舗情報ページ。構造はhigasibypas,hikarinomori,tomiai,tasaki,arao,kamoto,ariake,minamata
//と同じ


//１１１〜８５８　基本部品の貼り付け。２６０〜２７０でマップの座標設定。
//　　　　　　　　　　　　　　　　　　　　　　　　　　　　その他、サイドメニューや画面遷移の設定。
//８５８〜８８０　電話をかけるアクション、googleマップを開くアクション






import UIKit
import MapKit
import Firebase

class shopViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    

    //基本部品
    let scrollView = UIScrollView()
    let image = UIImage(named: "honten")
    let images = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let text = UITextView()
    let contentsView = UIView()
    let conLabel1 = UILabel()
    let conLabel2 = UILabel()
    let conLabel3 = UILabel()
    let conLabel4 = UILabel()
    let conLabel5 = UILabel()
    let conLabel6 = UILabel()
    let conLabel7 = UILabel()
    let conLabel8 = UILabel()
    let conLabel9 = UILabel()
    let conLabel10 = UILabel()
    let conLabel11 = UILabel()
    let conLabel12 = UILabel()
    let conLabel13 = UILabel()
    let conLabel14 = UILabel()
    let conLabel15 = UILabel()
    let conView1 = UIView()
    let conView2 = UIView()
    let conView3 = UIView()
    let conView4 = UIView()
    let conView5 = UIView()
    let conView6 = UIView()
    var map = MKMapView()
    let shopButton1 = UIButton()
    let shopButton2 = UIButton()
    let shopButton3 = UIButton()
    let shopButton4 = UIButton()
    let shopButton5 = UIButton()
    let shopButton6 = UIButton()
    let shopButton7 = UIButton()
    let shopButton8 = UIButton()
    let photo1 = UIImage(named: "s.eastOfBypas")
    let photo2 = UIImage(named: "s.hikarinomori")
    let photo3 = UIImage(named: "s.tomiai")
    let photo4 = UIImage(named: "s.tasaki")
    let photo5 = UIImage(named: "s.arao")
    let photo6 = UIImage(named: "s.kamoto")
    let photo7 = UIImage(named: "s.ariake")
    let photo8 = UIImage(named: "s.minamata")
    let images1 = UIImageView()
    let images2 = UIImageView()
    let images3 = UIImageView()
    let images4 = UIImageView()
    let images5 = UIImageView()
    let images6 = UIImageView()
    let images7 = UIImageView()
    let images8 = UIImageView()
    let shopView1 = UIView()
    let shopView2 = UIView()
    let shopView3 = UIView()
    let shopView4 = UIView()
    let shopView5 = UIView()
    let shopView6 = UIView()
    let shopView7 = UIView()
    let shopView8 = UIView()
    let globeButton = UIButton()
    let globeImage = UIImage(systemName: "globe")
    //googleマップを使うためのボタン
    let mapButton = UIButton()
    let mapImage = UIImage(systemName: "map.fill")
    //店舗に電話をかけるボタン
    let tellButton = UIButton()
    let tellImage = UIImage(systemName: "phone.fill")
    let tellNumber = NSURL(string: "tel:096-384-4433")!
    //店舗の座標
    let latitude = "32.787992"
    let longitude = "130.742070"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "店舗情報"
        
        let navigationItem1 = UIBarButtonItem(image: UIImage(systemName:"square.grid.2x2"), style: .plain, target: self, action: #selector(barTapped1(_:)))
        navigationItem1.tintColor = .black
        self.navigationItem.rightBarButtonItem = navigationItem1
    }
    
    override func viewDidLayoutSubviews() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        scrollView.contentSize = CGSize(width: width, height: height * 3)
        self.view.addSubview(scrollView)
        
        images.frame = CGRect(x: 0, y: 0, width: width, height: height / 2.5)
        images.image = image
        self.scrollView.addSubview(images)
        
        label1.frame = CGRect(x: 0, y: images.frame.height + 10, width: width, height: 10)
        label1.text = "ホンテン"
        label1.textAlignment = NSTextAlignment.center
        label1.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(label1)
        
        label2.frame = CGRect(x: 0, y: label1.layer.position.y + 15, width: width, height: 15)
        label2.text = "本店"
        label2.textAlignment = NSTextAlignment.center
        label2.font = UIFont.systemFont(ofSize: 15)
        self.scrollView.addSubview(label2)
        
        text.frame = CGRect(x: 5, y: label2.layer.position.y + 30, width: width - 10, height: 80)
        text.font = UIFont.systemFont(ofSize: 10)
        text.text = "1968年(昭和43年)に熊本県庁正門横にオープンした味千ラーメン本店。全世界の味千ラーメンの総本山として毎日美味しいラーメンをお客様へご提供しています。ぜひ熊本へお越しの際は味千本店へ。\n熊本へお住まいの方はぜひ味千ラーメン本店へお越しください。お待ちしています。"
        text.isEditable = false
        self.scrollView.addSubview(text)
        
        
        contentsView.frame = CGRect(x: 5, y: text.layer.position.y + 60, width: width - 10, height: 220)
        contentsView.backgroundColor = .systemGray3
        contentsView.layer.cornerRadius = 5
        self.scrollView.addSubview(contentsView)
        
        
        conLabel1.frame = CGRect(x: 5, y: 3, width: width - 15, height: 13)
        conLabel1.text = "住所"
        conLabel1.textAlignment = NSTextAlignment.left
        conLabel1.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel1)
        
        conLabel2.frame = CGRect(x: 5, y: 18, width: width - 15, height: 13)
        conLabel2.text = "熊本市中央区水前寺6-20-24"
        conLabel2.textAlignment = NSTextAlignment.left
        conLabel2.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel2)
        
        conView1.frame = CGRect(x: 5, y: 32, width: width - 15, height: 1)
        conView1.backgroundColor = .black
        self.contentsView.addSubview(conView1)
        
        conLabel3.frame = CGRect(x: 5, y: 35, width: width - 15, height: 13)
        conLabel3.text = "電話"
        conLabel3.textAlignment = NSTextAlignment.left
        conLabel3.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel3)
        
        conLabel4.frame = CGRect(x: 5, y: 50, width: width - 15, height: 13)
        conLabel4.text = "096-384-4433"
        conLabel4.font = UIFont.systemFont(ofSize: 11)
        conLabel4.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel4)
        
        conView2.frame = CGRect(x: 5, y: 64, width: width - 15, height: 1)
        conView2.backgroundColor = .black
        self.contentsView.addSubview(conView2)
        
        conLabel5.frame = CGRect(x: 5, y: 66, width: width - 15, height: 13)
        conLabel5.text = "禁煙/喫煙"
        conLabel5.textAlignment = NSTextAlignment.left
        conLabel5.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel5)
        
        conLabel6.frame = CGRect(x: 5, y: 78, width: width - 15, height: 13)
        conLabel6.text = "店内全て禁煙です"
        conLabel6.textAlignment = NSTextAlignment.left
        conLabel6.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel6)
        
        conView3.frame = CGRect(x: 5, y: 92, width: width - 15, height: 1)
        conView3.backgroundColor = .black
        self.contentsView.addSubview(conView3)
        
        conLabel7.frame = CGRect(x: 5, y: 94, width: width - 15, height: 13)
        conLabel7.text = "駐車場"
        conLabel7.textAlignment = NSTextAlignment.left
        conLabel7.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel7)
        
        conLabel8.frame = CGRect(x: 5, y: 107, width: width - 15, height: 13)
        conLabel8.text = "店舗側に8台"
        conLabel8.font = UIFont.systemFont(ofSize: 11)
        conLabel8.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel8)
        
        conLabel9.frame = CGRect(x: 5, y: 120, width: width - 15, height: 13)
        conLabel9.text = "店舗裏側に10台"
        conLabel9.textAlignment = NSTextAlignment.left
        conLabel9.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel9)
        
        conView4.frame = CGRect(x: 5, y: 133, width: width - 15, height: 1)
        conView4.backgroundColor = .black
        self.contentsView.addSubview(conView4)
        
        conLabel10.frame = CGRect(x: 5, y: 134, width: width - 15, height: 13)
        conLabel10.text = "定休日"
        conLabel10.textAlignment = NSTextAlignment.left
        conLabel10.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel10)
        
        conLabel11.frame = CGRect(x: 5, y: 147, width: width - 15, height: 13)
        conLabel11.text = "元日の休業"
        conLabel11.font = UIFont.systemFont(ofSize: 11)
        conLabel11.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel11)
        
        conLabel12.frame = CGRect(x: 5, y: 160, width: width - 15, height: 13)
        conLabel12.text = "※その他、機材メンテナンスのため臨時休業の場合有"
        conLabel12.font = UIFont.systemFont(ofSize: 11)
        conLabel12.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel12)
        
        conView5.frame = CGRect(x: 5, y: 173, width: width - 15, height: 1)
        conView5.backgroundColor = .black
        self.contentsView.addSubview(conView5)
        
        conLabel13.frame = CGRect(x: 5, y: 175, width: width - 15, height: 13)
        conLabel13.text = "営業時間"
        conLabel13.textAlignment = NSTextAlignment.left
        conLabel13.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel13)
        
        conLabel14.frame = CGRect(x: 5, y: 188, width: width - 15, height: 13)
        conLabel14.text = "11:00 〜 22:00"
        conLabel14.font = UIFont.systemFont(ofSize: 11)
        conLabel14.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel14)
        
        conLabel15.frame = CGRect(x: 5, y: 201, width: width - 15, height: 13)
        conLabel15.text = "オーダーストップ 21:30"
        conLabel15.textAlignment = NSTextAlignment.left
        conLabel15.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel15)
        
        conView6.frame = CGRect(x: 5, y: 214, width: width - 15, height: 1)
        conView6.backgroundColor = .black
        self.contentsView.addSubview(conView6)
        
        
        map.frame = CGRect(x: 5, y: contentsView.layer.position.y + contentsView.frame.height - 80, width: width - 10, height: height / 2.3)
        map.layer.cornerRadius = 5
        let center = CLLocationCoordinate2DMake(32.787992, 130.742070)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let pin = MKPointAnnotation()
        pin.coordinate = center
        let region = MKCoordinateRegion(center: center, span: span)
        map.setRegion(region, animated: true)
        map.addAnnotation(pin)
        self.scrollView.addSubview(map)
        
        
        
        images1.frame = CGRect(x: 5, y: map.layer.position.y + 150, width: 35, height: 20)
        images1.contentMode = UIView.ContentMode.scaleAspectFill
        images1.image = photo1
        self.scrollView.addSubview(images1)
        
        shopButton1.frame = CGRect(x: 40, y: images1.layer.position.y, width: width - 50, height: 20)
        shopButton1.setTitle("東バイパス店", for: .normal)
        shopButton1.setTitleColor(.black, for: .normal)
        shopButton1.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        self.scrollView.addSubview(shopButton1)
        
        shopView1.frame = CGRect(x: 5, y: images1.layer.position.y + 20, width: width - 10, height: 1)
        shopView1.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView1)
        
        images2.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 40, width: 35, height: 20)
        images2.contentMode = UIView.ContentMode.scaleAspectFill
        images2.image = photo2
        self.scrollView.addSubview(images2)
        
        shopButton2.frame = CGRect(x: 40, y: images2.layer.position.y, width: width - 50, height: 20)
        shopButton2.setTitle("光の森店", for: .normal)
        shopButton2.setTitleColor(.black, for: .normal)
        shopButton2.addTarget(self, action: #selector(tap2), for: .touchUpInside)
        self.scrollView.addSubview(shopButton2)
        
        shopView2.frame = CGRect(x: 5, y: images2.layer.position.y + 20, width: width - 10, height: 1)
        shopView2.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView2)
        
        images3.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 80, width: 35, height: 20)
        images3.contentMode = UIView.ContentMode.scaleAspectFill
        images3.image = photo3
        self.scrollView.addSubview(images3)
        
        shopButton3.frame = CGRect(x: 40, y: images3.layer.position.y, width: width - 50, height: 20)
        shopButton3.setTitle("富合店", for: .normal)
        shopButton3.setTitleColor(.black, for: .normal)
        shopButton3.addTarget(self, action: #selector(tap3), for: .touchUpInside)
        self.scrollView.addSubview(shopButton3)
        
        shopView3.frame = CGRect(x: 5, y: images3.layer.position.y + 20, width: width - 10, height: 1)
        shopView3.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView3)
        
        images4.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 120, width: 35, height: 20)
        images4.contentMode = UIView.ContentMode.scaleAspectFill
        images4.image = photo4
        self.scrollView.addSubview(images4)
        
        shopButton4.frame = CGRect(x: 40, y: images4.layer.position.y, width: width - 50, height: 20)
        shopButton4.setTitle("イオンタウン田崎店", for: .normal)
        shopButton4.setTitleColor(.black, for: .normal)
        shopButton4.addTarget(self, action: #selector(tap4), for: .touchUpInside)
        self.scrollView.addSubview(shopButton4)
        
        shopView4.frame = CGRect(x: 5, y: images4.layer.position.y + 20, width: width - 10, height: 1)
        shopView4.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView4)
        
        images5.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 160, width: 35, height: 20)
        images5.contentMode = UIView.ContentMode.scaleAspectFill
        images5.image = photo5
        self.scrollView.addSubview(images5)
        
        shopButton5.frame = CGRect(x: 40, y: images5.layer.position.y, width: width - 50, height: 20)
        shopButton5.setTitle("荒尾グリーンランド前店", for: .normal)
        shopButton5.setTitleColor(.black, for: .normal)
        shopButton5.addTarget(self, action: #selector(tap5), for: .touchUpInside)
        self.scrollView.addSubview(shopButton5)
        
        shopView5.frame = CGRect(x: 5, y: images5.layer.position.y + 20, width: width - 10, height: 1)
        shopView5.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView5)
        
        images6.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 200, width: 35, height: 20)
        images6.contentMode = UIView.ContentMode.scaleAspectFill
        images6.image = photo6
        self.scrollView.addSubview(images6)
        
        shopButton6.frame = CGRect(x: 40, y: images6.layer.position.y, width: width - 50, height: 20)
        shopButton6.setTitle("鹿本店", for: .normal)
        shopButton6.setTitleColor(.black, for: .normal)
        shopButton6.addTarget(self, action: #selector(tap6), for: .touchUpInside)
        self.scrollView.addSubview(shopButton6)
        
        shopView6.frame = CGRect(x: 5, y: images6.layer.position.y + 20, width: width - 10, height: 1)
        shopView6.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView6)
        
        images7.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 240, width: 35, height: 20)
        images7.contentMode = UIView.ContentMode.scaleAspectFill
        images7.image = photo7
        self.scrollView.addSubview(images7)
        
        shopButton7.frame = CGRect(x: 40, y: images7.layer.position.y, width: width - 50, height: 20)
        shopButton7.setTitle("有明店", for: .normal)
        shopButton7.setTitleColor(.black, for: .normal)
        shopButton7.addTarget(self, action: #selector(tap7), for: .touchUpInside)
        self.scrollView.addSubview(shopButton7)
        
        shopView7.frame = CGRect(x: 5, y: images7.layer.position.y + 20, width: width - 10, height: 1)
        shopView7.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView7)
        
        images8.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 280, width: 35, height: 20)
        images8.contentMode = UIView.ContentMode.scaleAspectFill
        images8.image = photo8
        self.scrollView.addSubview(images8)
        
        shopButton8.frame = CGRect(x: 40, y: images8.layer.position.y, width: width - 50, height: 20)
        shopButton8.setTitle("水俣店", for: .normal)
        shopButton8.setTitleColor(.black, for: .normal)
        shopButton8.addTarget(self, action: #selector(tap8), for: .touchUpInside)
        self.scrollView.addSubview(shopButton8)
        
        shopView8.frame = CGRect(x: 5, y: images8.layer.position.y + 20, width: width - 10, height: 1)
        shopView8.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView8)
        
        globeImage!.withTintColor(.white)
        globeButton.frame = CGRect(x: width / 2 - 5, y: shopView8.layer.position.y + 10, width: 10, height: 10)
        globeButton.setImage(globeImage, for: .normal)
        globeButton.backgroundColor = .black
        globeButton.addTarget(self, action: #selector(globeTap), for: .touchUpInside)
        self.scrollView.addSubview(globeButton)
        
        mapButton.frame = CGRect(x: width - 50, y: height / 2 + 160, width: 40, height: 40)
        mapImage?.withTintColor(.white)
        mapButton.setImage(mapImage, for: .normal)
        mapButton.backgroundColor = .red
        mapButton.tintColor = .white
        mapButton.layer.cornerRadius = mapButton.frame.width / 2
        mapButton.addTarget(self, action: #selector(mapTap), for: .touchUpInside)
        self.view.addSubview(mapButton)
        
        tellButton.frame = CGRect(x: width - 50, y: height / 2 + 210, width: 40, height: 40)
        tellImage?.withTintColor(.white)
        tellButton.setImage(tellImage, for: .normal)
        tellButton.backgroundColor = .red
        tellButton.tintColor = .white
        tellButton.layer.cornerRadius = tellButton.frame.width / 2
        tellButton.addTarget(self, action: #selector(tellTap), for: .touchUpInside)
        self.view.addSubview(tellButton)
        
        scrollView.contentSize = CGSize(width: 0, height: globeButton.frame.height + globeButton.layer.position.y + 50)
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped))
        
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
        
        
        
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
    @objc func aa(){
        print(self.scrollView.subviews.count)
        for i in self.scrollView.subviews{
            i.removeFromSuperview()
        }
    }
    
    @objc func tap1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "higasibypas") as! higasibypasViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "hikarinomori") as! hikarinomoriViewController
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func tap3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tomiai") as! tomiaiViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tasaki") as! tasakiViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "arao") as! araoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "kamoto") as! kamotoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ariake") as! ariakeViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "minamata") as! minamataViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
    @objc func mapTap(){
        let urlString: String!
        
        if UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!) {
            urlString = "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=walking&zoom=14"
            }
        else {
            urlString = "http://maps.apple.com/?daddr=\(latitude),\(longitude)&dirflg=w"
            }
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
            }
        
    }
    @objc func tellTap(){
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(tellNumber as URL)
        } else {
            UIApplication.shared.openURL(tellNumber as URL)
        }
        
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
    @objc func globeTap(){
        
    }
}
