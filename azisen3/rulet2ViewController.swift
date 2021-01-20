
//９〜４7　基本部品
//４９〜５６　ルーレットの画像を貼り付け
//５８〜１０４　部品を基本viewに貼り付け
//１０６〜１２３　スタートボタンをタップした際の処理、ルーレットを回転
//１２４〜１６４　ルーレットの回転、当たり判定
//１６５〜１８６　当たりボタン、外れボタンを押した時の処理

import UIKit
import Firebase
import SVProgressHUD

class rulet2ViewController: UIViewController {
    
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    
    let image = UIImage(named: "rulet1")
    let imageView = UIImageView()
    let label = UILabel()
    let maruView = UIView()
    let maruView2 = UIView()
    let maruView3 = UIView()
    let maruView4 = UIView()
    let startButton = UIButton()
    //triangleはルーレットの頂点にある逆三角形
    let ruletImage = UIImageView()
    let image2 = UIImage(named: "rulet2")
    let triangle = UIImageView()
    let triangleImage = UIImage(systemName: "arrowtriangle.down.fill")
    
    var labelText: String?
    
    var buttonStartFlg = true
    let animation = CABasicAnimation(keyPath: "transform.rotation")
    var timer: Timer?
    //配列の中の数字はルーレットが止まる秒。６回に1回当たりが出る計算になっている。
    let value = [2,2.25,2.26,2.27,2.35,2.32,2.36,2.5,2.67,2.69,2.73,2.76]
    var value2 = 0.0
    
    let afterView = UIView()
    let afterImage1 = UIImage(named: "rulet3")
    let afterImage2 = UIImage(named: "rulet4")
    let afterImageView = UIImageView()
    let afterButton1 = UIButton()
    let afterButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "ルーレット"
        imageView.image = image
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.view.addSubview(imageView)
    }
    
    override func viewWillLayoutSubviews() {
        label.text = labelText!
        label.frame = CGRect(x: 0, y: 20, width: width, height: 15)
        label.textAlignment = NSTextAlignment.center
        label.textColor = .white
        self.view.addSubview(label)
        
        maruView.frame = CGRect(x: 20, y: 100, width: width - 40, height: width - 40)
        maruView.backgroundColor = .white
        maruView.layer.cornerRadius = maruView.frame.width / 2
        self.view.addSubview(maruView)
        
        maruView2.frame = CGRect(x: 5, y: 5, width: maruView.frame.width - 10, height: maruView.frame.width - 10)
        maruView2.backgroundColor = .blue
        maruView2.layer.cornerRadius = maruView2.frame.width / 2
        maruView.addSubview(maruView2)
        
        ruletImage.frame = CGRect(x: 5, y: 5, width: maruView2.frame.width - 10, height: maruView2.frame.width - 10)
        ruletImage.image = image2
        ruletImage.contentMode = .scaleAspectFill
        ruletImage.clipsToBounds = true
        ruletImage.layer.cornerRadius = ruletImage.frame.width / 2
        maruView2.addSubview(ruletImage)
        
        maruView3.frame = CGRect(x: 150, y: 150, width: maruView2.frame.width - 300, height: maruView2.frame.width - 300)
        maruView3.backgroundColor = .white
        maruView3.layer.cornerRadius = maruView3.frame.width / 2
        maruView2.addSubview(maruView3)
        
        triangle.frame = CGRect(x: maruView.frame.width / 2 - 10, y: 0, width: 40, height: 40)
        triangle.image = triangleImage
        triangle.tintColor = .yellow
        maruView.addSubview(triangle)
        
        startButton.frame = CGRect(x: 20, y: height - 300, width: width - 40, height: 30)
        startButton.backgroundColor = .yellow
        startButton.setTitle("START", for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.addTarget(self, action: #selector(startButtonTap), for: .touchUpInside)
        startButton.layer.cornerRadius = 5
        self.view.addSubview(startButton)
        
        afterView.frame = CGRect(x: width, y: 0, width: width, height: height)
        afterView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        view.addSubview(afterView)
        self.view.bringSubviewToFront(afterView)
    }
 
    @objc func startButtonTap(){
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        //ルーレットの回転に関する情報
        ruletImage.layer.speed = 4.0
        animation.toValue = .pi / 2.0
        animation.duration = 1.0
        animation.repeatCount = MAXFLOAT
        animation.isCumulative = true
        ruletImage.layer.add(animation, forKey: "ImageViewRotation")
        buttonStartFlg = false
        self.startButton.isHidden = true
        //39行目の配列からランダムに数字を選ぶ
        let randomValue = value.randomElement()
        self.value2 = randomValue!
        print(value2)
        self.timer = Timer.scheduledTimer(timeInterval: randomValue!, target: self, selector: #selector(timerStop), userInfo: nil, repeats: true)
    }
    @objc func timerStop(){
        let pausedTime = ruletImage.layer.convertTime(CACurrentMediaTime(), from: nil)
        ruletImage.layer.speed = 0.0
        ruletImage.layer.timeOffset = pausedTime
        self.timer?.invalidate()
        //１秒置いて画面に当たった際の画像か、外れた際の画像を表示する。
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            
            self.afterView.layer.position.x = self.view.layer.position.x
            //秒数が2、または、2.5の時が当たりになっている。
            if self.value2 == 2 || self.value2 == 2.5{
                
                self.afterImageView.frame = CGRect(x: 20, y: 200, width: self.width - 40, height: 100)
                self.afterImageView.image = self.afterImage1
                self.afterView.addSubview(self.afterImageView)
                
                self.afterButton1.frame = CGRect(x: 20, y: 270, width: self.width - 40, height: 30)
                self.afterButton1.backgroundColor = .yellow
                self.afterButton1.setTitle("クーポンをゲットする", for: .normal)
                self.afterButton1.setTitleColor(.black, for: .normal)
                self.afterButton1.titleLabel?.textAlignment = NSTextAlignment.center
                self.afterButton1.addTarget(self, action: #selector(self.afterButtonTap1), for: .touchUpInside)
                self.afterView.addSubview(self.afterButton1)
                
            }else{
                
                self.afterImageView.frame = CGRect(x: 20, y: 200, width: self.width - 40, height: 100)
                self.afterImageView.image = self.afterImage2
                self.afterView.addSubview(self.afterImageView)
                
                self.afterButton2.frame = CGRect(x: 20, y: 270, width: self.width - 40, height: 30)
                self.afterButton2.backgroundColor = .yellow
                self.afterButton2.setTitle("閉じる", for: .normal)
                self.afterButton2.setTitleColor(.black, for: .normal)
                self.afterButton2.titleLabel?.textAlignment = NSTextAlignment.center
                self.afterButton2.addTarget(self, action: #selector(self.afterButtonTap2), for: .touchUpInside)
                self.afterView.addSubview(self.afterButton2)
                
            }
        }
    }
    @objc func afterButtonTap1(){
        //当たった際の処理。
        SVProgressHUD.showSuccess(withStatus: "クーポンを入手しました。")
        self.navigationController?.popViewController(animated: true)
        //FirebaseからoomoriCuponを取り出し、現在の数字に1を足した数で保存する。
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            var number =  data["oomoriCupon"]! as! Int
            number += 1
            Firestore.firestore().collection(Const.dataPath).document("\(String(describing:userID))!").setData(["oomoriCupon":number],merge: true)
            
        }
    }
    @objc func afterButtonTap2(){
        //外れた際は前の画面に戻る。
        self.navigationController?.popViewController(animated: true)
    }
    
}
