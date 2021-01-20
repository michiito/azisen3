
//１７〜７７　基本部品
//８８〜３５３　基本部品の配置
//３５７〜４５２　画面を開いた際に各countButtonに画像と取得日を載せるかを判別する処理
//４５７〜１７７７　各countButtonを押した際の処理。各ボタンを押した際の処理に大きな違いはない
//１７８３〜２０１９　スタンプを取得するための処理


import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import SVProgressHUD

class stumpViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    let scrollView = UIScrollView()
    //お店で確かめたところ、QRコードは使われていなかったようなので、Labelで再現。
    let qrView = UIView()
    let qrLabel = UILabel()
    
    let numberStumpView = UIView()
    let numberStumpLabel1 = UILabel()
    let numberStumpLabel2 = UILabel()
    var numberStumpLabel3 = UILabel()
    
    let text = UITextView()
    //画面の下半分にある
    let countButton1 = UIButton()
    let countButton2 = UIButton()
    let countButton3 = UIButton()
    let countButton4 = UIButton()
    let countButton5 = UIButton()
    let countButton6 = UIButton()
    let countButton7 = UIButton()
    let countButton8 = UIButton()
    let countButton9 = UIButton()
    let countButton10 = UIButton()
    let countButton11 = UIButton()
    let countButton12 = UIButton()
    let countButton13 = UIButton()
    let countButton14 = UIButton()
    let countButton15 = UIButton()
    let image = UIImage(named: "stump")
    let image2 = UIImage(named: "stumpCupon")
    
    let label = UILabel()
    
    let commentView = UIView()
    let commentLabel1 = UILabel()
    let commentLabel2 = UILabel()
    let commentLabel3 = UILabel()
    
    let aView = UIView()
    let label2 = UILabel()
    //認証番号　動作確認しやすいように固定
    var pass = 1111
    //countButtonを押すと出てくるView
    let ninsyoView1 = UIView()
    let ninsyoView2 = UIView()
    let ninsyoLabel1 = UILabel()
    let ninsyoLabel2 = UILabel()
    let ninsyoTextField = UITextField()
    let ninsyoButton1 = UIButton()
    let ninsyoButton2 = UIButton()
    let ninsyoButton3 = UIButton()
    let ninsyoLine1 = UIView()
    let ninsyoLine2 = UIView()
    let nextView1 = UIView()
    let nextView2 = UIView()
    let nextLabel = UILabel()
    let nextLine = UIView()
    let nextButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "スタンプ"
        
    }
    override func viewDidLayoutSubviews() {
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        scrollView.contentSize = CGSize(width: 0, height: height + 160)
        self.view.addSubview(scrollView)
        
        qrView.frame = CGRect(x: 0, y: 0, width: width, height: 40)
        qrView.backgroundColor = .systemGray3
        self.scrollView.addSubview(qrView)
        
        qrLabel.frame = CGRect(x: 0, y: 5, width: width, height: 30)
        qrLabel.text = "QRコードを表示"
        qrLabel.textAlignment = NSTextAlignment.center
        qrLabel.font = UIFont.systemFont(ofSize: 20)
        self.qrView.addSubview(qrLabel)
        
        numberStumpView.frame = CGRect(x: 5, y: 50, width: width - 10, height: 60)
        numberStumpView.layer.cornerRadius = 5
        numberStumpView.layer.shadowColor = UIColor.gray.cgColor
        self.scrollView.addSubview(numberStumpView)
        
        numberStumpLabel1.frame = CGRect(x: 5, y: 5, width: width, height: 13)
        numberStumpLabel1.text = "累計スタンプ数"
        numberStumpLabel1.textAlignment = NSTextAlignment.left
        numberStumpLabel1.font = UIFont.systemFont(ofSize: 10)
        self.numberStumpView.addSubview(numberStumpLabel1)
        
        numberStumpLabel2.frame = CGRect(x: width - 40, y: numberStumpView.frame.height - 20, width: 15, height: 13)
        numberStumpLabel2.text = "個"
        numberStumpLabel2.font = UIFont.systemFont(ofSize: 10)
        self.numberStumpView.addSubview(numberStumpLabel2)
        numberStumpLabel3.frame = CGRect(x: 30, y: 30, width: width - 80, height: 15)
        let userID = Auth.auth().currentUser?.uid
        //FirebaseのstumpNmberの値を代入する。
        if userID != nil{
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            let a = data["stumpNumber"]! as! Int
            self.numberStumpLabel3.text = "\(String(a))"
        }
            
        }
        
        numberStumpLabel3.font = UIFont.systemFont(ofSize: 20)
        numberStumpLabel3.textColor = .red
        numberStumpLabel3.textAlignment = NSTextAlignment.right
        self.numberStumpView.addSubview(numberStumpLabel3)
        
        text.frame = CGRect(x: 4, y: 120, width: width - 8, height: 180)
        text.text = "■お会計時に店員にご提示ください。\n■お会計の合計金額に対して500円以上で1日1回1スタンプを捺印いたします。\n■本スタンプは1会計1名様につき1日1回、1スタンプのご利用となります。\n■本スタンプ・クーポン券は、日本国内の味千本店、東バイパス店、光の森店、イオンタウン田崎店、富合店、荒尾グリーンランド前店、鹿本店、有明店、水俣店のみの限定となります。\n■味千感謝デー・その他イベントの日ではご利用できません。\n■その他のスタンプ・クーポン券とは併用できません。\nこのクーポン券はテイクアウト商品のご利用ができません。"
        text.isEditable = false
        text.isSelectable = false
        self.scrollView.addSubview(text)
        
        countButton1.frame = CGRect(x: 5, y: 310, width: width / 4 - 7, height: width / 4 - 7)
        countButton1.layer.cornerRadius = 5
        countButton1.backgroundColor = .systemGray2
        countButton1.setTitleColor(.black, for: .normal)
        countButton1.titleLabel?.textAlignment = NSTextAlignment.center
        countButton1.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton1.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton1.addTarget(self, action: #selector(countTapped1), for: .touchUpInside)
        self.scrollView.addSubview(countButton1)
        
        countButton2.frame = CGRect(x: 10 + countButton1.frame.width, y: 310, width: width / 4 - 7, height: countButton1.frame.width)
        countButton2.layer.cornerRadius = 5
        countButton2.setTitleColor(.black, for: .normal)
        countButton2.titleLabel?.textAlignment = NSTextAlignment.center
        countButton2.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton2.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton2.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton2.backgroundColor = .systemGray2
        countButton2.addTarget(self, action: #selector(countTapped2), for: .touchUpInside)
        self.scrollView.addSubview(countButton2)
        
        countButton3.frame = CGRect(x: 15 + countButton1.frame.width * 2, y: 310, width: width / 4 - 7, height: countButton1.frame.width)
        countButton3.layer.cornerRadius = 5
        countButton3.backgroundColor = .systemGray2
        countButton3.setTitleColor(.black, for: .normal)
        countButton3.titleLabel?.textAlignment = NSTextAlignment.center
        countButton3.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton3.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton3.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton3.addTarget(self, action: #selector(countTapped3), for: .touchUpInside)
        self.scrollView.addSubview(countButton3)
        
        countButton4.frame = CGRect(x: 20 + countButton1.frame.width * 3, y: 310, width: width / 4 - 7, height: countButton1.frame.width)
        countButton4.layer.cornerRadius = 5
        countButton4.backgroundColor = .systemGray2
        countButton4.setTitleColor(.black, for: .normal)
        countButton4.titleLabel?.textAlignment = NSTextAlignment.center
        countButton4.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton4.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton4.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton4.addTarget(self, action: #selector(countTapped4), for: .touchUpInside)
        self.scrollView.addSubview(countButton4)
        
        countButton5.frame = CGRect(x: 5, y: 310 + countButton1.frame.width + 5, width: width / 4 - 7, height: countButton1.frame.width)
        countButton5.layer.cornerRadius = 5
        countButton5.setTitleColor(.black, for: .normal)
        countButton5.setImage(image2, for: .normal)
        countButton5.titleLabel?.textAlignment = NSTextAlignment.center
        countButton5.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton5.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton5.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton5.backgroundColor = .systemGray2
        countButton5.addTarget(self, action: #selector(countTapped5), for: .touchUpInside)
        self.scrollView.addSubview(countButton5)
        
        countButton6.frame = CGRect(x: 10 + countButton1.frame.width, y: 310 + countButton1.frame.width + 5, width: width / 4 - 7, height: countButton1.frame.width)
        countButton6.layer.cornerRadius = 5
        countButton6.setTitleColor(.black, for: .normal)
        countButton6.titleLabel?.textAlignment = NSTextAlignment.center
        countButton6.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton6.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton1.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton6.backgroundColor = .systemGray2
        countButton6.addTarget(self, action: #selector(countTapped6), for: .touchUpInside)
        self.scrollView.addSubview(countButton6)
        
        countButton7.frame = CGRect(x: 15 + countButton1.frame.width * 2, y: 310 + countButton1.frame.width + 5, width: width / 4 - 7, height: countButton1.frame.width)
        countButton7.layer.cornerRadius = 5
        countButton7.setTitleColor(.black, for: .normal)
        countButton7.titleLabel?.textAlignment = NSTextAlignment.center
        countButton7.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton7.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton7.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton7.backgroundColor = .systemGray2
        countButton7.addTarget(self, action: #selector(countTapped7), for: .touchUpInside)
        self.scrollView.addSubview(countButton7)
        
        countButton8.frame = CGRect(x: 20 + countButton1.frame.width * 3, y: 310 + countButton1.frame.width + 5, width: width / 4 - 7, height: countButton1.frame.width)
        countButton8.layer.cornerRadius = 5
        countButton8.backgroundColor = .systemGray2
        countButton8.setTitleColor(.black, for: .normal)
        countButton8.titleLabel?.textAlignment = NSTextAlignment.center
        countButton8.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton8.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton8.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton8.addTarget(self, action: #selector(countTapped8), for: .touchUpInside)
        self.scrollView.addSubview(countButton8)
        
        countButton9.frame = CGRect(x: 5, y: 310 + countButton1.frame.width * 2 + 10, width: width / 4 - 7, height: countButton1.frame.width)
        countButton9.layer.cornerRadius = 5
        countButton9.backgroundColor = .systemGray2
        countButton9.setTitleColor(.black, for: .normal)
        countButton9.titleLabel?.textAlignment = NSTextAlignment.center
        countButton9.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton9.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton9.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton9.addTarget(self, action: #selector(countTapped9), for: .touchUpInside)
        self.scrollView.addSubview(countButton9)
        
        countButton10.frame = CGRect(x: 10 + countButton1.frame.width, y: 310 + countButton1.frame.width * 2 + 10, width: width / 4 - 7, height: countButton1.frame.width)
        countButton10.layer.cornerRadius = 5
        countButton10.backgroundColor = .systemGray2
        countButton10.setImage(image2, for: .normal)
        countButton10.setTitleColor(.black, for: .normal)
        countButton10.titleLabel?.textAlignment = NSTextAlignment.center
        countButton10.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton10.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton10.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton10.addTarget(self, action: #selector(countTapped10), for: .touchUpInside)
        self.scrollView.addSubview(countButton10)
        
        countButton11.frame = CGRect(x: 15 + countButton1.frame.width * 2, y: 310 + countButton1.frame.width * 2 + 10, width: width / 4 - 7, height: countButton1.frame.width)
        countButton11.layer.cornerRadius = 5
        countButton11.setTitleColor(.black, for: .normal)
        countButton11.titleLabel?.textAlignment = NSTextAlignment.center
        countButton11.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton11.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton11.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton11.backgroundColor = .systemGray2
        countButton11.addTarget(self, action: #selector(countTapped11), for: .touchUpInside)
        self.scrollView.addSubview(countButton11)
        
        countButton12.frame = CGRect(x: 20 + countButton1.frame.width * 3, y: 310 + countButton1.frame.width * 2 + 10, width: width / 4 - 7, height: countButton1.frame.width)
        countButton12.layer.cornerRadius = 5
        countButton12.setTitleColor(.black, for: .normal)
        countButton12.titleLabel?.textAlignment = NSTextAlignment.center
        countButton12.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton12.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton12.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton12.backgroundColor = .systemGray2
        countButton12.addTarget(self, action: #selector(countTapped12), for: .touchUpInside)
        self.scrollView.addSubview(countButton12)
        
        countButton13.frame = CGRect(x: 5, y: 310 + countButton1.frame.width * 3 + 15, width: width / 4 - 7, height: countButton1.frame.width)
        countButton13.layer.cornerRadius = 5
        countButton13.setTitleColor(.black, for: .normal)
        countButton13.titleLabel?.textAlignment = NSTextAlignment.center
        countButton13.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton13.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton13.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton13.backgroundColor = .systemGray2
        countButton13.addTarget(self, action: #selector(countTapped13), for: .touchUpInside)
        self.scrollView.addSubview(countButton13)
        
        countButton14.frame = CGRect(x: 10 + countButton1.frame.width, y: 310 + countButton1.frame.width * 3 + 15, width: width / 4 - 7, height: countButton1.frame.width)
        countButton14.layer.cornerRadius = 5
        countButton14.backgroundColor = .systemGray2
        countButton14.setTitleColor(.black, for: .normal)
        countButton14.titleLabel?.textAlignment = NSTextAlignment.center
        countButton14.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton14.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton14.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton14.addTarget(self, action: #selector(countTapped14), for: .touchUpInside)
        self.scrollView.addSubview(countButton14)
        
        countButton15.frame = CGRect(x: 15 + countButton1.frame.width * 2, y: 310 + countButton1.frame.width * 3 + 15, width: width / 4 - 7, height: countButton1.frame.width)
        countButton15.layer.cornerRadius = 5
        countButton15.setTitleColor(.black, for: .normal)
        countButton15.setImage(image2, for: .normal)
        countButton15.titleLabel?.textAlignment = NSTextAlignment.center
        countButton15.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        countButton15.titleEdgeInsets = UIEdgeInsets(top: 80, left: -70, bottom: 10, right: 0)
        countButton15.imageEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 0)
        countButton15.backgroundColor = .systemGray2
        countButton15.addTarget(self, action: #selector(countTapped15), for: .touchUpInside)
        self.scrollView.addSubview(countButton15)
        
        
        label.frame = CGRect(x: 5, y: countButton15.layer.position.y + countButton15.frame.height - 30, width: width, height: 10)
        label.text = "スタンプを貯めるとクーポンが発行されます。"
        label.font = UIFont.systemFont(ofSize: 12)
        self.scrollView.addSubview(label)
        
        commentView.frame = CGRect(x: 5, y: label.layer.position.y + 30, width: width - 10, height: countButton15.frame.height - 10)
        commentView.backgroundColor = UIColor(red: 0.450, green: 0.074, blue: 0.133, alpha: 1)
        self.scrollView.addSubview(commentView)
        
        commentLabel1.frame = CGRect(x: 5, y: 10, width: width - 20, height: 13)
        commentLabel1.textColor = .white
        commentLabel1.text = "★5個　　　　ギョーザ１皿（5個）無料"
        commentLabel1.font = UIFont.systemFont(ofSize: 12)
        self.commentView.addSubview(commentLabel1)
        
        commentLabel2.frame = CGRect(x: 5, y: 30, width: width - 20, height: 13)
        commentLabel2.textColor = .white
        commentLabel2.text = "★10個　　　　ラーメン類大盛無料"
        commentLabel2.font = UIFont.systemFont(ofSize: 12)
        self.commentView.addSubview(commentLabel2)
        
        commentLabel3.frame = CGRect(x: 5, y: 50, width: width - 20, height: 13)
        commentLabel3.textColor = .white
        commentLabel3.text = "★15個　　　　味千ラーメン1杯無料"
        commentLabel3.font = UIFont.systemFont(ofSize: 12)
        self.commentView.addSubview(commentLabel3)
        
        label2.frame = CGRect(x: 5, y: commentView.layer.position.y + commentView.frame.height - 25, width: width - 10, height: 10)
        label2.text = "複数のスタンプカードへの捺印は不可です。"
        label2.font = UIFont.systemFont(ofSize: 12)
        self.scrollView.addSubview(label2)
        
        ninsyoView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        ninsyoView1.frame = CGRect(x: width, y: 0, width: width, height: self.height)
        self.scrollView.addSubview(ninsyoView1)
        
        nextView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        nextView1.frame = CGRect(x: -width, y: 0, width: width, height: self.height)
        self.scrollView.addSubview(nextView1)
        
        
        //359行で大量のコードを書かないように配列にする。
        let buttonArray = [countButton1,countButton2,countButton3,countButton4,countButton5,countButton6,countButton7,countButton8,countButton9,countButton10,countButton11,countButton12,countButton13,countButton14,countButton15]
        //FirebaseのstumpNumberの値によって、画面を開いた際に画像をセットするcountButtonを決める
        if userID != nil{
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
                if let error = error {
                    fatalError("エラーした\(error)")
                }
                guard let data: [String : Any] = snap?.data() else {
                    print("ミスってる")
                    return
                }
                if data["stumpNumber"]! as! Int == 15{
                    for i in 0 ... 14{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                    
                }else if data["stumpNumber"]! as! Int == 14{
                    for i in 0 ... 13{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                    
                }else if data["stumpNumber"]! as! Int == 13{
                    for i in 0 ... 12{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }else if data["stumpNumber"]! as! Int == 12{
                    for i in 0 ... 11{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }else if data["stumpNumber"]! as! Int == 11{
                    for i in 0 ... 10{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                    
                }else if data["stumpNumber"]! as! Int == 10{
                    for i in 0 ... 9{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }else if data["stumpNumber"]! as! Int == 9{
                    for i in 0 ... 8{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }else if data["stumpNumber"]! as! Int == 8{
                    for i in 0 ... 7{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                
                }else if data["stumpNumber"]! as! Int == 7{
                    for i in 0 ... 6{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 6{
                    for i in 0 ... 5{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 5{
                    for i in 0 ... 4{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 4{
                    for i in 0 ... 3{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 3{
                    for i in 0 ... 2{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 2{
                    for i in 0 ... 1{
                        buttonArray[i].setImage(self.image, for: .normal)
                    }
                }
                if data["stumpNumber"]! as! Int == 1{
                    buttonArray[0].setImage(self.image, for: .normal)
                }
                
                //取得した日付を載せる必要のあるボタンを確認する
                for i in 1 ..< 15{
                    if i == 15{
                        if data["stumpDay\(i)"]! as? String != ""{
                            buttonArray[i - 1].setTitle(data["stumpDay\(i)"]! as? String, for: .normal)
                        }
                    }else{
                        if data["stumpDay\(i)"]! as? String != ""{
                            buttonArray[i - 1].setTitle(data["stumpDay\(i)"]! as? String, for: .normal)
                            print(i)//確認用
                        }
                    }
                }
            }
        }
        scrollView.contentSize = CGSize(width: 0, height: self.label2.layer.position.y + self.label2.frame.height + 80)

    }
    //countTapped2〜15もほとんど同じ処理
    @objc func countTapped1(){
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
            //stumpNumberが0の時だけninsyoViewを呼び出す。
            if data["stumpNumber"]! as! Int == 0{
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
    }
    @objc func countTapped2(){
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
            if data["stumpNumber"]! as! Int == 1{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
        
    }
    @objc func countTapped3(){
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
            if data["stumpNumber"]! as! Int == 2{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
    
    }
    @objc func countTapped4(){
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
            if data["stumpNumber"]! as! Int == 3{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
        
    }
    @objc func countTapped5(){
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
            if data["stumpNumber"]! as! Int == 4{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
        
    }
    @objc func countTapped6(){
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
            if data["stumpNumber"]! as! Int == 5{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
        
    }
    @objc func countTapped7(){
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
            if data["stumpNumber"]! as! Int == 6{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
    }
    @objc func countTapped8(){
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
            if data["stumpNumber"]! as! Int == 7{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
    }
    @objc func countTapped9(){
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
            if data["stumpNumber"]! as! Int == 8{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
    }
    @objc func countTapped10(){
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
            if data["stumpNumber"]! as! Int == 9{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
    }
    @objc func countTapped11(){
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
            if data["stumpNumber"]! as! Int == 10{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
        
    }
    @objc func countTapped12(){
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
            if data["stumpNumber"]! as! Int == 11{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
    }
    @objc func countTapped13(){
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
            if data["stumpNumber"]! as! Int == 12{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
        
    }
    @objc func countTapped14(){
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
            if data["stumpNumber"]! as! Int == 13{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.text = ""
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                
                
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
                
            }
        }
        }
        
    }
    @objc func countTapped15(){
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
            if data["stumpNumber"]! as! Int == 14{
                
                self.ninsyoView1.layer.position.x = self.view.layer.position.x
                self.ninsyoView2.backgroundColor = .white
                self.ninsyoView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 145)
                self.ninsyoView2.layer.cornerRadius = 10
                self.ninsyoView1.addSubview(self.ninsyoView2)
                
                self.ninsyoLabel1.frame = CGRect(x: 0, y: 10, width: self.ninsyoView2.frame.width, height: 10)
                self.ninsyoLabel1.text = "スタンプ認証"
                self.ninsyoLabel1.textAlignment = NSTextAlignment.center
                self.ninsyoLabel1.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel1)
                
                self.ninsyoLabel2.frame = CGRect(x: 0, y: 25, width: self.ninsyoView2.frame.width, height: 35)
                self.ninsyoLabel2.numberOfLines = 0
                self.ninsyoLabel2.text = "スタンプを1個押します。\n認証番号を入力してください。"
                self.ninsyoLabel2.textAlignment = NSTextAlignment.center
                self.ninsyoLabel2.font = UIFont.systemFont(ofSize: 13)
                self.ninsyoView2.addSubview(self.ninsyoLabel2)
                
                self.ninsyoTextField.frame = CGRect(x: 10, y: 70, width: self.ninsyoView2.frame.width - 20, height: 20)
                self.ninsyoTextField.placeholder = "認証番号"
                self.ninsyoTextField.keyboardType = UIKeyboardType.phonePad
                self.ninsyoView2.addSubview(self.ninsyoTextField)
                
                self.ninsyoLine1.frame = CGRect(x: 0, y: 105, width: self.ninsyoView2.frame.width, height: 1)
                self.ninsyoLine1.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine1)
                
                self.ninsyoLine2.frame = CGRect(x: self.ninsyoView2.frame.width / 2, y: 105, width: 1, height: 40)
                self.ninsyoLine2.backgroundColor = .black
                self.ninsyoView2.addSubview(self.ninsyoLine2)
                
                self.ninsyoButton1.frame = CGRect(x: 0, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton1.setTitle("キャンセル", for: .normal)
                self.ninsyoButton1.setTitleColor(.blue, for: .normal)
                self.ninsyoButton1.addTarget(self, action: #selector(self.ninsyoButton1Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton1)
                
                self.ninsyoButton2.frame = CGRect(x: self.ninsyoView2.frame.width / 2 + 1, y: 106, width: self.ninsyoView2.frame.width / 2 - 1, height: 39)
                self.ninsyoButton2.setTitle("認証", for: .normal)
                self.ninsyoButton2.setTitleColor(.blue, for: .normal)
                self.ninsyoButton2.addTarget(self, action: #selector(self.ninsyoButton2Tap), for: .touchUpInside)
                self.ninsyoView2.addSubview(self.ninsyoButton2)
                self.ninsyoTextField.text = ""
            }else{
                self.nextView1.layer.position.x = self.view.layer.position.x
                
                self.nextView2.backgroundColor = .white
                self.nextView2.frame = CGRect(x: 50, y: 150, width: self.width - 100, height: 100)
                self.nextView2.layer.cornerRadius = 10
                self.nextView1.addSubview(self.nextView2)
                
                self.nextLabel.frame = CGRect(x: 0, y: 10, width: self.nextView2.frame.width, height: 50)
                self.nextLabel.text = "来店スタンプは1日1個までです。"
                self.nextLabel.textAlignment = NSTextAlignment.center
                self.nextLabel.font = UIFont.systemFont(ofSize: 13)
                self.nextView2.addSubview(self.nextLabel)
                
                self.nextLine.frame = CGRect(x: 0, y: 50, width: self.nextView2.frame.width, height: 1)
                self.nextLine.backgroundColor = .black
                self.nextView2.addSubview(self.nextLine)
                
                self.nextButton.frame = CGRect(x: 0, y: 52, width: self.nextView2.frame.width, height: 48)
                self.nextButton.setTitle("OK", for: .normal)
                self.nextButton.setTitleColor(.blue, for: .normal)
                self.nextButton.titleLabel?.textAlignment = NSTextAlignment.center
                self.nextButton.addTarget(self, action: #selector(self.ninsyoButton3Tap), for: .touchUpInside)
                self.nextView2.addSubview(self.nextButton)
            }
        }
        }
        
    }
    @objc func ninsyoButton1Tap(){
        if self.ninsyoView1.layer.position.x == self.view.layer.position.x{
            self.ninsyoView1.layer.position.x = self.width * 3
      }
    }
    @objc func ninsyoButton2Tap(){
        let userID = Auth.auth().currentUser?.uid
        //押された際の日付を取得
        let formatter = DateFormatter()
        let now = Date()
        formatter.dateFormat = "yyyy年MM月dd日"
        
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            //現在のstumpNumberで判別する。
            switch data["stumpNumber"]! as! Int{
            case 0:
                //ninsyoTextFieldのテキストが「１１１１」だった場合、この処理を行う
                if self.ninsyoTextField.text == String(self.pass){
                    //stumpNumberに１を足していく。
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":1],merge: true)
                    self.numberStumpLabel3.text = "1"
                    self.countButton1.setImage(self.image, for: .normal)
                    self.countButton1.setTitleColor(.black, for: .normal)
                    self.countButton1.setTitle(formatter.string(from: now as Date), for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay1":formatter.string(from: now as Date)],merge: true)
                    print("a")
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 1:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":2],merge: true)
                    self.numberStumpLabel3.text = "2"
                    self.countButton2.setImage(self.image, for: .normal)
                    self.countButton2.setTitleColor(.black, for: .normal)
                    self.countButton2.setTitle(formatter.string(from: now as Date), for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay2":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 2:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":3],merge: true)
                    self.numberStumpLabel3.text = "3"
                    self.countButton3.setImage(self.image, for: .normal)
                    self.countButton3.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton3.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay3":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 3:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":4],merge: true)
                    self.numberStumpLabel3.text = "4"
                    self.countButton4.setImage(self.image, for: .normal)
                    self.countButton4.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton4.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay4":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 4:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":5],merge: true)
                    self.numberStumpLabel3.text = "5"
                    self.countButton5.setImage(self.image, for: .normal)
                    self.countButton5.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton5.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay5":formatter.string(from: now as Date)],merge: true)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").getDocument{(snap, error) in
                        if let error = error {
                            fatalError("エラーした\(error)")
                        }
                        guard let data: [String : Any] = snap?.data() else {
                            print("ミスってる")
                            return
                        }
                        //５の倍数の際はクーポンを足していく。
                        let a = data["gyozaCupon"]! as? Int
                        let b = a! + 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["gyozaCupon":b],merge: true)
                    }
                    SVProgressHUD.showSuccess(withStatus: "クーポンを入手しました。")
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                
                break
            case 5:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":6],merge: true)
                    self.numberStumpLabel3.text = "6"
                    self.countButton6.setImage(self.image, for: .normal)
                    self.countButton6.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton6.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay6":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                
                break
            case 6:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":7],merge: true)
                    self.numberStumpLabel3.text = "7"
                    self.countButton7.setImage(self.image, for: .normal)
                    self.countButton7.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton7.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay7":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 7:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":8],merge: true)
                    self.numberStumpLabel3.text = "8"
                    self.countButton8.setImage(self.image, for: .normal)
                    self.countButton8.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton8.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay8":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 8:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":9],merge: true)
                    self.numberStumpLabel3.text = "9"
                    self.countButton9.setImage(self.image, for: .normal)
                    self.countButton9.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton9.setTitleColor(.black, for: .normal)

                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay9":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 9:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":10],merge: true)
                    self.numberStumpLabel3.text = "10"
                    self.countButton10.setImage(self.image, for: .normal)
                    self.countButton10.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton10.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay10":formatter.string(from: now as Date)],merge: true)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").getDocument{(snap, error) in
                        if let error = error {
                            fatalError("エラーした\(error)")
                        }
                        guard let data: [String : Any] = snap?.data() else {
                            print("ミスってる")
                            return
                        }
                        let a = data["oomoriCupon"]! as? Int
                        let b = a! + 1
                        Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["gyozaCupon":b],merge: true)
                   }
                    SVProgressHUD.showSuccess(withStatus: "クーポンを入手しました。")
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 10:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":11],merge: true)
                    self.numberStumpLabel3.text = "11"
                    self.countButton11.setImage(self.image, for: .normal)
                    self.countButton11.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton11.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay11":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 11:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":12],merge: true)
                    self.numberStumpLabel3.text = "12"
                    self.countButton12.setImage(self.image, for: .normal)
                    self.countButton12.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton12.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay12":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 12:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":13],merge: true)
                    self.numberStumpLabel3.text = "13"
                    self.countButton13.setImage(self.image, for: .normal)
                    self.countButton13.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton13.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay13":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 13:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":14],merge: true)
                    self.numberStumpLabel3.text = "14"
                    self.countButton14.setImage(self.image, for: .normal)
                    self.countButton14.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton14.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay14":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            case 14:
                if self.ninsyoTextField.text == String(self.pass){
                Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpNumber":15],merge: true)
                    self.numberStumpLabel3.text = "15"
                    self.countButton15.setImage(self.image, for: .normal)
                    self.countButton15.setTitle(formatter.string(from: now as Date), for: .normal)
                    self.countButton15.setTitleColor(.black, for: .normal)
                    Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["stumpDay15":formatter.string(from: now as Date)],merge: true)
                }else{
                    SVProgressHUD.showError(withStatus: "番号が違います")
                }
                break
            default:
                break
            }
        }
        
        self.ninsyoView1.layer.position.x = self.width * 3
    }
    @objc func ninsyoButton3Tap(){
        if self.nextView1.layer.position.x == self.view.layer.position.x{
            self.nextView1.layer.position.x = -self.width * 3
    }
    }

}

