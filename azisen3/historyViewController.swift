//
//  historyViewController.swift
//  azisen3
//
//  Created by 伊藤倫 on 2020/11/14.
//  Copyright © 2020 michi.ito. All rights reserved.
//

import UIKit
import Firebase
import FirebaseUI
import SVProgressHUD

class historyViewController: UIViewController, UIGestureRecognizerDelegate, UITextFieldDelegate {
    
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    
    
    
    let scrollView = UIScrollView()
    let mlabel1 = UILabel()
    let mlabel2 = UILabel()
    let mback = UIButton()
    let textField1 = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    let textField4 = UITextField()
    let textField5 = UITextField()
    let textField6 = UITextField()
    let textField7 = UITextField()
    let textField8 = UITextField()
    let textField9 = UITextField()
    let textField10 = UIButton()
    
    let back = UIButton()
    let label1 = UILabel()
    let nyuukai = UIButton()
    let image = UIImage(named: "logo2")
    let label2 = UILabel()
    let label3 = UILabel()
    let mailField = UITextField()
    let passwardField = UITextField()
    let eye = UIButton()
    let label4 = UILabel()
    let login = UIButton()
    
    let noImage = UIImageView()
    let noLabel = UILabel()
    let addButton = UIButton()
    let arrayScrollView = UIScrollView()
    //ヒストリーに登録されたものを押した際に、history4ViewControllerに送る変数
    var sendText1: String?
    var sendText2: String?
    var sendText3: String?
    var sendText4: String?
    var sendText5: String?
    var sendNumber: Int?
    
    
    override func viewWillAppear(_ animated: Bool) {

        SVProgressHUD.show()
        self.tabBarController?.selectedIndex = 4
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        //ページが開かれるたびに一旦Viewの全てを消す。
        for i in self.view.subviews{
            i.removeFromSuperview()
        }
        let userID1 = Auth.auth().currentUser?.uid
        
        if userID1 == nil{
            //現在ユーザー登録されていない人がこのページに来た場合
            self.navigationController?.setNavigationBarHidden(true, animated: true)
            self.view.backgroundColor = .systemGray5
            
            label1.frame = CGRect(x: 0, y: height - (height - 40) + 30, width: width, height: 15)
            label1.textAlignment = NSTextAlignment.center
            label1.text = "この機能を利用するにはログインが必要です。"
            self.view.addSubview(label1)
            
            
            nyuukai.frame = CGRect(x: 5, y: height - (height - 40) + 45, width: width - 10, height: 50)
            nyuukai.setImage(image, for: .normal)
            nyuukai.addTarget(self, action: #selector(nyuukaiEvent), for: .touchUpInside)
            self.view.addSubview(nyuukai)
            
            
            label2.frame = CGRect(x: 0, y: height - (height - 40) + 105, width: width, height: 15)
            label2.textAlignment = NSTextAlignment.center
            label2.text = "以前、アプリで会員登録された方はこちら"
            self.view.addSubview(label2)
            
            
            label3.frame = CGRect(x: 0, y: height - (height - 40) + 130, width: width, height: 30)
            label3.textAlignment = NSTextAlignment.center
            label3.font = UIFont.systemFont(ofSize: 20)
            label3.text = "ログイン"
            self.view.addSubview(label3)
            
            
            mailField.frame = CGRect(x: 5, y: height - (height - 40) + 170, width: width - 10, height: 30)
            mailField.layer.cornerRadius = 18
            mailField.backgroundColor = .white
            mailField.placeholder = "メールアドレス"
            self.view.addSubview(mailField)
            
            
            passwardField.frame = CGRect(x: 5, y: height - (height - 40) + 220, width: width - 10, height: 30)
            passwardField.layer.cornerRadius = 18
            passwardField.backgroundColor = .white
            passwardField.placeholder = "パスワード"
            self.view.addSubview(passwardField)
            
            
            login.frame = CGRect(x: 5, y: height - (height - 40) + 300, width: width - 10, height: 30)
            login.backgroundColor = .green
            login.setTitle("ログイン", for: .normal)
            login.addTarget(self, action: #selector(loginEvent), for: .touchUpInside)
            login.layer.cornerRadius = 10
            self.view.addSubview(login)
            
            
        }else{
            //ログインユーザーがこのページに来た場合
            self.navigationController?.setNavigationBarHidden(false, animated: true)
            self.view.backgroundColor = .white
            self.arrayScrollView.frame = CGRect(x: 0, y: 0, width: self.width, height: self.height)
            self.view.addSubview(self.arrayScrollView)
            
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID1))!").getDocument{ [self](snap, error) in
                if let error = error {
                    fatalError("エラーした\(error)")
                }
                guard let data: [String : Any] = snap?.data() else {
                    print("ミスってる")
                    return
                }
                //
                if data.count == 126{
                    noImage.frame = CGRect(x: 0, y: 100, width: self.width, height: self.height / 3 - 100)
                    let image = UIImage(systemName: "pencil")
                    self.noImage.image = image
                    self.arrayScrollView.addSubview(self.noImage)
                    
                    
                    self.noLabel.frame = CGRect(x: 0, y: self.height / 3 + 20, width: width, height: 15)
                    self.noLabel.text = "ヒストリーはまだ登録されていません。"
                    self.noLabel.textAlignment = NSTextAlignment.center
                    self.arrayScrollView.addSubview(self.noLabel)
                    
                }else{
                    noImage.removeFromSuperview()
                    noLabel.removeFromSuperview()
                    
                    let dataNumber = data.count - 126
                    var dataArray: [Int] = []
                    //Firebaseのデータ数が126を上回っている場合、ヒストリーに登録されたものがある。
                    for i in 0 ..< dataNumber{
                        let a = i
                        dataArray.append(a)
                    }
                    //ヒストリーに登録されたものを配置
                    for i in 0 ..< dataArray.count{
                        let arrayButton = UIButton()
                        let arrayImageView = UIImageView()
                        let arrayLabel1 = UILabel()
                        let arrayLabel2 = UILabel()
                        let arrayLabel3 = UILabel()
                        let arrayLine = UIView()
                        let arrayStarLabel1 = UILabel()
                        let arrayStarLabel2 = UILabel()
                        let arrayStarLabel3 = UILabel()
                        let arrayStarLabel4 = UILabel()
                        let arrayStarLabel5 = UILabel()
                        
                        arrayButton.frame = CGRect(x: 5, y: CGFloat(100 * i ), width: self.width - 10, height: 80)
                        arrayButton.layer.cornerRadius = 10
                        arrayButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.8)
                        arrayButton.layer.shadowColor = UIColor.black.cgColor
                        arrayButton.layer.shadowOpacity = 0.5
                        arrayButton.layer.shadowRadius = 10
                        arrayButton.layer.borderColor = UIColor.black.cgColor
                        arrayButton.layer.borderWidth = 1
                        arrayButton.tag = i
                        arrayButton.addTarget(self, action: #selector(historyArrayButtonTap), for: .touchUpInside)
                        self.arrayScrollView.addSubview(arrayButton)
                        
                        arrayLabel1.frame = CGRect(x: 90, y: CGFloat(100 * i + 5), width: self.width / 3, height: 12)
                        arrayLabel1.textColor = .black
                        arrayLabel1.font = UIFont.systemFont(ofSize: 10)
                        self.arrayScrollView.addSubview(arrayLabel1)
                        
                        arrayLine.frame = CGRect(x: 90, y: CGFloat(100 * i + 17), width: arrayButton.frame.width - 80, height: 1)
                        arrayLine.backgroundColor = .systemGray4
                        self.arrayScrollView.addSubview(arrayLine)
                        
                        arrayLabel2.frame = CGRect(x: 90, y: CGFloat(100 * i + 19), width: self.width / 3, height: 12)
                        arrayLabel2.textColor = .black
                        arrayLabel2.font = UIFont.systemFont(ofSize: 10)
                        self.arrayScrollView.addSubview(arrayLabel2)
                        
                        arrayLabel3.frame = CGRect(x: 90, y: CGFloat(100 * i + 35), width: self.width / 3, height: 12)
                        arrayLabel3.textColor = .black
                        arrayLabel3.font = UIFont.systemFont(ofSize: 10)
                        self.arrayScrollView.addSubview(arrayLabel3)
                        
                        arrayImageView.frame = CGRect(x: 10, y: CGFloat(100 * i + 5), width: 70, height: 70)
                        arrayImageView.backgroundColor = .blue
                        self.arrayScrollView.addSubview(arrayImageView)
                        
                        arrayStarLabel1.frame = CGRect(x: 90, y: CGFloat(100 * i + 60), width: self.width / 3, height: 15)
                        arrayStarLabel1.text = "★"
                        arrayStarLabel1.font = UIFont.systemFont(ofSize: 14)
                        self.arrayScrollView.addSubview(arrayStarLabel1)
                        
                        arrayStarLabel2.frame = CGRect(x: 110, y: CGFloat(100 * i + 60), width: self.width / 3, height: 15)
                        arrayStarLabel2.text = "★"
                        arrayStarLabel2.font = UIFont.systemFont(ofSize: 14)
                        self.arrayScrollView.addSubview(arrayStarLabel2)
                        
                        arrayStarLabel3.frame = CGRect(x: 130, y: CGFloat(100 * i + 60), width: self.width / 3, height: 15)
                        arrayStarLabel3.text = "★"
                        arrayStarLabel3.font = UIFont.systemFont(ofSize: 14)
                        self.arrayScrollView.addSubview(arrayStarLabel3)
                        
                        arrayStarLabel4.frame = CGRect(x: 150, y: CGFloat(100 * i + 60), width: self.width / 3, height: 15)
                        arrayStarLabel4.text = "★"
                        arrayStarLabel4.font = UIFont.systemFont(ofSize: 14)
                        self.arrayScrollView.addSubview(arrayStarLabel4)
                        
                        arrayStarLabel5.frame = CGRect(x: 170, y: CGFloat(100 * i + 60), width: self.width / 3, height: 15)
                        arrayStarLabel5.text = "★"
                        arrayStarLabel5.font = UIFont.systemFont(ofSize: 14)
                        self.arrayScrollView.addSubview(arrayStarLabel5)
                        
                        guard let Object = data["Object\(i)"] as? [String: Any] else {
                            return
                        }
                        
                        guard let historySendNumber = Object["historySendNumber"] as? Int else {
                            return
                        }
                        guard let historySendText1 = Object["historySendText1"] as? String else {
                            return
                        }
                        guard let historySendText2 = Object["historySendText2"] as? String else {
                            return
                        }
                        
                        guard let historySendText4 = Object["historySendText4"] as? String else {
                            return
                        }
                        
                        
                        arrayLabel1.text = historySendText1
                        arrayLabel2.text = historySendText2
                        arrayLabel3.text = historySendText4
                        
                        sendText1 = arrayLabel1.text
                        sendText2 = arrayLabel2.text
                        sendText3 = arrayLabel3.text
                        
                        
                        if historySendNumber == 0{
                            arrayStarLabel1.textColor = .systemGray4
                            arrayStarLabel2.textColor = .systemGray4
                            arrayStarLabel3.textColor = .systemGray4
                            arrayStarLabel4.textColor = .systemGray4
                            arrayStarLabel5.textColor = .systemGray4
                        }else if historySendNumber == 1{
                            arrayStarLabel1.textColor = .yellow
                            arrayStarLabel2.textColor = .systemGray4
                            arrayStarLabel3.textColor = .systemGray4
                            arrayStarLabel4.textColor = .systemGray4
                            arrayStarLabel5.textColor = .systemGray4
                        }else if historySendNumber == 2{
                            arrayStarLabel1.textColor = .yellow
                            arrayStarLabel2.textColor = .yellow
                            arrayStarLabel3.textColor = .systemGray4
                            arrayStarLabel4.textColor = .systemGray4
                            arrayStarLabel5.textColor = .systemGray4
                        }else if historySendNumber == 3{
                            arrayStarLabel1.textColor = .yellow
                            arrayStarLabel2.textColor = .yellow
                            arrayStarLabel3.textColor = .yellow
                            arrayStarLabel4.textColor = .systemGray4
                            arrayStarLabel5.textColor = .systemGray4
                        }else if historySendNumber == 4{
                            arrayStarLabel1.textColor = .yellow
                            arrayStarLabel2.textColor = .yellow
                            arrayStarLabel3.textColor = .yellow
                            arrayStarLabel4.textColor = .yellow
                            arrayStarLabel5.textColor = .systemGray4
                        }else if historySendNumber == 5{
                            arrayStarLabel1.textColor = .yellow
                            arrayStarLabel2.textColor = .yellow
                            arrayStarLabel3.textColor = .yellow
                            arrayStarLabel4.textColor = .yellow
                            arrayStarLabel5.textColor = .yellow
                        }
                        arrayImageView.image = self.arrayImageView("\(arrayLabel3.text!)")
                    }
                }
            }
            
            
            addButton.frame = CGRect(x: width - 50, y: height / 2 + height / 4, width: 30, height: 30)
            addButton.backgroundColor = .red
            addButton.layer.cornerRadius = addButton.frame.width / 2
            addButton.setTitle("+", for: .normal)
            addButton.setTitleColor(.white, for: .normal)
            addButton.addTarget(self, action: #selector(addButtonTap), for: .touchUpInside)
            self.view.addSubview(addButton)
            
        }
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
        
        SVProgressHUD.dismiss()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let navigationItem1 = UIBarButtonItem(image: UIImage(systemName:"square.grid.2x2"), style: .plain, target: self, action: #selector(barTapped1(_:)))
        navigationItem1.tintColor = .black
        self.navigationItem.rightBarButtonItem = navigationItem1
        self.navigationItem.title = "ヒストリー"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        textField7.resignFirstResponder()
        textField8.resignFirstResponder()
        textField9.resignFirstResponder()
    }
    
    
    
    
    @objc func addButtonTap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history2") as! history2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
        
    @objc func loginEvent(){
        
        let address = mailField.text
        let password = passwardField.text
        if address == ""  || password! == ""{
            return
        }
        Auth.auth().signIn(withEmail: self.mailField.text!, password: self.passwardField.text!){ authResult, error in
            if error != nil {
                SVProgressHUD.showError(withStatus: "ログインに失敗しました。")
                return
            }
        }
        
        SVProgressHUD.show()
        viewDidLayoutSubviews()
        SVProgressHUD.showSuccess(withStatus: "ログインに成功しました。")
        print("d")
    }
    
    @objc func nyuukaiEvent(){
        
        for i in self.view.subviews{
            i.removeFromSuperview()
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "nyuukai") as! nyuukaiViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func barTapped1(_ sender: UIBarButtonItem){

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
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    @objc func historyArrayButtonTap(_ sender: UIButton){
        let userID1 = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID1))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            //全てのものをヒストリーに登録した際には９８になるので、1を引いてここで97を使う。
            for i in 0 ... 97{
                switch sender.tag{
                case i:
                    //タップしたボタンのタグで、タップされた際に
                    //history4ViewCOntrollerに送るプロパティを設定する。
                    guard let Object = data["Object\(i)"] as? [String: Any] else {
                        return
                    }
                    guard let historySendNumber = Object["historySendNumber"] as? Int else {
                        return
                    }
                    guard let historySendText1 = Object["historySendText1"] as? String else {
                        return
                    }
                    guard let historySendText2 = Object["historySendText2"] as? String else {
                        return
                    }
                    guard let historySendText3 = Object["historySendText3"] as? String else {
                        return
                    }
                    guard let historySendText4 = Object["historySendText4"] as? String else {
                        return
                    }
                    guard let historySendText5 = Object["historySendText5"] as? String else {
                        return
                    }
                    self.navigationController?.setNavigationBarHidden(false, animated: true)
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "history4") as! history4ViewController
                    vc.giveText1 = historySendText1
                    vc.giveText2 = historySendText2
                    vc.giveText3 = historySendText3
                    vc.giveText4 = historySendText4
                    vc.giveText5 = historySendText5
                    vc.giveNumber = historySendNumber
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                default:
                    print("この文たくさん出る")
                }
                
            }
            
        }
    }
    func arrayImageView(_ sendText: String) -> UIImage{
        //登録されたものを配置した際にsendTextに値を入れているので、それを用いて画像を貼り付ける
        let a = history2ViewController()
        if sendText == "味千ラーメン"{
            return a.buyImage1!
        }else if sendText == "パイクー麺" {
            return a.buyImage2!
        }else if sendText == "黒マー油ラーメン" {
            return a.buyImage3!
        }else if sendText == "全のせ拉麺"{
            return a.buyImage4!
        }else if sendText == "チャーシュー麺" {
            return a.buyImage5!
        }else if sendText == "醤油ラーメン" {
            return a.buyImage6!
        }else if sendText == "味噌豚骨ラーメン" {
            return a.buyImage7!
        }else if sendText == "辛みそラーメン" {
            return a.buyImage8!
        }else if sendText == "復刻ラーメン昭和味"{
            return a.buyImage9!
        }else if sendText == "贅沢切り炙りチャーシュー麺" {
            return a.buyImage10!
        }else if sendText == "贅沢切り炙りチャーシュー麺"{
            return a.buyImage11!
        }else if sendText == "ピリ辛ネギラーメン" {
            return a.buyImage12!
        }else if sendText == "つけ麺"{
            return a.buyImage13!
        }else if sendText == "辛つけ麺"{
            return a.buyImage14!
        }else if sendText == "太平燕" {
            return a.buyImage15!
        }else if sendText == "パリそば"{
            return a.buyImage16!
        }else if sendText == "焼きそば"{
            return a.buyImage17!
        }else if sendText == "ちゃんぽん"{
            return a.buyImage18!
        }else if sendText == "ピリ辛ちゃんぽん"{
            return a.buyImage19!
        }else if sendText == "ギョーザセット"{
            return a.buyImage20!
        }else if sendText == "唐揚げセット" {
            return a.buyImage21!
        }else if sendText == "半チャーハンセット" {
            return a.buyImage22!
        }else if sendText == "月替りセット" {
            return a.buyImage23!
        }else if sendText == "ハーフセット" {
            return a.buyImage24!
        }else if sendText == "スペシャルセット" {
            return a.buyImage25!
        }else if sendText == "チャーシュー玉子丼セット"{
            return a.buyImage26!
        }else if sendText == "辛みそチャーシューセット" {
            return a.buyImage27!
        }else if sendText == "チキン南蛮セット" {
            return a.buyImage28!
        }else if sendText == "満腹セット" {
            return a.buyImage28!
        }else if sendText == "炙りチャーシュー丼セット" {
            return a.buyImage29!
        }else if sendText == "DXセット" {
            return a.buyImage30!
        }else if sendText == "馬丼セット" {
            return a.buyImage31!
        }else if sendText == "ラーメンKids" {
            return a.buyImage32!
        }else if sendText == "ラーメンJr."{
            return a.buyImage33!
        }else if sendText == "焼きギョーザ5個入り/10個入り" {
            return a.buyImage34!
        }else if sendText == "唐揚げ5個" {
            return a.buyImage35!
        }else if sendText == "えのき牛肉巻き" {
            return a.buyImage36!
        }
        else if sendText == "エビ春巻き1本" {
            return a.buyImage37!
        }else if sendText == "グリーンサラダ" {
            return a.buyImage38!
        }else if sendText == "炙りチャーシュー" {
            return a.buyImage39!
        }else if sendText == "枝豆" {
            return a.buyImage40!
        }else if sendText == "豚足"{
            return a.buyImage41!
        }else if sendText == "チキン南蛮" {
            return a.buyImage42!
        }else if sendText == "ポテトフライ"{
            return a.buyImage43!
        }else if sendText == "ちょい飲みセットA"{
            return a.buyImage44!
        }else if sendText == "ちょい飲みセットB"{
            return a.buyImage45!
        }else if sendText == "ネギたっぷり" {
            return a.buyImage46!
        }else if sendText == "チャーシュー" {
            return a.buyImage47!
        }else if sendText == "野菜" {
            return a.buyImage48!
        }else if sendText == "半熟玉子" {
            return a.buyImage49!
        }else if sendText == "パイクー(2個)" {
            return a.buyImage50!
        }else if sendText == "木耳" {
            return a.buyImage51!
        }else if sendText == "もやし" {
            return a.buyImage52!
        }else if sendText == "コーン" {
            return a.buyImage53!
        }else if sendText == "メンマ"{
            return a.buyImage54!
        }else if sendText == "チャーハン(スープ付き)" {
            return a.buyImage55!
        }else if sendText == "ピリ辛チャーハン(スープ付き)" {
            return a.buyImage56!
        }else if sendText == "大人の黒チャーハン(スープ付き)" {
            return a.buyImage57!
        }else if sendText == "チャーシュー玉子丼" {
            return a.buyImage58!
        }else if sendText == "辛みそチャーシュー丼" {
            return a.buyImage59!
        }else if sendText == "ライス" {
            return a.buyImage60!
        }else if sendText == "おにぎり1個" {
            return a.buyImage61!
        }else if sendText == "馬丼"{
            return a.buyImage62!
        }else if sendText == "杏仁豆腐"{
            return a.buyImage63!
        }else if sendText == "ウーロン茶" {
            return a.buyImage64!
        }else if sendText == "生ビール(中)" {
            return a.buyImage65!
        }else if sendText == "瓶ビール(中瓶)" {
            return a.buyImage66!
        }else if sendText == "ノンアルコールビール(小瓶)" {
            return a.buyImage67!
        }else if sendText == "(米焼酎)白岳"{
            return a.buyImage68!
        }else if sendText == "(芋焼酎)黒霧島"{
            return a.buyImage69!
        }else if sendText == "味千とんこつラ−メン　２430円(税込み)" {
            return a.buy2Image1!
            
        }else if sendText == "[味千×桂花]桂花（３食)2,754円（税込み)" {
            return a.buy2Image2!
            
        }else if sendText == "味千とんこつラーメンギフト2,730円（税込み）" {
            return a.buy2Image3!
        }else if sendText == "熊本味千ラーメンギフトセット4,420円（税込み）"{
            return a.buy2Image4!
        }else if sendText == "熊本豚骨ラーメン２食入り280円（税込み）" {
            return a.buy2Image5!
        }else if sendText == "匠ラーメン＋味千拉麺丼セット2,000円（税込み）" {
            return a.buy2Image6!
        }else if sendText == "[味千拉麺]　匠ラーメン１食594円（税込み）" {
            return a.buy2Image7!
        }else if sendText == "[味千拉麺]　匠ラーメン５食2,970円（税込み）" {
            return a.buy2Image8!
        }else if sendText == "[味千拉麺]　匠ラーメン１０食5,940円（税込み）" {
            return a.buy2Image9!
        }else if sendText == "味千とんこつラーメンギフト2,730円（税込み）" {
            return a.buy2Image10!
        }else if sendText == "熊本味千ラーメンギフトセット4,420円（税込み）" {
            return a.buy2Image11!
        }else if sendText == "ギフト　黒マー油ラーメン900円（税込）"{
            return a.buy2Image12!
        }else if sendText == "ギフト　味千ラーメンBOX900円（税込み）" {
            return a.buy2Image13!
        }else if sendText == "味千ラーメンBOX×２箱2,800円（税込み）" {
            return a.buy2Image14!
        }else if sendText == "[冷蔵配送]くまもと桂花特製太肉519円（税込み）" {
            return a.buy2Image15!
        }else if sendText == "ラーメン特製ピリ辛ソース400円（税込み）"{
            return a.buy2Image16!
        }else if sendText == "特製味付けメンマ864円（税込）" {
            return a.buy2Image17!
        }else if sendText == "熊本名物　太平燕　２食１セット650円（税込み）" {
            return a.buy2Image18!
        }else if sendText == "熊本名物　太平燕２食２セット1,300円（税込み）" {
            return a.buy2Image19!
        }else if sendText == "熊本名物　太平燕２食４セット2,600円（税込）" {
            return a.buy2Image20!
        }else if sendText == "熊本名物　太平燕　２食６セット3,900円（税込み）" {
            return a.buy2Image21!
        }else if sendText == "熊本名物　太平燕２食入6,500円（税込み）" {
            return a.buy2Image22!
        }else if sendText == "[皇帝]　太平燕あっさりとんこつ味340円（税込）" {
            return a.buy2Image23!
        }else if sendText == "[皇帝]　太平燕　チキンカツ味340円（税込み）"{
            return a.buy2Image24!
        }else if sendText == "[皇帝]　太平燕　辛みそ味340円（税込み）" {
            return a.buy2Image25!
        }else if sendText == "[冷蔵配送]くまもと桂花特製太肉519円（税込み）"{
            return a.buy2Image26!
        }else if sendText == "特製味付けメンマ864円（税込み）" {
            return a.buy2Image27!
        }else if sendText == "特製味付けメンマ864円（税込み）" {
            return a.buy2Image28!
        }else{
            return a.buyImage1!
        }
    }
}
