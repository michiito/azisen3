
//４９〜１１０　基本画面
//１１５〜１２９　画面を開くたびにfavorite(星ボタン)の色を更新する
//１３４〜４１５　favoriteボタンを押した際のアクション
//４２２〜４２７　Webページで商品を見る際のアクション
//４２８〜５６５　ヒストリーに登録する際に、画面遷移するための処理


import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD

class buy4ViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    //buy1,2,3ViewControllerから送られてくる商品名などの変数,WebページのURLが入る用の変数
    var sendImage: UIImage?
    var sendLabel1: String?
    var sendLabel2: String?
    var sendLabel3: String?
    var sendText: String?
    var sendUrl: String?
    var historyLabel: String?
    
    //画面作成の部品
    let view1 = UIScrollView()
    let back = UIButton()
    let image = UIImageView()
    let favorite = UIButton()
    let label1 = UITextView()
    let label2 = UILabel()
    let shoukaiText = UITextView()
    let history = UIButton()
    let shop = UIButton()
    
    //favirite(星マーク)ボタンの色設定で使う変数
    var number1: Int?
    var number11: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.view.backgroundColor = .systemGray5
        
        SVProgressHUD.show()
        
        view1.frame = CGRect(x: 0, y: 0, width: width, height:1000)
        view1.contentSize = CGSize(width: self.view.frame.width, height: 1100)
        self.view.addSubview(view1)
        
        back.frame = CGRect(x: width - 40, y: height - (height - 20), width: 25, height: 25)
        back.backgroundColor = .white
        back.layer.cornerRadius = back.frame.width / 2
        back.setTitle("×", for: .normal)
        back.setTitleColor(.systemGray3, for: .normal)
        back.addTarget(self, action: #selector(backEvent), for: .touchUpInside)
        view1.addSubview(back)
        
        image.frame = CGRect(x: 0, y: height - (height - 40), width: width, height: height / 2 - (height - (height - 70)))
        image.image = sendImage
        view1.addSubview(image)
        
        favorite.frame = CGRect(x: width - 40, y: height / 2 + 10, width: 25, height: 25)
        favorite.backgroundColor = .white
        favorite.setTitle("★", for: .normal)
        favorite.layer.cornerRadius = favorite.frame.width / 2
        favorite.addTarget(self, action: #selector(favoriteEvent), for: .touchUpInside)
        view1.addSubview(favorite)
        
        label1.frame = CGRect(x: 0, y: height / 2 + 40, width: width, height: 45)
        label1.font = UIFont.boldSystemFont(ofSize: 15)
        label1.backgroundColor = .systemGray5
        label1.isEditable = false
        label1.isSelectable = false
        label1.textAlignment = NSTextAlignment.center
        label1.text = sendLabel1
        view1.addSubview(label1)
        
        label2.frame = CGRect(x: width / 10, y: height / 2 + 90, width: width - width / 10, height: 25)
        label2.font = UIFont.boldSystemFont(ofSize: 10)
        label2.textAlignment = NSTextAlignment.center
        label2.text = sendLabel2
        view1.addSubview(label2)
        
        shoukaiText.frame = CGRect(x: 0, y: height / 2 + 120, width: width, height: 170)
        shoukaiText.backgroundColor = .systemGray5
        shoukaiText.text = sendText
        view1.addSubview(shoukaiText)
        
        history.frame = CGRect(x: width / 30, y: height / 2 + 300, width: width -  width / 15, height: 50)
        history.backgroundColor = .red
        history.setTitle("ショップページで見る", for: .normal)
        history.setTitleColor(.white, for: .normal)
        history.addTarget(self, action: #selector(shopEvent), for: .touchUpInside)
        view1.addSubview(history)
        
        shop.frame = CGRect(x: width / 30, y: height / 2 + 360, width: width -  width / 15, height: 50)
        shop.backgroundColor = .red
        shop.setTitle("ヒストリーに登録", for: .normal)
        shop.setTitleColor(.white, for: .normal)
        shop.addTarget(self, action: #selector(historyEvent), for: .touchUpInside)
        view1.addSubview(shop)
        
        
        
        SVProgressHUD.dismiss()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        favoriteColor()
    }
    
    func favoriteColor(){
        if number1 == 11{
            
            favorite.setTitleColor(.systemGray3, for: .normal)
        }else{
            favorite.setTitleColor(.yellow, for: .normal)
        }
        
    }
    
    @objc func backEvent(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc func favoriteEvent(){
        //お気に入りボタンが押された時の処理
        SVProgressHUD.show()
        let userID = Auth.auth().currentUser?.uid
        if userID != nil{
            //number1が11の時はお気に入りが押されていない状態。
            //fivorite(星ボタン)の色を黄色にしてbuyNumberに1をセットする
            if number1 == 11 && sendLabel1 == "味千ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber1":1],merge: true)
            }else if number1 == 10 && sendLabel1 == "味千ラーメン"{
                //number1が11の時はお気に入りが押されてる状態。
                //fivorite(星ボタン)の色をグレーにしてbuyNumberに0をセットする
                favorite.setTitleColor(.systemGray3, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber1":0],merge: true)
            }
            
            if number1 == 11 && sendLabel1 == "パイクー麺"{
                favorite.setTitleColor(.yellow, for: .normal)
                number1 = 0
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber2":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "パイクー麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber2":0],merge: true)
                favorite.setTitleColor(.systemGray3, for: .normal)
            }
            if number1 == 11&&sendLabel1 == "黒マー油ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber3":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "黒マー油ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber3":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "全乗せラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber4":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "全乗せラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber4":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー麵"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber5":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー麵"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber5":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "醤油ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber6":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "醤油ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber6":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "味噌豚骨ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber7":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "味噌豚骨ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber7":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛みそラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber8":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛みそラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber8":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "復刻ラーメン昭和味"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber9":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "復刻ラーメン昭和味"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber9":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "贅沢切り炙りチャーシュー麵"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber10":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "贅沢切り炙りチャーシュー麵"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber10":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ピリ辛ネギラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber11":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ピリ辛ネギラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber11":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "つけ麺"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber12":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "つけ麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber12":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛つけ麺"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber13":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛つけ麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber13":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "太平燕"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber14":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "太平燕"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber14":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "パリそば"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber15":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "パリそば"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber15":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "焼きそば"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber16":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "焼きそば"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber16":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ちゃんぽん"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber17":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ちゃんぽん"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber17":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ピリ辛ちゃんぽん"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber18":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ピリ辛ちゃんぽん"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber18":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ギョーザセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber19":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ギョーザセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber19":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "唐揚げセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber20":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "唐揚げセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber20":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "半チャーハンセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber21":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "半チャーハンセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber21":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "月替りセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber22":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "月替りセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber22":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ハーフセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber23":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ハーフセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber23":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "スペシャルセット"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber24":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "スペシャルセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber24":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー玉子丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber25":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー玉子丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber25":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛みそチャーシュー丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber26":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛みそチャーシュー丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber26":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チキン南蛮セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber27":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チキン南蛮セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber27":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "満腹セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber28":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "満腹セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["buyNumber28":0],merge: true)
            }
        }
        SVProgressHUD.dismiss()
    }
    @objc func shopEvent(){
        
        let url = URL(string: self.sendUrl!)
        UIApplication.shared.open(url!)
        
    }
    @objc func historyEvent(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history2") as! history2ViewController
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        let now = Date()

        //history2ViewControllerに画面遷移する際の設定
        vc.dayButton.setTitle(formatter.string(from: now as Date), for: .normal)
        vc.dayButton.setTitleColor(.black, for: .normal)
        vc.nextLabelText2 = "アイテム"
        vc.nextLabelText3 = sendLabel1
        vc.nextLabelText4 = sendLabel3
        vc.label3.frame = CGRect(x: 5, y: 70, width: 100, height: 15)
        vc.label3.text = "何を記録しますか？"
        vc.label3.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label3)
        
        vc.label4.frame = CGRect(x: 110, y: 70, width: 50, height: 15)
        vc.label4.text = "*必須"
        vc.label4.font = UIFont.systemFont(ofSize: 10)
        vc.label4.textColor = .red
        vc.scrollView.addSubview(vc.label4)
        
        vc.whatButton.frame = CGRect(x: 5, y: 90, width: width - 10, height: 15)
        vc.whatButton.backgroundColor = .white
        vc.whatButton.layer.cornerRadius = 5
        vc.whatButton.setTitle(formatter.string(from: now as Date), for: .normal)
        vc.whatButton.setTitleColor(.black, for: .normal)
        vc.whatButton.setTitle("アイテム", for: .normal)
        vc.whatButton.setTitleColor(.black, for: .normal)
        vc.whatButton.addTarget(history2ViewController(), action: #selector(vc.whatButtonTap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.whatButton)
        
        vc.label5.frame = CGRect(x: 5, y: 110, width: 130, height: 15)
        vc.label5.text = "アイテムを選択してください"
        vc.label5.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label5)
        
        vc.label6.frame = CGRect(x: 130, y: 110, width: 40, height: 15)
        vc.label6.text = "*必須"
        vc.label6.textColor = .red
        vc.label6.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label6)
        
        vc.menuButton1.frame = CGRect(x: 5, y: 130, width: width - 10, height: 15)
        vc.menuButton1.backgroundColor = .white
        vc.menuButton1.layer.cornerRadius = 5
        vc.menuButton1.addTarget(history2ViewController(), action: #selector(vc.menuButton1Tap), for: .touchUpInside)
        vc.menuButton1.setTitle(sendLabel3, for: .normal)
        vc.menuButton1.setTitleColor(.black, for: .normal)
        vc.scrollView.addSubview(vc.menuButton1)
        
        vc.menuButton2.frame = CGRect(x: 5, y: 150, width: width - 10, height: 15)
        vc.menuButton2.backgroundColor = .white
        vc.menuButton2.layer.cornerRadius = 5
        vc.menuButton2.addTarget(history2ViewController(), action: #selector(vc.menuButton2Tap), for: .touchUpInside)
        vc.menuButton2.setTitle(sendLabel1, for: .normal)
        vc.menuButton2.setTitleColor(.black, for: .normal)
        vc.scrollView.addSubview(vc.menuButton2)
        
        vc.label7.frame = CGRect(x: 5, y: 180, width: 40, height: 15)
        vc.label7.text = "評価"
        vc.label7.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label7)
        
        vc.starButton1.frame = CGRect(x: 50, y: 170, width: 40, height: 40)
        vc.starButton1.backgroundColor = .systemGray6
        vc.starButton1.setTitle("★", for: .normal)
        vc.starButton1.setTitleColor(.yellow, for: .normal)
        vc.starButton1.addTarget(history2ViewController(), action: #selector(vc.starButton1Tap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.starButton1)
        
        vc.starButton2.frame = CGRect(x: 100, y: 170, width: 40, height: 40)
        vc.starButton2.backgroundColor = .systemGray6
        vc.starButton2.setTitle("★", for: .normal)
        vc.starButton2.setTitleColor(.yellow, for: .normal)
        vc.starButton2.addTarget(history2ViewController(), action: #selector(vc.starButton2Tap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.starButton2)
        
        vc.starButton3.frame = CGRect(x: 150, y: 170, width: 40, height: 40)
        vc.starButton3.backgroundColor = .systemGray6
        vc.starButton3.setTitle("★", for: .normal)
        vc.starButton3.setTitleColor(.yellow, for: .normal)
        vc.starButton3.addTarget(history2ViewController(), action: #selector(vc.starButton3Tap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.starButton3)
        
        vc.starButton4.frame = CGRect(x: 200, y: 170, width: 40, height: 40)
        vc.starButton4.backgroundColor = .systemGray6
        vc.starButton4.setTitle("★", for: .normal)
        vc.starButton4.setTitleColor(.white, for: .normal)
        vc.starButton4.addTarget(history2ViewController(), action: #selector(vc.starButton4Tap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.starButton4)
        
        vc.starButton5.frame = CGRect(x: 250, y: 170, width: 40, height: 40)
        vc.starButton5.backgroundColor = .systemGray6
        vc.starButton5.setTitle("★", for: .normal)
        vc.starButton5.setTitleColor(.white, for: .normal)
        vc.starButton5.addTarget(history2ViewController(), action: #selector(vc.starButton5Tap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.starButton5)
        
        vc.label8.frame = CGRect(x: 5, y: 210, width: 40, height: 15)
        vc.label8.text = "メモ"
        vc.label8.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label8)
        
        vc.memoTextField.frame = CGRect(x: 5, y: 230, width: width - 10, height: 20)
        vc.memoTextField.backgroundColor = .white
        vc.memoTextField.text = ""
        vc.memoTextField.layer.cornerRadius = 5
        vc.scrollView.addSubview(vc.memoTextField)
        
        vc.label9.frame = CGRect(x: 5, y: 260, width: 30, height: 15)
        vc.label9.text = "画像 :"
        vc.label9.font = UIFont.systemFont(ofSize: 10)
        vc.scrollView.addSubview(vc.label9)
        
        vc.imageButton.frame = CGRect(x: 5, y: 280, width: width - 10, height: width - 10)
        vc.imageButton.setImage(sendImage, for: .normal)
        vc.scrollView.addSubview(vc.imageButton)
        
        vc.kakuninButton.frame = CGRect(x: 5, y: 280 + width, width: width - 10, height: 30)
        vc.kakuninButton.backgroundColor = .red
        vc.kakuninButton.setTitle("確認", for: .normal)
        vc.kakuninButton.setTitleColor(.white, for: .normal)
        vc.kakuninButton.titleLabel?.textAlignment = NSTextAlignment.center
        vc.kakuninButton.addTarget(history2ViewController(), action: #selector(vc.kakuninButtonTap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.kakuninButton)
        
        vc.nextLabelText1 = formatter.string(from: now as Date)
        vc.nextLabelText2 = "アイテム"
        vc.nextLabelText3 = sendLabel3
        vc.nextLabelText4 = sendLabel1
        
        vc.starButtonNumber = 3
        vc.nextImage = sendImage
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

