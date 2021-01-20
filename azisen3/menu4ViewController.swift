
//buy4ViewControllerと構造は同じ

import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD

class menu4ViewController: UIViewController {
    let menu1 = menu1ViewController()
    let favorite = UIButton()
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var sendImage: UIImage?
    var sendLabel1: String?
    var sendLabel2: String?
    var sendLabel3: String?
    var sendText: String?
    
    
    var number1: Int?
    
    let back = UIButton()
    let image = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let shoukaiText = UITextView()
    let history = UIButton()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.view.backgroundColor = .systemGray5
        
        
        back.frame = CGRect(x: width - 40, y: height - (height - 40), width: 25, height: 25)
        back.backgroundColor = .white
        back.layer.cornerRadius = back.frame.width / 2
        back.setTitle("×", for: .normal)
        back.setTitleColor(.systemGray3, for: .normal)
        back.addTarget(self, action: #selector(backEvent), for: .touchUpInside)
        self.view.addSubview(back)
        
        
        image.frame = CGRect(x: 0, y: height - (height - 70), width: width, height: height / 2 - (height - (height - 70)))
        image.image = sendImage
        self.view.addSubview(image)
        
        
        favorite.frame = CGRect(x: width - 40, y: height / 2 + 10, width: 25, height: 25)
        favorite.backgroundColor = .white
        favorite.setTitle("★", for: .normal)
        favorite.layer.cornerRadius = favorite.frame.width / 2
        favorite.addTarget(self, action: #selector(favoriteEvent), for: .touchUpInside)
        self.view.addSubview(favorite)
        
        
        label1.frame = CGRect(x: width / 10 , y: height / 2 + 40, width: width - width / 10, height: 25)
        label1.font = UIFont.boldSystemFont(ofSize: 15)
        label1.textAlignment = NSTextAlignment.center
        label1.text = sendLabel1
        self.view.addSubview(label1)
        
        
        label2.frame = CGRect(x: width / 10, y: height / 2 + 60, width: width - width / 10, height: 25)
        label2.font = UIFont.boldSystemFont(ofSize: 10)
        label2.textAlignment = NSTextAlignment.center
        label2.text = sendLabel2
        self.view.addSubview(label2)
        
        
        shoukaiText.frame = CGRect(x: 0, y: height / 2 + 95, width: width, height: 50)
        shoukaiText.backgroundColor = .systemGray5
        shoukaiText.text = sendText
        
        self.view.addSubview(shoukaiText)
        
        
        history.frame = CGRect(x: width / 30, y: height / 2 + 160, width: width -  width / 15, height: 50)
        history.backgroundColor = .red
        history.setTitle("ヒストリーに登録", for: .normal)
        history.setTitleColor(.white, for: .normal)
        history.addTarget(self, action: #selector(historyEvent), for: .touchUpInside)
        self.view.addSubview(history)
        
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
        let userID = Auth.auth().currentUser?.uid
        SVProgressHUD.show()
        if userID != nil{
            if number1 == 11 && sendLabel1 == "味千ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber1":1],merge: true)
                
            }else if number1 == 10 && sendLabel1 == "味千ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber1":0],merge: true)
            }
            if number1 == 11 && sendLabel1 == "パイクー麺"{
                favorite.setTitleColor(.yellow, for: .normal)
                number1 = 0
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber2":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "パイクー麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber2":0],merge: true)
                favorite.setTitleColor(.systemGray3, for: .normal)
            }
            if number1 == 11&&sendLabel1 == "黒マー油ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber3":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "黒マー油ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber3":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "全乗せラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber4":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "全乗せラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber4":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー麵"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber5":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー麵"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber5":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "醤油ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber6":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "醤油ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber6":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "味噌豚骨ラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber7":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "味噌豚骨ラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber7":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛みそラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber8":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛みそラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber8":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "復刻ラーメン昭和味"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber9":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "復刻ラーメン昭和味"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber9":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "贅沢切り炙りチャーシュー麵"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber10":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "贅沢切り炙りチャーシュー麵"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber10":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ピリ辛ネギラーメン"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber11":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ピリ辛ネギラーメン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber11":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "つけ麺"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber12":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "つけ麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber12":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛つけ麺"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber13":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛つけ麺"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber13":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "太平燕"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber14":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "太平燕"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber14":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "パリそば"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber15":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "パリそば"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber15":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "焼きそば"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber16":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "焼きそば"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber16":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ちゃんぽん"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber17":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ちゃんぽん"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber17":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ピリ辛ちゃんぽん"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber18":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ピリ辛ちゃんぽん"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber18":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ギョーザセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber19":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ギョーザセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber19":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "唐揚げセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber20":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "唐揚げセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber20":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "半チャーハンセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber21":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "半チャーハンセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber21":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "月替りセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber22":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "月替りセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber22":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ハーフセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber23":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ハーフセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber23":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "スペシャルセット"{
                favorite.setTitleColor(.yellow, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber24":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "スペシャルセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber24":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー玉子丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber25":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー玉子丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber25":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛みそチャーシュー丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber26":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛みそチャーシュー丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber26":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チキン南蛮セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber27":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チキン南蛮セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber27":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "満腹セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber28":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "満腹セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber28":0],merge: true)
            }
            
            
            
            if number1 == 11&&sendLabel1 == "炙りチャーシュー丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber29":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "炙りチャーシュー丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber29":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "DXセット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber30":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "DXセット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber30":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "馬丼セット"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber31":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "馬丼セット"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber31":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ラーメンKids"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber32":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ラーメンKids"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber32":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ラーメンJr."{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber33":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ラーメンJr."{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber33":0],merge: true)
            }
            
            
            
            
            if number1 == 11&&sendLabel1 == "焼きギョーザ5個入り/10個入り"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber34":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "焼きギョーザ5個入り/10個入り"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber34":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "唐揚げ5個入り"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber35":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "唐揚げ5個入り"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber35":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "えのき牛肉巻"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber36":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "えのき牛肉巻"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber36":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "海老春巻き一本"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber37":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "海老春巻き一本"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber37":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "グリーンサラダ"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber38":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "グリーンサラダ"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber38":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "炙りチャーシュー"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber39":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "炙りチャーシュー"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber39":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "枝豆"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber40":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "枝豆"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber40":0],merge: true)
            }
            
            
            
            
            if number1 == 11&&sendLabel1 == "豚足"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber41":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "豚足"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber41":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チキン南蛮"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber42":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チキン南蛮"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber42":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ポテトフライ"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber43":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ポテトフライ"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber43":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ちょい飲みセットA"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber44":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ちょい飲みセットA"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber44":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ちょい飲みセットB"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber45":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ちょい飲みセットB"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber45":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "ネギたっぷり"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber46":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ネギたっぷり"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber46":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber47":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber47":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "野菜"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber48":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "野菜"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber48":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "半熟玉子"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber49":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "半熟玉子"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber49":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "パイクー(2個)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber50":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "パイクー(2個)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber50":0],merge: true)
            }
            
            
            if number1 == 11&&sendLabel1 == "木耳"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber51":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "木耳"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber51":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "もやし"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber52":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "もやし"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber52":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "コーン"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber53":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "コーン"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber53":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "メンマ"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber54":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "メンマ"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber54":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーハン(スープ付き)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber55":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーハン(スープ付き)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber55":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "ピリ辛チャーハン(スープ付き)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber56":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ピリ辛チャーハン(スープ付き)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber56":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "大人の黒チャーハン(スープ付き)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber57":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "大人の黒チャーハン(スープ付き)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber57":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "チャーシュー玉子丼"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber58":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "チャーシュー玉子丼"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber58":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "辛みそチャーシュー丼"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber59":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "辛みそチャーシュー丼"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber59":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "ライス"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber60":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ライス"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber60":0],merge: true)
            }
            
            
            if number1 == 11&&sendLabel1 == "おにぎり1個"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber61":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "おにぎり1個"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber61":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "馬丼"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber62":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "馬丼"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber62":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "杏仁豆腐"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber63":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "杏仁豆腐"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber63":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ウーロン茶"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber64":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ウーロン茶"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber64":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "生ビール(中)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber65":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "生ビール(中)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber65":0],merge: true)
            }
            
            if number1 == 11&&sendLabel1 == "瓶ビール(中)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber66":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "瓶ビール(中)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber66":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "ノンアルコールビール(小瓶)"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber67":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "ノンアルコールビール(小瓶)"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber67":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "(米焼酎)白岳"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber68":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "(米焼酎)白岳"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber68":0],merge: true)
            }
            if number1 == 11&&sendLabel1 == "(芋焼酎)黒霧島"{
                favorite.setTitleColor(.yellow, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber69":1],merge: true)
                
            }else if number1 == 10&&sendLabel1 == "(芋焼酎)黒霧島"{
                favorite.setTitleColor(.systemGray3, for: .normal)

                Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["menuNumber69":0],merge: true)
            }
        }
        SVProgressHUD.dismiss()
    }
    @objc func historyEvent(){
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history2") as! history2ViewController
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        let now = Date()
        
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
        vc.whatButton.setTitle("メニュー", for: .normal)
        vc.whatButton.setTitleColor(.black, for: .normal)
        vc.whatButton.addTarget(history2ViewController(), action: #selector(vc.whatButtonTap), for: .touchUpInside)
        vc.scrollView.addSubview(vc.whatButton)
        
        vc.label5.frame = CGRect(x: 5, y: 110, width: 130, height: 15)
        vc.label5.text = "メニューを選択してください"
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
        vc.nextLabelText2 = "メニュー"
        vc.nextLabelText3 = sendLabel3
        vc.nextLabelText4 = sendLabel1
        
        vc.starButtonNumber = 3
        vc.nextImage = sendImage
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}

