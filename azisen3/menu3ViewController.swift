
//buy3ViewControllerと構造は同じ

import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD

class menu3ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let menuView = UIView()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let scrollView = UIScrollView()
    
    let image = UIImage(systemName: "cart")
    let imageView1 = UIImageView()
    
    let label1 = UILabel()
    
    let menuImageView = UIImageView()
    let menuImage = UIImage(named: "menu")
    
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
    var buy29 = 0
    var buy30 = 0
    var buy31 = 0
    var buy32 = 0
    var buy33 = 0
    var buy34 = 0
    var buy35 = 0
    var buy36 = 0
    var buy37 = 0
    var buy38 = 0
    var buy39 = 0
    var buy40 = 0
    var buy41 = 0
    var buy42 = 0
    var buy43 = 0
    var buy44 = 0
    var buy45 = 0
    var buy46 = 0
    var buy47 = 0
    var buy48 = 0
    var buy49 = 0
    var buy50 = 0
    var buy51 = 0
    var buy52 = 0
    var buy53 = 0
    var buy54 = 0
    var buy55 = 0
    var buy56 = 0
    var buy57 = 0
    var buy58 = 0
    var buy59 = 0
    var buy60 = 0
    var buy61 = 0
    var buy62 = 0
    var buy63 = 0
    var buy64 = 0
    var buy65 = 0
    var buy66 = 0
    var buy67 = 0
    var buy68 = 0
    var buy69 = 0
    var buyArray:[Int] = []
    
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
    let favoriteButton29 = UIButton()
    let favoriteButton30 = UIButton()
    let favoriteButton31 = UIButton()
    let favoriteButton32 = UIButton()
    let favoriteButton33 = UIButton()
    let favoriteButton34 = UIButton()
    let favoriteButton35 = UIButton()
    let favoriteButton36 = UIButton()
    let favoriteButton37 = UIButton()
    let favoriteButton38 = UIButton()
    let favoriteButton39 = UIButton()
    let favoriteButton40 = UIButton()
    let favoriteButton41 = UIButton()
    let favoriteButton42 = UIButton()
    let favoriteButton43 = UIButton()
    let favoriteButton44 = UIButton()
    let favoriteButton45 = UIButton()
    let favoriteButton46 = UIButton()
    let favoriteButton47 = UIButton()
    let favoriteButton48 = UIButton()
    let favoriteButton49 = UIButton()
    let favoriteButton50 = UIButton()
    let favoriteButton51 = UIButton()
    let favoriteButton52 = UIButton()
    let favoriteButton53 = UIButton()
    let favoriteButton54 = UIButton()
    let favoriteButton55 = UIButton()
    let favoriteButton56 = UIButton()
    let favoriteButton57 = UIButton()
    let favoriteButton58 = UIButton()
    let favoriteButton59 = UIButton()
    let favoriteButton60 = UIButton()
    let favoriteButton61 = UIButton()
    let favoriteButton62 = UIButton()
    let favoriteButton63 = UIButton()
    let favoriteButton64 = UIButton()
    let favoriteButton65 = UIButton()
    let favoriteButton66 = UIButton()
    let favoriteButton67 = UIButton()
    let favoriteButton68 = UIButton()
    let favoriteButton69 = UIButton()
    
    let image1 = UIImage(named: "p.azisenramen")
    let image2 = UIImage(named: "p.paiku-men")
    let image3 = UIImage(named: "p.kuromayuramen")
    let image4 = UIImage(named: "p.zennoseramen")
    let image5 = UIImage(named: "p.tyasyumen")
    let image6 = UIImage(named: "p.syauyuramen")
    let image7 = UIImage(named: "p.misotonkoturamen")
    let image8 = UIImage(named: "p.karamisoramen")
    let image9 = UIImage(named: "p.hukkokuramen")
    let image10 = UIImage(named: "p.zeitakukiriaburitya-syumen")
    let image11 = UIImage(named: "p.pirikaranegiramen")
    let image12 = UIImage(named: "p.tukemen")
    let image13 = UIImage(named: "p.karatukemen")
    let image14 = UIImage(named: "p.taipi-en")
    let image15 = UIImage(named: "p.parisoba")
    let image16 = UIImage(named: "p.yakisoba")
    let image17 = UIImage(named: "p.tyanpon")
    let image18 = UIImage(named: "p.pirikaratyanpon")
    let image19 = UIImage(named: "p.gyozaset")
    let image20 = UIImage(named: "p.karaageset")
    let image21 = UIImage(named: "p.hantya-hanset")
    let image22 = UIImage(systemName: "camera")
    let image23 = UIImage(named: "p.ha-huset")
    let image24 = UIImage(named: "p.supesyaruset")
    let image25 = UIImage(named: "p.tya-syu-tamagodonset")
    let image26 = UIImage(named: "p.karamisotya-syu-donset")
    let image27 = UIImage(named: "p.tikinnanbanset")
    let image28 = UIImage(named: "p.manpukuset")
    let image29 = UIImage(named: "p.aburitya-syu-donset")
    let image30 = UIImage(named: "p.dxset")
    let image31 = UIImage(named: "p.no")
    let image32 = UIImage(named: "p.no")
    let image33 = UIImage(named: "p.no")
    let image34 = UIImage(named: "p.yakigyo-zaset")
    let image35 = UIImage(named: "p.karaage")
    let image36 = UIImage(named: "p.enokigyuunikumaki")
    let image37 = UIImage(named: "p.ebiharumaki")
    let image38 = UIImage(named: "p.guri-nsarada")
    let image39 = UIImage(named: "p.aburitya-syu-")
    let image40 = UIImage(named: "p.edamame")
    let image41 = UIImage(named: "p.tonsoku")
    let image42 = UIImage(named: "p.tikinnanban")
    let image43 = UIImage(named: "p.potetohurai")
    let image44 = UIImage(named: "p.no")
    let image45 = UIImage(named: "p.no")
    let image46 = UIImage(named: "p.negitappuri")
    let image47 = UIImage(named: "p.tya-syu-")
    let image48 = UIImage(named: "p.yasai")
    let image49 = UIImage(named: "p.hanzyukutamago")
    let image50 = UIImage(named: "p.paiku-")
    let image51 = UIImage(named: "p.kikurage")
    let image52 = UIImage(named: "p.moyasi")
    let image53 = UIImage(named: "p.ko-n")
    let image54 = UIImage(named: "p.no")
    let image55 = UIImage(named: "p.tya-han")
    let image56 = UIImage(named: "p.pirikaratya-han")
    let image57 = UIImage(named: "p.otonanokurotya-han")
    let image58 = UIImage(named: "p.tya-syu-tamagodon")
    let image59 = UIImage(named: "p.karamisotya-syu-don")
    let image60 = UIImage(named: "p.raisu")
    let image61 = UIImage(named: "p.onigiri")
    let image62 = UIImage(named: "p.no")
    let image63 = UIImage(named: "p.annindouhu")
    let image64 = UIImage(named: "p.u-rontya")
    let image65 = UIImage(named: "p.namabi-ru")
    let image66 = UIImage(named: "p.binbi-ru")
    let image67 = UIImage(named: "p.nonaruko-rubi-ru")
    let image68 = UIImage(named: "p.no")
    let image69 = UIImage(named: "p.no")
    
    var favoriteFremeCount = CGRect()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "メニュー"
        
        menuView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        menuView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.view.addSubview(menuView)
        
        
        button1.frame = CGRect(x: 0, y: 5, width: menuView.frame.width / 3, height: 30)
        button1.setTitle("メニュー", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 10
        button1.titleLabel?.adjustsFontSizeToFitWidth = true
        button1.addTarget(self, action: #selector(tapEvent1), for: UIControl.Event.touchUpInside)
        menuView.addSubview(button1)
        
        
        button2.frame = CGRect(x: menuView.frame.width / 3, y: 5, width: menuView.frame.width / 3, height: 30)
        button2.setTitle("おすすめメニュー", for: .normal)
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
        self.tabBarController?.selectedIndex = 0
        
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
            if data["menuNumber1"]! as! Int == 1{
                self.subNumber1 = 10
            }else{
                self.subNumber1 = 11
            }
            if data["menuNumber2"]! as! Int == 1{
                self.subNumber2 = 10
            }else{
                self.subNumber2 = 11
            }
            if data["menuNumber3"]! as! Int == 1{
                self.subNumber3 = 10
            }else{
                self.subNumber3 = 11
            }
            if data["menuNumber4"]! as! Int == 1{
                self.subNumber4 = 10
            }else{
                self.subNumber4 = 11
            }
            if data["menuNumber5"]! as! Int == 1{
                self.subNumber5 = 10
            }else{
                self.subNumber5 = 11
            }
            if data["menuNumber6"]! as! Int == 1{
                self.subNumber6 = 10
            }else{
                self.subNumber6 = 11
            }
            if data["menuNumber7"]! as! Int == 1{
                self.subNumber7 = 10
            }else{
                self.subNumber7 = 11
            }
            if data["menuNumber8"]! as! Int == 1{
                self.subNumber8 = 10
            }else{
                self.subNumber8 = 11
            }
            if data["menuNumber9"]! as! Int == 1{
                self.subNumber9 = 10
            }else{
                self.subNumber9 = 11
            }
            if data["menuNumber10"]! as! Int == 1{
                self.subNumber10 = 10
            }else{
                self.subNumber10 = 11
            }
            if data["menuNumber11"]! as! Int == 1{
                self.subNumber11 = 10
            }else{
                self.subNumber11 = 11
            }
            if data["menuNumber12"]! as! Int == 1{
                self.subNumber12 = 10
            }else{
                self.subNumber12 = 11
            }
            if data["menuNumber13"]! as! Int == 1{
                self.subNumber13 = 10
            }else{
                self.subNumber13 = 11
            }
            if data["menuNumber14"]! as! Int == 1{
                self.subNumber14 = 10
            }else{
                self.subNumber14 = 11
            }
            if data["menuNumber15"]! as! Int == 1{
                self.subNumber15 = 10
            }else{
                self.subNumber15 = 11
            }
            if data["menuNumber16"]! as! Int == 1{
                self.subNumber16 = 10
            }else{
                self.subNumber17 = 11
            }
            if data["menuNumber17"]! as! Int == 1{
                self.subNumber17 = 10
            }else{
                self.subNumber17 = 11
            }
            if data["menuNumber18"]! as! Int == 1{
                self.subNumber18 = 10
            }else{
                self.subNumber18 = 11
            }
            if data["menuNumber19"]! as! Int == 1{
                self.subNumber19 = 10
            }else{
                self.subNumber19 = 11
            }
            if data["menuNumber20"]! as! Int == 1{
                self.subNumber20 = 10
            }else{
                self.subNumber20 = 11
            }
            if data["menuNumber21"]! as! Int == 1{
                self.subNumber21 = 10
            }else{
                self.subNumber21 = 11
            }
            if data["menuNumber22"]! as! Int == 1{
                self.subNumber22 = 10
            }else{
                self.subNumber22 = 11
            }
            if data["menuNumber23"]! as! Int == 1{
                self.subNumber23 = 10
            }else{
                self.subNumber23 = 11
            }
            if data["menuNumber24"]! as! Int == 1{
                self.subNumber24 = 10
            }else{
                self.subNumber24 = 11
            }
            if data["menuNumber25"]! as! Int == 1{
                self.subNumber25 = 10
            }else{
                self.subNumber25 = 11
            }
            if data["menuNumber26"]! as! Int == 1{
                self.subNumber26 = 10
            }else{
                self.subNumber26 = 11
            }
            if data["menuNumber27"]! as! Int == 1{
                self.subNumber27 = 10
            }else{
                self.subNumber27 = 11
            }
            if data["menuNumber28"]! as! Int == 1{
                self.subNumber28 = 10
            }else{
                self.subNumber28 = 11
            }
            if data["menuNumber29"]! as! Int == 1{
                self.subNumber29 = 10
            }else{
                self.subNumber29 = 11
            }
            if data["menuNumber29"]! as! Int == 1{
                self.subNumber29 = 10
            }else{
                self.subNumber29 = 11
            }
            if data["menuNumber30"]! as! Int == 1{
                self.subNumber30 = 10
            }else{
                self.subNumber30 = 11
            }
            if data["menuNumber31"]! as! Int == 1{
                self.subNumber31 = 10
            }else{
                self.subNumber31 = 11
            }
            if data["menuNumber32"]! as! Int == 1{
                self.subNumber32 = 10
            }else{
                self.subNumber32 = 11
            }
            if data["menuNumber33"]! as! Int == 1{
                self.subNumber33 = 10
            }else{
                self.subNumber33 = 11
            }
            if data["menuNumber34"]! as! Int == 1{
                self.subNumber34 = 10
            }else{
                self.subNumber34 = 11
            }
            if data["menuNumber35"]! as! Int == 1{
                self.subNumber35 = 10
            }else{
                self.subNumber35 = 11
            }
            if data["menuNumber36"]! as! Int == 1{
                self.subNumber36 = 10
            }else{
                self.subNumber36 = 11
            }
            if data["menuNumber37"]! as! Int == 1{
                self.subNumber37 = 10
            }else{
                self.subNumber37 = 11
            }
            if data["menuNumber38"]! as! Int == 1{
                self.subNumber38 = 10
            }else{
                self.subNumber38 = 11
            }
            if data["menuNumber39"]! as! Int == 1{
                self.subNumber39 = 10
            }else{
                self.subNumber39 = 11
            }
            if data["menuNumber40"]! as! Int == 1{
                self.subNumber40 = 10
            }else{
                self.subNumber40 = 11
            }
            if data["menuNumber41"]! as! Int == 1{
                self.subNumber41 = 10
            }else{
                self.subNumber41 = 11
            }
            if data["menuNumber42"]! as! Int == 1{
                self.subNumber42 = 10
            }else{
                self.subNumber42 = 11
            }
            if data["menuNumber43"]! as! Int == 1{
                self.subNumber43 = 10
            }else{
                self.subNumber43 = 11
            }
            if data["menuNumber44"]! as! Int == 1{
                self.subNumber44 = 10
            }else{
                self.subNumber44 = 11
            }
            if data["menuNumber45"]! as! Int == 1{
                self.subNumber45 = 10
            }else{
                self.subNumber45 = 11
            }
            if data["menuNumber46"]! as! Int == 1{
                self.subNumber46 = 10
            }else{
                self.subNumber46 = 11
            }
            if data["menuNumber47"]! as! Int == 1{
                self.subNumber47 = 10
            }else{
                self.subNumber47 = 11
            }
            if data["menuNumber48"]! as! Int == 1{
                self.subNumber48 = 10
            }else{
                self.subNumber48 = 11
            }
            if data["menuNumber49"]! as! Int == 1{
                self.subNumber49 = 10
            }else{
                self.subNumber49 = 11
            }
            if data["menuNumber50"]! as! Int == 1{
                self.subNumber50 = 10
            }else{
                self.subNumber50 = 11
            }
            if data["menuNumber51"]! as! Int == 1{
                self.subNumber51 = 10
            }else{
                self.subNumber51 = 11
            }
            if data["menuNumber52"]! as! Int == 1{
                self.subNumber52 = 10
            }else{
                self.subNumber52 = 11
            }
            if data["menuNumber53"]! as! Int == 1{
                self.subNumber53 = 10
            }else{
                self.subNumber53 = 11
            }
            if data["menuNumber54"]! as! Int == 1{
                self.subNumber54 = 10
            }else{
                self.subNumber54 = 11
            }
            if data["menuNumber55"]! as! Int == 1{
                self.subNumber55 = 10
            }else{
                self.subNumber55 = 11
            }
            if data["menuNumber56"]! as! Int == 1{
                self.subNumber56 = 10
            }else{
                self.subNumber56 = 11
            }
            if data["menuNumber57"]! as! Int == 1{
                self.subNumber57 = 10
            }else{
                self.subNumber57 = 11
            }
            if data["menuNumber58"]! as! Int == 1{
                self.subNumber58 = 10
            }else{
                self.subNumber58 = 11
            }
            if data["menuNumber59"]! as! Int == 1{
                self.subNumber59 = 10
            }else{
                self.subNumber59 = 11
            }
            if data["menuNumber60"]! as! Int == 1{
                self.subNumber60 = 10
            }else{
                self.subNumber60 = 11
            }
            if data["menuNumber61"]! as! Int == 1{
                self.subNumber61 = 10
            }else{
                self.subNumber61 = 11
            }
            if data["menuNumber62"]! as! Int == 1{
                self.subNumber62 = 10
            }else{
                self.subNumber62 = 11
            }
            if data["menuNumber63"]! as! Int == 1{
                self.subNumber63 = 10
            }else{
                self.subNumber63 = 11
            }
            if data["menuNumber64"]! as! Int == 1{
                self.subNumber64 = 10
            }else{
                self.subNumber64 = 11
            }
            if data["menuNumber65"]! as! Int == 1{
                self.subNumber65 = 10
            }else{
                self.subNumber65 = 11
            }
            if data["menuNumber66"]! as! Int == 1{
                self.subNumber66 = 10
            }else{
                self.subNumber66 = 11
            }
            if data["menuNumber67"]! as! Int == 1{
                self.subNumber67 = 10
            }else{
                self.subNumber67 = 11
            }
            if data["menuNumber68"]! as! Int == 1{
                self.subNumber68 = 10
            }else{
                self.subNumber68 = 11
            }
            if data["menuNumber69"]! as! Int == 1{
                self.subNumber69 = 10
            }else{
                self.subNumber69 = 11
            }

            
            self.buy1 = Int(data["menuNumber1"]as! Int)
            self.buy2 = Int(data["menuNumber2"] as! Int)
            self.buy3 = Int(data["menuNumber3"] as! Int)
            self.buy4 = Int(data["menuNumber4"] as! Int)
            self.buy5 = Int(data["menuNumber5"] as! Int)
            self.buy6 = Int(data["menuNumber6"] as! Int)
            self.buy7 = Int(data["menuNumber7"] as! Int)
            self.buy8 = Int(data["menuNumber8"] as! Int)
            self.buy9 = Int(data["menuNumber9"] as! Int)
            self.buy10 = Int(data["menuNumber10"] as! Int)
            self.buy11 = Int(data["menuNumber11"] as! Int)
            self.buy12 = Int(data["menuNumber12"] as! Int)
            self.buy13 = Int(data["menuNumber13"] as! Int)
            self.buy14 = Int(data["menuNumber14"] as! Int)
            self.buy15 = Int(data["menuNumber15"] as! Int)
            self.buy16 = Int(data["menuNumber16"] as! Int)
            self.buy17 = Int(data["menuNumber17"] as! Int)
            self.buy18 = Int(data["menuNumber18"] as! Int)
            self.buy19 = Int(data["menuNumber19"] as! Int)
            self.buy20 = Int(data["menuNumber20"] as! Int)
            self.buy21 = Int(data["menuNumber21"] as! Int)
            self.buy22 = Int(data["menuNumber22"] as! Int)
            self.buy23 = Int(data["menuNumber23"] as! Int)
            self.buy24 = Int(data["menuNumber24"] as! Int)
            self.buy25 = Int(data["menuNumber25"] as! Int)
            self.buy26 = Int(data["menuNumber26"] as! Int)
            self.buy27 = Int(data["menuNumber27"] as! Int)
            self.buy28 = Int(data["menuNumber28"] as! Int)
            self.buy29 = Int(data["menuNumber29"]as! Int)
            self.buy30 = Int(data["menuNumber30"] as! Int)
            self.buy31 = Int(data["menuNumber31"] as! Int)
            self.buy32 = Int(data["menuNumber32"] as! Int)
            self.buy33 = Int(data["menuNumber33"] as! Int)
            self.buy34 = Int(data["menuNumber34"] as! Int)
            self.buy35 = Int(data["menuNumber35"] as! Int)
            self.buy36 = Int(data["menuNumber36"] as! Int)
            self.buy37 = Int(data["menuNumber37"] as! Int)
            self.buy38 = Int(data["menuNumber38"] as! Int)
            self.buy39 = Int(data["menuNumber39"] as! Int)
            self.buy40 = Int(data["menuNumber40"] as! Int)
            self.buy41 = Int(data["menuNumber41"] as! Int)
            self.buy42 = Int(data["menuNumber42"] as! Int)
            self.buy43 = Int(data["menuNumber43"] as! Int)
            self.buy44 = Int(data["menuNumber44"] as! Int)
            self.buy45 = Int(data["menuNumber45"] as! Int)
            self.buy46 = Int(data["menuNumber46"] as! Int)
            self.buy47 = Int(data["menuNumber47"] as! Int)
            self.buy48 = Int(data["menuNumber48"] as! Int)
            self.buy49 = Int(data["menuNumber49"] as! Int)
            self.buy50 = Int(data["menuNumber50"] as! Int)
            self.buy51 = Int(data["menuNumber51"] as! Int)
            self.buy52 = Int(data["menuNumber52"] as! Int)
            self.buy53 = Int(data["menuNumber53"] as! Int)
            self.buy54 = Int(data["menuNumber54"] as! Int)
            self.buy55 = Int(data["menuNumber55"] as! Int)
            self.buy56 = Int(data["menuNumber56"] as! Int)
            self.buy57 = Int(data["menuNumber57"] as! Int)
            self.buy58 = Int(data["menuNumber58"] as! Int)
            self.buy59 = Int(data["menuNumber59"] as! Int)
            self.buy60 = Int(data["menuNumber60"] as! Int)
            self.buy61 = Int(data["menuNumber61"] as! Int)
            self.buy62 = Int(data["menuNumber62"] as! Int)
            self.buy63 = Int(data["menuNumber63"] as! Int)
            self.buy64 = Int(data["menuNumber64"] as! Int)
            self.buy65 = Int(data["menuNumber65"] as! Int)
            self.buy66 = Int(data["menuNumber66"] as! Int)
            self.buy67 = Int(data["menuNumber67"] as! Int)
            self.buy68 = Int(data["menuNumber68"] as! Int)
            self.buy69 = Int(data["menuNumber69"] as! Int)
            
            
            
            if self.buy1 + self.buy2 + self.buy3 + self.buy4 + self.buy5 + self.buy6 + self.buy7 + self.buy8 + self.buy9 + self.buy10 + self.buy11 + self.buy12 + self.buy13 + self.buy14 + self.buy15 + self.buy16 + self.buy17 + self.buy18 + self.buy19 + self.buy20 + self.buy21 + self.buy22 + self.buy23 + self.buy24 + self.buy25 + self.buy26 + self.buy27 + self.buy28 + self.buy29 + self.buy30 + self.buy31 + self.buy32 + self.buy33 + self.buy34 + self.buy35 + self.buy36 + self.buy37 + self.buy38 + self.buy39 + self.buy40 + self.buy41 + self.buy42 + self.buy43 + self.buy44 + self.buy45 + self.buy46 + self.buy47 + self.buy48 + self.buy49 + self.buy50 + self.buy51 + self.buy52 + self.buy53 + self.buy54 + self.buy55 + self.buy56 + self.buy57 + self.buy58 + self.buy59 + self.buy60 + self.buy61 + self.buy62 + self.buy63 + self.buy64 + self.buy65 + self.buy66 + self.buy67 + self.buy68 + self.buy69 == 0{
                
                
                
                self.imageView1.image = self.image
                self.imageView1.frame = CGRect(x: 0, y: 60, width: self.width, height: 200)
                self.imageView1.tintColor = .systemGray2
                self.view.addSubview(self.imageView1)
                
                self.label1.text = "アイテムはありません。"
                self.label1.textAlignment = NSTextAlignment.center
                self.label1.frame = CGRect(x: 0, y: 280, width: self.width, height: 20)
                self.view.addSubview(self.label1)
                
                
                
            }else{
                
                self.scrollView.frame = CGRect(x: 0, y: 40, width: self.width, height: 46150)
                self.scrollView.contentSize = CGSize(width: self.scrollView.frame.width, height: 50000)
                self.view.addSubview(self.scrollView)
                
                self.menuImageView.frame = CGRect(x: 0, y: 0, width: self.width, height: 130)
                self.menuImageView.image = self.menuImage
                self.scrollView.addSubview(self.menuImageView)
                
                if self.buy1 == 1{
                    self.buyArray += [self.buy1]
                    
                    self.favoriteButton1.frame = self.favoriteFrame()
                    self.favoriteButton1.setImage(self.image1, for: .normal)
                    self.favoriteButton1.titleLabel?.numberOfLines = 0
                    self.favoriteButton1.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton1.setTitle("味千ラーメン\n670", for: .normal)
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
                    self.favoriteButton2.setTitle("パイクー麺\n900", for: .normal)
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
                    self.favoriteButton3.setTitle("黒マー油ラーメン\n850", for: .normal)
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
                    self.favoriteButton4.setTitle("全のせラーメン\n1290", for: .normal)
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
                    self.favoriteButton5.setTitle("チャーシュー麵\n1100", for: .normal)
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
                    self.favoriteButton6.setTitle("醤油ラーメン\n790", for: .normal)
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
                    self.favoriteButton7.setTitle("味噌豚骨ラーメン\n790", for: .normal)
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
                    self.favoriteButton8.setTitle("辛みそラーメン\n820", for: .normal)
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
                    self.favoriteButton9.setTitle("復刻ラーメン昭和味\n790", for: .normal)
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
                    self.favoriteButton10.setTitle("贅沢切り炙り\nチャーシュー麵\n1200", for: .normal)
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
                    self.favoriteButton11.setTitle("ピリ辛ネギラーメン\n800", for: .normal)
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
                    self.favoriteButton12.setTitle("つけ麵\n940", for: .normal)
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
                    self.favoriteButton13.setTitle("辛つけ麵\n960", for: .normal)
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
                    self.favoriteButton14.setTitle("太平燕\n880", for: .normal)
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
                    self.favoriteButton15.setTitle("パリそば\n840", for: .normal)
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
                    self.favoriteButton16.setTitle("焼きそば\n820", for: .normal)
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
                    self.favoriteButton17.setTitle("ちゃんぽん\n880", for: .normal)
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
                    self.favoriteButton18.setTitle("ピリ辛ちゃんぽん\n900", for: .normal)
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
                    self.favoriteButton19.setTitle("ギョーザセット", for: .normal)
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
                    self.favoriteButton20.setTitle("唐揚げセット", for: .normal)
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
                    self.favoriteButton21.setTitle("半チャーハンセット", for: .normal)
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
                    self.favoriteButton22.setTitle("月替わりセット", for: .normal)
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
                    self.favoriteButton23.setTitle("ハーフセット", for: .normal)
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
                    self.favoriteButton24.setTitle("スペシャルセット", for: .normal)
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
                    self.favoriteButton25.setTitle("チャーシュー玉子丼セット", for: .normal)
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
                    self.favoriteButton26.setTitle("辛みそチャーシュー丼セット", for: .normal)
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
                    self.favoriteButton27.setTitle("チキン南蛮セット", for: .normal)
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
                    self.favoriteButton28.setTitle("満腹セット", for: .normal)
                    self.favoriteButton28.setTitleColor(.black, for: .normal)
                    self.favoriteButton28.addTarget(self, action: #selector(self.tapEvents28), for: .touchUpInside)
                    self.favoriteButton28.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton28.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton28.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton28.frame.width - self.favoriteButton28.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton28)
                }
                if self.buy29 == 1{
                    self.buyArray += [self.buy29]
                    self.favoriteButton29.frame = self.favoriteFrame()
                    self.favoriteButton29.setImage(self.image29, for: .normal)
                    self.favoriteButton29.titleLabel?.numberOfLines = 0
                    self.favoriteButton29.titleLabel?.textAlignment = NSTextAlignment.center
                    self.favoriteButton29.setTitle("炙りチャーシュー丼セット", for: .normal)
                    self.favoriteButton29.setTitleColor(.black, for: .normal)
                    self.favoriteButton29.addTarget(self, action: #selector(self.tapEvents29), for: .touchUpInside)
                    self.favoriteButton29.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton29.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton29.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton29.frame.width - self.favoriteButton29.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton29)
                }
                if self.buy30 == 1{
                    self.buyArray += [self.buy30]
                    self.favoriteButton30.frame = self.favoriteFrame()
                    self.favoriteButton30.setImage(self.image30, for: .normal)
                    self.favoriteButton30.titleLabel?.numberOfLines = 0
                    self.favoriteButton30.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton30.setTitle("DXセット", for: .normal)
                    self.favoriteButton30.setTitleColor(.black, for: .normal)
                    self.favoriteButton30.addTarget(self, action: #selector(self.tapEvents30), for: .touchUpInside)
                    self.favoriteButton30.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton30.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton30.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton30.frame.width - self.favoriteButton30.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton30)
                }
                if self.buy31 == 1{
                    self.buyArray += [self.buy31]
                    self.favoriteButton31.frame = self.favoriteFrame()
                    self.favoriteButton31.setImage(self.image31, for: .normal)
                    self.favoriteButton31.titleLabel?.numberOfLines = 0
                    self.favoriteButton31.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton31.setTitle("馬丼セット", for: .normal)
                    self.favoriteButton31.setTitleColor(.black, for: .normal)
                    self.favoriteButton31.addTarget(self, action: #selector(self.tapEvents31), for: .touchUpInside)
                    self.favoriteButton31.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton31.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton31.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton31.frame.width - self.favoriteButton31.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton31)
                }
                if self.buy32 == 1{
                    self.buyArray += [self.buy32]
                    self.favoriteButton32.frame = self.favoriteFrame()
                    self.favoriteButton32.setImage(self.image32, for: .normal)
                    self.favoriteButton32.titleLabel?.numberOfLines = 0
                    self.favoriteButton32.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton32.setTitle("ラーメンkids", for: .normal)
                    self.favoriteButton32.setTitleColor(.black, for: .normal)
                    self.favoriteButton32.addTarget(self, action: #selector(self.tapEvents32), for: .touchUpInside)
                    self.favoriteButton32.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton32.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton32.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton32.frame.width - self.favoriteButton32.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton32)
                }
                if self.buy33 == 1{
                    self.buyArray += [self.buy33]
                    self.favoriteButton33.frame = self.favoriteFrame()
                    self.favoriteButton33.setImage(self.image33, for: .normal)
                    self.favoriteButton33.titleLabel?.numberOfLines = 0
                    self.favoriteButton33.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton33.setTitle("ラーメンJr.", for: .normal)
                    self.favoriteButton33.setTitleColor(.black, for: .normal)
                    self.favoriteButton33.addTarget(self, action: #selector(self.tapEvents33), for: .touchUpInside)
                    self.favoriteButton33.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton33.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton33.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton33.frame.width - self.favoriteButton33.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton33)
                }
                if self.buy34 == 1{
                    self.buyArray += [self.buy34]
                    self.favoriteButton34.frame = self.favoriteFrame()
                    self.favoriteButton34.setImage(self.image34, for: .normal)
                    self.favoriteButton34.titleLabel?.numberOfLines = 0
                    self.favoriteButton34.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton34.setTitle("焼きギョーザ", for: .normal)
                    self.favoriteButton34.setTitleColor(.black, for: .normal)
                    self.favoriteButton34.addTarget(self, action: #selector(self.tapEvents34), for: .touchUpInside)
                    self.favoriteButton34.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton34.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton34.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton34.frame.width - self.favoriteButton34.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton34)
                }
                if self.buy35 == 1{
                    self.buyArray += [self.buy35]
                    self.favoriteButton35.frame = self.favoriteFrame()
                    self.favoriteButton35.setImage(self.image35, for: .normal)
                    self.favoriteButton35.titleLabel?.numberOfLines = 0
                    self.favoriteButton35.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton35.setTitle("唐揚げ５個入り", for: .normal)
                    self.favoriteButton35.setTitleColor(.black, for: .normal)
                    self.favoriteButton35.addTarget(self, action: #selector(self.tapEvents35), for: .touchUpInside)
                    self.favoriteButton35.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton35.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton35.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton35.frame.width - self.favoriteButton35.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton35)
                }
                if self.buy36 == 1{
                    self.buyArray += [self.buy36]
                    self.favoriteButton36.frame = self.favoriteFrame()
                    self.favoriteButton36.setImage(self.image36, for: .normal)
                    self.favoriteButton36.titleLabel?.numberOfLines = 0
                    self.favoriteButton36.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton36.setTitle("えのき牛肉巻き", for: .normal)
                    self.favoriteButton36.setTitleColor(.black, for: .normal)
                    self.favoriteButton36.addTarget(self, action: #selector(self.tapEvents36), for: .touchUpInside)
                    self.favoriteButton36.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton36.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton36.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton36.frame.width - self.favoriteButton36.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton36)
                }
                if self.buy37 == 1{
                    self.buyArray += [self.buy37]
                    self.favoriteButton37.frame = self.favoriteFrame()
                    self.favoriteButton37.setImage(self.image37, for: .normal)
                    self.favoriteButton37.titleLabel?.numberOfLines = 0
                    self.favoriteButton37.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton37.setTitle("エビ春巻き１本", for: .normal)
                    self.favoriteButton37.setTitleColor(.black, for: .normal)
                    self.favoriteButton37.addTarget(self, action: #selector(self.tapEvents37), for: .touchUpInside)
                    self.favoriteButton37.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton37.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton37.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton37.frame.width - self.favoriteButton37.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton37)
                }
                if self.buy38 == 1{
                    self.buyArray += [self.buy38]
                    self.favoriteButton38.frame = self.favoriteFrame()
                    self.favoriteButton38.setImage(self.image38, for: .normal)
                    self.favoriteButton38.titleLabel?.numberOfLines = 0
                    self.favoriteButton38.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton38.setTitle("グリーンサラダ", for: .normal)
                    self.favoriteButton38.setTitleColor(.black, for: .normal)
                    self.favoriteButton38.addTarget(self, action: #selector(self.tapEvents38), for: .touchUpInside)
                    self.favoriteButton38.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton38.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton38.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton38.frame.width - self.favoriteButton38.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton38)
                }
                if self.buy39 == 1{
                    self.buyArray += [self.buy39]
                    self.favoriteButton39.frame = self.favoriteFrame()
                    self.favoriteButton39.setImage(self.image39, for: .normal)
                    self.favoriteButton39.titleLabel?.numberOfLines = 0
                    self.favoriteButton39.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton39.setTitle("炙りチャーシュー", for: .normal)
                    self.favoriteButton39.setTitleColor(.black, for: .normal)
                    self.favoriteButton39.addTarget(self, action: #selector(self.tapEvents39), for: .touchUpInside)
                    self.favoriteButton39.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton39.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton39.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton39.frame.width - self.favoriteButton39.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton39)
                }
                if self.buy40 == 1{
                    self.buyArray += [self.buy40]
                    self.favoriteButton40.frame = self.favoriteFrame()
                    self.favoriteButton40.setImage(self.image40, for: .normal)
                    self.favoriteButton40.titleLabel?.numberOfLines = 0
                    self.favoriteButton40.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton40.setTitle("枝豆", for: .normal)
                    self.favoriteButton40.setTitleColor(.black, for: .normal)
                    self.favoriteButton40.addTarget(self, action: #selector(self.tapEvents40), for: .touchUpInside)
                    self.favoriteButton40.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton40.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton40.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton40.frame.width - self.favoriteButton40.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton40)
                }
                if self.buy41 == 1{
                    self.buyArray += [self.buy41]
                    self.favoriteButton41.frame = self.favoriteFrame()
                    self.favoriteButton41.setImage(self.image41, for: .normal)
                    self.favoriteButton41.titleLabel?.numberOfLines = 0
                    self.favoriteButton41.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton41.setTitle("豚足", for: .normal)
                    self.favoriteButton41.setTitleColor(.black, for: .normal)
                    self.favoriteButton41.addTarget(self, action: #selector(self.tapEvents41), for: .touchUpInside)
                    self.favoriteButton41.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton41.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton41.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton41.frame.width - self.favoriteButton41.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton41)
                }
                if self.buy42 == 1{
                    self.buyArray += [self.buy42]
                    self.favoriteButton42.frame = self.favoriteFrame()
                    self.favoriteButton42.setImage(self.image42, for: .normal)
                    self.favoriteButton42.titleLabel?.numberOfLines = 0
                    self.favoriteButton42.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton42.setTitle("チキン南蛮", for: .normal)
                    self.favoriteButton42.setTitleColor(.black, for: .normal)
                    self.favoriteButton42.addTarget(self, action: #selector(self.tapEvents42), for: .touchUpInside)
                    self.favoriteButton42.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton42.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton42.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton42.frame.width - self.favoriteButton42.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton42)
                }
                if self.buy43 == 1{
                    self.buyArray += [self.buy43]
                    self.favoriteButton43.frame = self.favoriteFrame()
                    self.favoriteButton43.setImage(self.image43, for: .normal)
                    self.favoriteButton43.titleLabel?.numberOfLines = 0
                    self.favoriteButton43.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton43.setTitle("ポテトフライ", for: .normal)
                    self.favoriteButton43.setTitleColor(.black, for: .normal)
                    self.favoriteButton43.addTarget(self, action: #selector(self.tapEvents43), for: .touchUpInside)
                    self.favoriteButton43.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton43.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton43.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton43.frame.width - self.favoriteButton43.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton43)
                }
                if self.buy44 == 1{
                    self.buyArray += [self.buy44]
                    self.favoriteButton44.frame = self.favoriteFrame()
                    self.favoriteButton44.setImage(self.image44, for: .normal)
                    self.favoriteButton44.titleLabel?.numberOfLines = 0
                    self.favoriteButton44.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton44.setTitle("ちょい飲みセットA", for: .normal)
                    self.favoriteButton44.setTitleColor(.black, for: .normal)
                    self.favoriteButton44.addTarget(self, action: #selector(self.tapEvents44), for: .touchUpInside)
                    self.favoriteButton44.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton44.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton44.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton44.frame.width - self.favoriteButton44.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton44)
                }
                if self.buy45 == 1{
                    self.buyArray += [self.buy45]
                    self.favoriteButton45.frame = self.favoriteFrame()
                    self.favoriteButton45.setImage(self.image45, for: .normal)
                    self.favoriteButton45.titleLabel?.numberOfLines = 0
                    self.favoriteButton45.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton45.setTitle("ちょい飲みセットB", for: .normal)
                    self.favoriteButton45.setTitleColor(.black, for: .normal)
                    self.favoriteButton45.addTarget(self, action: #selector(self.tapEvents45), for: .touchUpInside)
                    self.favoriteButton45.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton45.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton45.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton45.frame.width - self.favoriteButton45.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton45)
                }
                if self.buy46 == 1{
                    self.buyArray += [self.buy46]
                    self.favoriteButton46.frame = self.favoriteFrame()
                    self.favoriteButton46.setImage(self.image46, for: .normal)
                    self.favoriteButton46.titleLabel?.numberOfLines = 0
                    self.favoriteButton46.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton46.setTitle("ネギたっぷり", for: .normal)
                    self.favoriteButton46.setTitleColor(.black, for: .normal)
                    self.favoriteButton46.addTarget(self, action: #selector(self.tapEvents46), for: .touchUpInside)
                    self.favoriteButton46.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton46.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton46.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton46.frame.width - self.favoriteButton46.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton46)
                }
                if self.buy47 == 1{
                    self.buyArray += [self.buy47]
                    self.favoriteButton47.frame = self.favoriteFrame()
                    self.favoriteButton47.setImage(self.image47, for: .normal)
                    self.favoriteButton47.titleLabel?.numberOfLines = 0
                    self.favoriteButton47.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton47.setTitle("チャーシュー", for: .normal)
                    self.favoriteButton47.setTitleColor(.black, for: .normal)
                    self.favoriteButton47.addTarget(self, action: #selector(self.tapEvents47), for: .touchUpInside)
                    self.favoriteButton47.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton47.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton47.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton47.frame.width - self.favoriteButton47.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton47)
                }
                if self.buy48 == 1{
                    self.buyArray += [self.buy48]
                    self.favoriteButton48.frame = self.favoriteFrame()
                    self.favoriteButton48.setImage(self.image48, for: .normal)
                    self.favoriteButton48.titleLabel?.numberOfLines = 0
                    self.favoriteButton48.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton48.setTitle("野菜", for: .normal)
                    self.favoriteButton48.setTitleColor(.black, for: .normal)
                    self.favoriteButton48.addTarget(self, action: #selector(self.tapEvents48), for: .touchUpInside)
                    self.favoriteButton48.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton48.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton48.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton48.frame.width - self.favoriteButton48.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton48)
                }
                if self.buy49 == 1{
                    self.buyArray += [self.buy49]
                    self.favoriteButton49.frame = self.favoriteFrame()
                    self.favoriteButton49.setImage(self.image49, for: .normal)
                    self.favoriteButton49.titleLabel?.numberOfLines = 0
                    self.favoriteButton49.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton49.setTitle("半熟玉子", for: .normal)
                    self.favoriteButton49.setTitleColor(.black, for: .normal)
                    self.favoriteButton49.addTarget(self, action: #selector(self.tapEvents49), for: .touchUpInside)
                    self.favoriteButton49.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton49.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton49.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton49.frame.width - self.favoriteButton49.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton49)
                }
                if self.buy50 == 1{
                    self.buyArray += [self.buy50]
                    self.favoriteButton50.frame = self.favoriteFrame()
                    self.favoriteButton50.setImage(self.image50, for: .normal)
                    self.favoriteButton50.titleLabel?.numberOfLines = 0
                    self.favoriteButton50.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton50.setTitle("パイクー(2個)", for: .normal)
                    self.favoriteButton50.setTitleColor(.black, for: .normal)
                    self.favoriteButton50.addTarget(self, action: #selector(self.tapEvents50), for: .touchUpInside)
                    self.favoriteButton50.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton50.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton50.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton50.frame.width - self.favoriteButton50.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton50)
                }
                if self.buy51 == 1{
                    self.buyArray += [self.buy51]
                    self.favoriteButton51.frame = self.favoriteFrame()
                    self.favoriteButton51.setImage(self.image51, for: .normal)
                    self.favoriteButton51.titleLabel?.numberOfLines = 0
                    self.favoriteButton51.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton51.setTitle("木耳", for: .normal)
                    self.favoriteButton51.setTitleColor(.black, for: .normal)
                    self.favoriteButton51.addTarget(self, action: #selector(self.tapEvents51), for: .touchUpInside)
                    self.favoriteButton51.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton51.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton51.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton51.frame.width - self.favoriteButton51.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton51)
                }
                if self.buy52 == 1{
                    self.buyArray += [self.buy52]
                    self.favoriteButton52.frame = self.favoriteFrame()
                    self.favoriteButton52.setImage(self.image52, for: .normal)
                    self.favoriteButton52.titleLabel?.numberOfLines = 0
                    self.favoriteButton52.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton52.setTitle("もやし", for: .normal)
                    self.favoriteButton52.setTitleColor(.black, for: .normal)
                    self.favoriteButton52.addTarget(self, action: #selector(self.tapEvents52), for: .touchUpInside)
                    self.favoriteButton52.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton52.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton52.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton52.frame.width - self.favoriteButton52.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton52)
                }
                if self.buy53 == 1{
                    self.buyArray += [self.buy53]
                    self.favoriteButton53.frame = self.favoriteFrame()
                    self.favoriteButton53.setImage(self.image53, for: .normal)
                    self.favoriteButton53.titleLabel?.numberOfLines = 0
                    self.favoriteButton53.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton53.setTitle("コーン", for: .normal)
                    self.favoriteButton53.setTitleColor(.black, for: .normal)
                    self.favoriteButton53.addTarget(self, action: #selector(self.tapEvents53), for: .touchUpInside)
                    self.favoriteButton53.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton53.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton53.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton53.frame.width - self.favoriteButton53.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton53)
                }
                if self.buy54 == 1{
                    self.buyArray += [self.buy54]
                    self.favoriteButton54.frame = self.favoriteFrame()
                    self.favoriteButton54.setImage(self.image54, for: .normal)
                    self.favoriteButton54.titleLabel?.numberOfLines = 0
                    self.favoriteButton54.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton54.setTitle("メンマ", for: .normal)
                    self.favoriteButton54.setTitleColor(.black, for: .normal)
                    self.favoriteButton54.addTarget(self, action: #selector(self.tapEvents54), for: .touchUpInside)
                    self.favoriteButton54.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton54.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton54.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton54.frame.width - self.favoriteButton54.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton54)
                }
                if self.buy55 == 1{
                    self.buyArray += [self.buy55]
                    self.favoriteButton55.frame = self.favoriteFrame()
                    self.favoriteButton55.setImage(self.image55, for: .normal)
                    self.favoriteButton55.titleLabel?.numberOfLines = 0
                    self.favoriteButton55.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton55.setTitle("チャーハン(スープ付き)", for: .normal)
                    self.favoriteButton55.setTitleColor(.black, for: .normal)
                    self.favoriteButton55.addTarget(self, action: #selector(self.tapEvents55), for: .touchUpInside)
                    self.favoriteButton55.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton55.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton55.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton55.frame.width - self.favoriteButton55.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton55)
                }
                if self.buy56 == 1{
                    self.buyArray += [self.buy56]
                    self.favoriteButton56.frame = self.favoriteFrame()
                    self.favoriteButton56.setImage(self.image56, for: .normal)
                    self.favoriteButton56.titleLabel?.numberOfLines = 0
                    self.favoriteButton56.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton56.setTitle("ピリ辛チャーハン(スープ付き)", for: .normal)
                    self.favoriteButton56.setTitleColor(.black, for: .normal)
                    self.favoriteButton56.addTarget(self, action: #selector(self.tapEvents56), for: .touchUpInside)
                    self.favoriteButton56.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton56.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton56.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton56.frame.width - self.favoriteButton56.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton56)
                }
                if self.buy57 == 1{
                    self.buyArray += [self.buy57]
                    self.favoriteButton57.frame = self.favoriteFrame()
                    self.favoriteButton57.setImage(self.image57, for: .normal)
                    self.favoriteButton57.titleLabel?.numberOfLines = 0
                    self.favoriteButton57.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton57.setTitle("大人の黒チャーハン(スープ付き)", for: .normal)
                    self.favoriteButton57.setTitleColor(.black, for: .normal)
                    self.favoriteButton57.addTarget(self, action: #selector(self.tapEvents57), for: .touchUpInside)
                    self.favoriteButton57.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton57.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton57.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton57.frame.width - self.favoriteButton57.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton57)
                }
                if self.buy58 == 1{
                    self.buyArray += [self.buy58]
                    self.favoriteButton58.frame = self.favoriteFrame()
                    self.favoriteButton58.setImage(self.image58, for: .normal)
                    self.favoriteButton58.titleLabel?.numberOfLines = 0
                    self.favoriteButton58.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton58.setTitle("チャーシュー玉子丼", for: .normal)
                    self.favoriteButton58.setTitleColor(.black, for: .normal)
                    self.favoriteButton58.addTarget(self, action: #selector(self.tapEvents58), for: .touchUpInside)
                    self.favoriteButton58.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton58.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton58.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton58.frame.width - self.favoriteButton58.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton58)
                }
                if self.buy59 == 1{
                    self.buyArray += [self.buy59]
                    self.favoriteButton59.frame = self.favoriteFrame()
                    self.favoriteButton59.setImage(self.image59, for: .normal)
                    self.favoriteButton59.titleLabel?.numberOfLines = 0
                    self.favoriteButton59.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton59.setTitle("辛みそチャーシュー丼", for: .normal)
                    self.favoriteButton59.setTitleColor(.black, for: .normal)
                    self.favoriteButton59.addTarget(self, action: #selector(self.tapEvents59), for: .touchUpInside)
                    self.favoriteButton59.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton59.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton59.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton59.frame.width - self.favoriteButton59.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton59)
                }
                if self.buy60 == 1{
                    self.buyArray += [self.buy60]
                    self.favoriteButton60.frame = self.favoriteFrame()
                    self.favoriteButton60.setImage(self.image60, for: .normal)
                    self.favoriteButton60.titleLabel?.numberOfLines = 0
                    self.favoriteButton60.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton60.setTitle("ライス", for: .normal)
                    self.favoriteButton60.setTitleColor(.black, for: .normal)
                    self.favoriteButton60.addTarget(self, action: #selector(self.tapEvents60), for: .touchUpInside)
                    self.favoriteButton60.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton60.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton60.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton60.frame.width - self.favoriteButton60.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton60)
                }
                if self.buy61 == 1{
                    self.buyArray += [self.buy61]
                    self.favoriteButton61.frame = self.favoriteFrame()
                    self.favoriteButton61.setImage(self.image61, for: .normal)
                    self.favoriteButton61.titleLabel?.numberOfLines = 0
                    self.favoriteButton61.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton61.setTitle("おにぎり", for: .normal)
                    self.favoriteButton61.setTitleColor(.black, for: .normal)
                    self.favoriteButton61.addTarget(self, action: #selector(self.tapEvents61), for: .touchUpInside)
                    self.favoriteButton61.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton61.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton61.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton61.frame.width - self.favoriteButton61.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton61)
                }
                if self.buy62 == 1{
                    self.buyArray += [self.buy62]
                    self.favoriteButton62.frame = self.favoriteFrame()
                    self.favoriteButton62.setImage(self.image62, for: .normal)
                    self.favoriteButton62.titleLabel?.numberOfLines = 0
                    self.favoriteButton62.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton62.setTitle("馬丼", for: .normal)
                    self.favoriteButton62.setTitleColor(.black, for: .normal)
                    self.favoriteButton62.addTarget(self, action: #selector(self.tapEvents62), for: .touchUpInside)
                    self.favoriteButton62.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton62.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton62.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton62.frame.width - self.favoriteButton62.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton62)
                }
                if self.buy63 == 1{
                    self.buyArray += [self.buy63]
                    self.favoriteButton63.frame = self.favoriteFrame()
                    self.favoriteButton63.setImage(self.image63, for: .normal)
                    self.favoriteButton63.titleLabel?.numberOfLines = 0
                    self.favoriteButton63.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton63.setTitle("杏仁豆腐", for: .normal)
                    self.favoriteButton63.setTitleColor(.black, for: .normal)
                    self.favoriteButton63.addTarget(self, action: #selector(self.tapEvents63), for: .touchUpInside)
                    self.favoriteButton63.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton63.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton63.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton63.frame.width - self.favoriteButton63.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton63)
                }
                if self.buy64 == 1{
                    self.buyArray += [self.buy64]
                    self.favoriteButton64.frame = self.favoriteFrame()
                    self.favoriteButton64.setImage(self.image64, for: .normal)
                    self.favoriteButton64.titleLabel?.numberOfLines = 0
                    self.favoriteButton64.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton64.setTitle("ウーロン茶", for: .normal)
                    self.favoriteButton64.setTitleColor(.black, for: .normal)
                    self.favoriteButton64.addTarget(self, action: #selector(self.tapEvents64), for: .touchUpInside)
                    self.favoriteButton64.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton64.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton64.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton64.frame.width - self.favoriteButton64.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton64)
                }
                if self.buy65 == 1{
                    self.buyArray += [self.buy65]
                    self.favoriteButton65.frame = self.favoriteFrame()
                    self.favoriteButton65.setImage(self.image65, for: .normal)
                    self.favoriteButton65.titleLabel?.numberOfLines = 0
                    self.favoriteButton65.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton65.setTitle("生ビール(中)", for: .normal)
                    self.favoriteButton65.setTitleColor(.black, for: .normal)
                    self.favoriteButton65.addTarget(self, action: #selector(self.tapEvents65), for: .touchUpInside)
                    self.favoriteButton65.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton65.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton65.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton65.frame.width - self.favoriteButton65.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton65)
                }
                if self.buy66 == 1{
                    self.buyArray += [self.buy66]
                    self.favoriteButton66.frame = self.favoriteFrame()
                    self.favoriteButton66.setImage(self.image66, for: .normal)
                    self.favoriteButton66.titleLabel?.numberOfLines = 0
                    self.favoriteButton66.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton66.setTitle("瓶ビール(中瓶)", for: .normal)
                    self.favoriteButton66.setTitleColor(.black, for: .normal)
                    self.favoriteButton66.addTarget(self, action: #selector(self.tapEvents60), for: .touchUpInside)
                    self.favoriteButton66.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton66.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton66.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton66.frame.width - self.favoriteButton66.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton66)
                }
                if self.buy67 == 1{
                    self.buyArray += [self.buy67]
                    self.favoriteButton67.frame = self.favoriteFrame()
                    self.favoriteButton67.setImage(self.image67, for: .normal)
                    self.favoriteButton67.titleLabel?.numberOfLines = 0
                    self.favoriteButton67.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton67.setTitle("ノンアルコールビール(小瓶)", for: .normal)
                    self.favoriteButton67.setTitleColor(.black, for: .normal)
                    self.favoriteButton67.addTarget(self, action: #selector(self.tapEvents67), for: .touchUpInside)
                    self.favoriteButton67.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton67.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton67.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton67.frame.width - self.favoriteButton67.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton67)
                }
                if self.buy68 == 1{
                    self.buyArray += [self.buy68]
                    self.favoriteButton68.frame = self.favoriteFrame()
                    self.favoriteButton68.setImage(self.image68, for: .normal)
                    self.favoriteButton68.titleLabel?.numberOfLines = 0
                    self.favoriteButton68.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton68.setTitle("(米焼酎)白岳", for: .normal)
                    self.favoriteButton68.setTitleColor(.black, for: .normal)
                    self.favoriteButton68.addTarget(self, action: #selector(self.tapEvents68), for: .touchUpInside)
                    self.favoriteButton68.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton68.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton68.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton68.frame.width - self.favoriteButton68.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton68)
                }
                if self.buy69 == 1{
                    self.buyArray += [self.buy69]
                    self.favoriteButton69.frame = self.favoriteFrame()
                    self.favoriteButton69.setImage(self.image69, for: .normal)
                    self.favoriteButton69.titleLabel?.numberOfLines = 0
                    self.favoriteButton69.titleLabel?.textAlignment = NSTextAlignment.center
            self.favoriteButton69.setTitle("(芋焼酎)黒霧島", for: .normal)
                    self.favoriteButton69.setTitleColor(.black, for: .normal)
                    self.favoriteButton69.addTarget(self, action: #selector(self.tapEvents69), for: .touchUpInside)
                    self.favoriteButton69.titleLabel?.font = UIFont.systemFont(ofSize: 10)
                    self.favoriteButton69.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
                    self.favoriteButton69.titleEdgeInsets = UIEdgeInsets(top: 100, left: -(self.favoriteButton69.frame.width - self.favoriteButton69.frame.width / 9), bottom: 10, right: 10)
                    self.scrollView.addSubview(self.favoriteButton69)
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
        case 29:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1485, width: self.width/3, height: 150)
        case 30:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1485, width: self.width/3, height: 150)
        case 31:
            self.favoriteFremeCount = CGRect(x: 0, y: 1635, width: self.width/3, height: 150)
        case 32:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1635, width: self.width/3, height: 150)
        case 33:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1635, width: self.width/3, height: 150)
        case 34:
            self.favoriteFremeCount = CGRect(x: 0, y: 1785, width: self.width/3, height: 150)
        case 35:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1785, width: self.width/3, height: 150)
        case 36:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1785, width: self.width/3, height: 150)
        case 37:
            self.favoriteFremeCount = CGRect(x: 0, y: 1935, width: self.width/3, height: 150)
        case 38:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 1935, width: self.width/3, height: 150)
        case 39:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 1935, width: self.width/3, height: 150)
        case 40:
            self.favoriteFremeCount = CGRect(x: 0, y: 2085, width: self.width/3, height: 150)
        case 41:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2085, width: self.width/3, height: 150)
        case 42:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2085, width: self.width/3, height: 150)
        case 43:
            self.favoriteFremeCount = CGRect(x: 0, y: 2235, width: self.width/3, height: 150)
        case 44:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2235, width: self.width/3, height: 150)
        case 45:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2235, width: self.width/3, height: 150)
        case 46:
            self.favoriteFremeCount = CGRect(x: 0, y: 2385, width: self.width/3, height: 150)
        case 47:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2385, width: self.width/3, height: 150)
        case 48:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2385, width: self.width/3, height: 150)
        case 49:
            self.favoriteFremeCount = CGRect(x: 0, y: 2535, width: self.width/3, height: 150)
        case 50:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2535, width: self.width/3, height: 150)
        case 51:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2535, width: self.width/3, height: 150)
        case 52:
            self.favoriteFremeCount = CGRect(x: 0, y: 2685, width: self.width/3, height: 150)
        case 53:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2685, width: self.width/3, height: 150)
        case 54:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2685, width: self.width/3, height: 150)
        case 55:
            self.favoriteFremeCount = CGRect(x: 0, y: 2835, width: self.width/3, height: 150)
        case 56:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2835, width: self.width/3, height: 150)
        case 57:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2835, width: self.width/3, height: 150)
        case 58:
            self.favoriteFremeCount = CGRect(x: 0, y: 2985, width: self.width/3, height: 150)
        case 59:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 2985, width: self.width/3, height: 150)
        case 60:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 2985, width: self.width/3, height: 150)
        case 61:
            self.favoriteFremeCount = CGRect(x: 0, y: 3135, width: self.width/3, height: 150)
        case 62:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 3135, width: self.width/3, height: 150)
        case 63:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 3135, width: self.width/3, height: 150)
        case 64:
            self.favoriteFremeCount = CGRect(x: 0, y: 3285, width: self.width/3, height: 150)
        case 65:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 3285, width: self.width/3, height: 150)
        case 66:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 3285, width: self.width/3, height: 150)
        case 67:
            self.favoriteFremeCount = CGRect(x: 0, y: 3435, width: self.width/3, height: 150)
        case 68:
            self.favoriteFremeCount = CGRect(x: self.width/3, y: 3435, width: self.width/3, height: 150)
        case 69:
            self.favoriteFremeCount = CGRect(x: self.width-self.width/3, y: 3435, width: self.width/3, height: 150)
        default:
            break
        }
        return self.favoriteFremeCount
    }
    
    @objc func tapEvent1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu1") as! menu1ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu2") as! menu2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvent3(){
        return
    }
    @objc func tapEvents1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.azisenramen")
        vc.sendLabel1 = "味千ラーメン"
        vc.sendLabel2 = "670"
        vc.sendText = ""
        vc.number1 = self.subNumber1
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.paiku-men")
        vc.sendLabel1 = "パイクー麺"
        vc.sendLabel2 = "900"
        vc.sendText = "一頭に2本しか取れない軟骨つき豚バラ肉を\n特製タレで煮込みました。"
        vc.number1 = self.subNumber2
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kuromayuramen")
        vc.sendLabel1 = "黒マー油ラーメン"
        vc.sendLabel2 = "850"
        vc.sendText = "香ばしい黒いスープは、ニンニクがたっぷりと\n溶け込んだ「マー油」です。"
        vc.number1 = self.subNumber3
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zennoseramen")
        vc.sendLabel1 = "全乗せラーメン"
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
        vc.number1 = self.subNumber5
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.syauyuramen")
        vc.sendLabel1 = "醤油ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber6
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.misotonkoturamen")
        vc.sendLabel1 = "味噌豚骨ラーメン"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber7
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karamisoramen")
        vc.sendLabel1 = "辛みそラーメン"
        vc.sendLabel2 = "820"
        vc.sendText = ""
        vc.number1 = self.subNumber8
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hukkokuramen")
        vc.sendLabel1 = "復刻ラーメン昭和味"
        vc.sendLabel2 = "790"
        vc.sendText = ""
        vc.number1 = self.subNumber9
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.zeitakukiriaburitya-syumen")
        vc.sendLabel1 = "贅沢切り炙りチャーシュー麵"
        vc.sendLabel2 = "1200"
        vc.sendText = ""
        vc.number1 = self.subNumber10
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaranegiramen")
        vc.sendLabel1 = "ピリ辛ネギラーメン"
        vc.sendLabel2 = "800"
        vc.sendText = ""
        vc.number1 = self.subNumber11
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tukemen")
        vc.sendLabel1 = "つけ麺"
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
        vc.sendText = ""
        vc.number1 = self.subNumber13
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents14(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.taipi-en")
        vc.sendLabel1 = "太平燕"
        vc.sendLabel2 = "880"
        vc.sendText = "熊本生まれの春雨料理"
        vc.number1 = self.subNumber14
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents15(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.parisoba")
        vc.sendLabel1 = "パリそば"
        vc.sendLabel2 = "840"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber15
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents16(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yakisoba")
        vc.sendLabel1 = "焼きそば"
        vc.sendLabel2 = "820"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber16
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents17(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tyanpon")
        vc.sendLabel1 = "ちゃんぽん"
        vc.sendLabel2 = "880"
        vc.sendText = ""
        vc.number1 = self.subNumber17
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents18(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratyanpon")
        vc.sendLabel1 = "ピリ辛ちゃんぽん"
        vc.sendLabel2 = "900"
        vc.sendText = "夜メニュー商品となります。"
        vc.number1 = self.subNumber18
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents19(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.gyozaset")
        vc.sendLabel1 = "ギョーザセット"
        vc.sendLabel2 = "900"
        vc.sendText = "お好みの麺＋焼きギョーザ(3個)＋ご飯＋漬物"
        vc.number1 = self.subNumber19
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents20(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karaageset")
        vc.sendLabel1 = "唐揚げセット"
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
        vc.sendText = "お好みの麺＋ハーフチャーハン＋漬物"
        vc.number1 = self.subNumber21
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents22(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(systemName: "camera")
        vc.sendLabel1 = "月替りセット"
        vc.sendLabel2 = ""
        vc.sendText = "商品の構成によって価格は変動いたします。"
        vc.number1 = self.subNumber22
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents23(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ha-huset")
        vc.sendLabel1 = "ハーフセット"
        vc.sendLabel2 = ""
        vc.sendText = "ハーフラーメン＋ハーフチャーハン＋唐揚げ一個＋サラダ＋漬物"
        vc.number1 = self.subNumber23
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents24(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.supesyaruset")
        vc.sendLabel1 = "スペシャルセット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋ハーフチャーハン＋ギョーザ(５個)＋漬物"
        vc.number1 = self.subNumber24
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents25(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodonset")
        vc.sendLabel1 = "チャーシュー玉子丼セット"
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
        vc.sendText = "辛みそチャーシュー丼＋味千ラーメン(中)+漬物"
        vc.number1 = self.subNumber26
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents27(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tikinnanbanset")
        vc.sendLabel1 = "チキン南蛮セット"
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
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋唐揚げ(4個)＋漬物"
        vc.number1 = self.subNumber28
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents29(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.aburitya-syu-donset")
        vc.sendLabel1 = "炙りチャーシュー丼セット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋炙りチャーシュー丼＋漬物"
        vc.number1 = self.subNumber29
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents30(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.dxset")
        vc.sendLabel1 = "DXセット"
        vc.sendLabel2 = ""
        vc.sendText = "味千ラーメン(中)＋半チャーハン＋ギョーザ(５個)＋サラダ"
        vc.number1 = self.subNumber30
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents31(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "馬丼セット"
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
        vc.sendText = "ハーフラーメン＋ゼリー＋ジュース"
        vc.number1 = self.subNumber32
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents33(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ラーメンJr."
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber34
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents35(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karaage")
        vc.sendLabel1 = "唐揚げ5個入り"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber35
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents36(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.enokigyuunikumaki")
        vc.sendLabel1 = "えのき牛肉巻"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber37
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents38(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.guri-nsarada")
        vc.sendLabel1 = "グリーンサラダ"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber39
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents40(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.edamame")
        vc.sendLabel1 = "枝豆"
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
        vc.number1 = self.subNumber42
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents43(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.potetohurai")
        vc.sendLabel1 = "ポテトフライ"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber43
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents44(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ちょい飲みセットA"
        vc.sendLabel2 = ""
        vc.sendText = "①枝豆＋炙りチャーシュー＋生ビール\n②枝豆＋豚足＋生ビール"
        vc.number1 = self.subNumber44
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents45(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "ちょい飲みセットB"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber46
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents47(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-")
        vc.sendLabel1 = "チャーシュー"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber47
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents48(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.yasai")
        vc.sendLabel1 = "野菜"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber48
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents49(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.hanzyukutamago")
        vc.sendLabel1 = "半熟玉子"
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
        vc.sendText = ""
        vc.number1 = self.subNumber50
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents51(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.kikurage")
        vc.sendLabel1 = "木耳"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber52
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents53(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.ko-n")
        vc.sendLabel1 = "コーン"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber53
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents54(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "メンマ"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber54
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents55(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-han")
        vc.sendLabel1 = "チャーハン(スープ付き)"
        vc.sendLabel2 = ""
        vc.sendText = "チャーハン＋チャーハンスープ＋漬物"
        vc.number1 = self.subNumber55
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents56(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.pirikaratya-han")
        vc.sendLabel1 = "ピリ辛チャーハン(スープ付き)"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber57
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents58(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.tya-syu-tamagodon")
        vc.sendLabel1 = "チャーシュー玉子丼"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber58
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents59(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.karamisotya-syu-don")
        vc.sendLabel1 = "辛みそチャーシュー丼"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber59
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents60(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.raisu")
        vc.sendLabel1 = "ライス"
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
        vc.number1 = self.subNumber61
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents62(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "馬丼"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber63
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents64(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.u-rontya")
        vc.sendLabel1 = "ウーロン茶"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber64
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents65(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.namabi-ru")
        vc.sendLabel1 = "生ビール(中)"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber65
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents66(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.binbi-ru")
        vc.sendLabel1 = "瓶ビール(中)"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber66
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents67(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.nonaruko-rubi-ru")
        vc.sendLabel1 = "ノンアルコールビール(小瓶)"
        vc.sendLabel2 = ""
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
        vc.number1 = self.subNumber68
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tapEvents69(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "menu4") as! menu4ViewController
        vc.sendImage = UIImage(named: "p.no")
        vc.sendLabel1 = "(芋焼酎)黒霧島"
        vc.sendLabel2 = ""
        vc.sendText = ""
        vc.number1 = self.subNumber69
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
