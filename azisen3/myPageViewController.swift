//１８〜９７　基本部品
//１０７〜２８７　基本部品の貼り付け
//２９１〜３０８　各textFieldにデータを挿入
//３１０〜３３８　カメラボタンを押した際の処理
//３３９〜３４３　登録画像をセットする処理
//３５２〜４８８　マイショップボタンを押した際の処理
//４８９〜５３７　addButtonを押した際の処理
//５３８〜５６８　カメラボタンを押した際に作られるボタンについての、各々の処理
//５７０〜６４４　マイショップボタンを押した際に作られるボタンについての、各々の処理
import UIKit
import Firebase
import FirebaseUI
import FirebaseAuth
import FirebaseStorage
import SVProgressHUD
class myPageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    //FIrebaseからのデータを代入する変数
    var myFace: UIImage?
    var name: String?
    var shop: String?
    var nicName: String?
    var birthDay: String?
    var sex: String?
    var generation: String?
    //部品
    let mview = UIScrollView()
    let backImage = UIImageView()
    let image = UIImage(named: "mokume")
    let myImage = UIImageView()
    let noImage = UIImage(named: "logo")
    let cameraButton = UIButton()
    let cameraImage = UIImage(systemName: "camera")
    let nameLabel = UILabel()
    let shopLabel = UILabel()
    let historyButton = UIButton()
    let pencil = UIImage(systemName: "pencil")
    let myShopButton = UIButton()
    let house = UIImage(systemName: "house")
    let label1 = UILabel()
    let nicNameTextField = UITextField()
    let view1 = UIView()
    let label2 = UILabel()
    let birthdayTextField = UITextField()
    let view2 = UIView()
    let label3 = UILabel()
    let sexTextField = UITextField()
    let view3 = UIView()
    let label4 = UILabel()
    let generationTextField = UITextField()
    let view4 = UIView()
    let addButton = UIButton()
    let cancelButton = UIButton()
    let tourokuButton = UIButton()
    
    
    //ショップ選択View
    let shopView1 = UIView()
    let shopView2 = UIView()
    let shopViewLabel1 = UILabel()
    let shopViewLabel2 = UILabel()
    let shopViewLabel3 = UILabel()
    let shopViewBackButton = UIButton()
    let shopViewButton1 = UIButton()
    let shopViewButton2 = UIButton()
    let shopViewButton3 = UIButton()
    let shopViewButton4 = UIButton()
    let shopViewButton5 = UIButton()
    let shopViewButton6 = UIButton()
    let shopViewButton7 = UIButton()
    let shopViewButton8 = UIButton()
    let shopViewButton9 = UIButton()
    let shopViewLine1 = UIView()
    let shopViewLine2 = UIView()
    let shopViewLine3 = UIView()
    let shopViewLine4 = UIView()
    let shopViewLine5 = UIView()
    let shopViewLine6 = UIView()
    let shopViewLine7 = UIView()
    let shopViewLine8 = UIView()
    let shopViewLine9 = UIView()
    
    //カメラボタンを押した際の部品
    let cameraView1 = UIView()
    let cameraView2 = UIView()
    let cameraLine1 = UIView()
    let cameraLine2 = UIView()
    let cameraLine3 = UIView()
    let cameraViewButton1 = UIButton()
    let cameraViewButton2 = UIButton()
    let cameraViewButton3 = UIButton()
    let cameraViewButton4 = UIButton()
    let pickerController = UIImagePickerController()
    private let storageRef = Storage.storage().reference()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //画面を開いた際にmyImageに画像を貼る
        loadImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidLayoutSubviews() {
        SVProgressHUD.show()
        
        loadImage()
        self.navigationItem.title = "マイページ"
        navigationController?.navigationBar.isTranslucent = false
        
        mview.frame = CGRect(x: 0, y: -20, width: width, height: height)
        self.view.addSubview(mview)
        
        backImage.image = image
        backImage.frame = CGRect(x: 0,y: 0, width: width, height: height * 0.4)
        backImage.contentMode = UIView.ContentMode.scaleAspectFill
        mview.addSubview(backImage)
        
        myImage.frame = CGRect(x: width / 2 - 25, y: 50, width: 50, height: 50)
        myImage.layer.cornerRadius = myImage.frame.width / 2
        myImage.backgroundColor = .white
        mview.addSubview(myImage)
        
        cameraButton.backgroundColor = .white
        cameraButton.setImage(cameraImage, for: .normal)
        cameraButton.frame = CGRect(x: width / 2 + 20, y: 90, width: 20, height: 20)
        cameraButton.layer.cornerRadius = cameraButton.frame.width / 2
        cameraButton.addTarget(self, action: #selector(cameraButtonTapped), for: .touchUpInside)
        mview.addSubview(cameraButton)
        
        nameLabel.frame = CGRect(x: 0,y: backImage.layer.position.y + 15, width: width, height: 15)
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        mview.addSubview(nameLabel)
        
        shopLabel.frame = CGRect(x: 0, y: nameLabel.layer.position.y + 25, width: width, height: 15)
        shopLabel.font = UIFont.systemFont(ofSize: 11)
        shopLabel.textColor = .black
        shopLabel.textAlignment = NSTextAlignment.center
        mview.addSubview(shopLabel)
        
        historyButton.frame = CGRect(x: width / 6, y: shopLabel.layer.position.y + 30, width: width / 3, height: 50)
        historyButton.backgroundColor = .white
        historyButton.layer.cornerRadius = 5
        historyButton.setImage(pencil, for: .normal)
        historyButton.setTitle("ヒストリー", for: .normal)
        historyButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        historyButton.setTitleColor(.black, for: .normal)
        historyButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: historyButton.frame.width / 2 - 10, bottom: 25, right: 0)
        historyButton.titleEdgeInsets = UIEdgeInsets(top: 30, left: 0, bottom: 5, right: 0)
        historyButton.addTarget(self, action: #selector(historyButtonTapped), for: .touchUpInside)
        mview.addSubview(historyButton)
        
        myShopButton.frame = CGRect(x: width / 2 + 7, y: shopLabel.layer.position.y + 30, width: width / 3, height: 50)
        myShopButton.backgroundColor = .white
        myShopButton.layer.cornerRadius = 5
        myShopButton.setImage(house, for: .normal)
        myShopButton.setTitle("マイショップ", for: .normal)
        myShopButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        myShopButton.setTitleColor(.black, for: .normal)
        myShopButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: myShopButton.frame.width / 2 - 10, bottom: 25, right: 0)
        myShopButton.titleEdgeInsets = UIEdgeInsets(top: 30, left: 0, bottom: 5, right: 0)
        myShopButton.addTarget(self, action: #selector(myShopButtonTapped), for: .touchUpInside)
        mview.addSubview(myShopButton)
        
        label1.frame = CGRect(x: 5, y: backImage.frame.height + 10, width: width, height: 10)
        label1.text = "ニックネーム"
        label1.font = UIFont.systemFont(ofSize: 10)
        label1.textColor = .systemGray3
        mview.addSubview(label1)
        
        nicNameTextField.frame = CGRect(x: 5, y: label1.layer.position.y + 15, width: width - 10, height: 20)
        nicNameTextField.isEnabled = false
        mview.addSubview(nicNameTextField)
        
        view1.frame = CGRect(x: 5, y: nicNameTextField.layer.position.y + 25, width: width - 10, height: 2)
        view1.backgroundColor = .systemGray3
        mview.addSubview(view1)
        
        label2.frame = CGRect(x: 5, y: view1.layer.position.y + 15, width: width, height: 10)
        label2.text = "誕生日"
        label2.font = UIFont.systemFont(ofSize: 10)
        label2.textColor = .systemGray3
        mview.addSubview(label2)
        
        
        birthdayTextField.frame = CGRect(x: 5, y: label2.layer.position.y + 15, width: width - 10, height: 20)
        birthdayTextField.isEnabled = false
        mview.addSubview(birthdayTextField)
        
        
        view2.frame = CGRect(x: 5, y: birthdayTextField.layer.position.y + 25, width: width - 10, height: 2)
        view2.backgroundColor = .systemGray3
        mview.addSubview(view2)
        
        
        label3.text = "性別"
        label3.frame = CGRect(x: 5, y: view2.layer.position.y + 15, width: width - 10, height: 10)
        label3.font = UIFont.systemFont(ofSize: 10)
        label3.textColor = .systemGray3
        mview.addSubview(label3)
        
        
        sexTextField.frame = CGRect(x: 5, y: label3.layer.position.y + 15, width: width - 10, height: 20)
        sexTextField.isEnabled = false
        mview.addSubview(sexTextField)
        
        
        view3.frame = CGRect(x: 5, y: sexTextField.layer.position.y + 25, width: width - 10, height: 2)
        view3.backgroundColor = .systemGray3
        mview.addSubview(view3)
        
        
        label4.frame = CGRect(x: 5, y: view3.layer.position.y + 15, width: width - 10, height: 10)
        label4.text = "年代"
        label4.textColor = .systemGray3
        label4.font = UIFont.systemFont(ofSize: 10)
        mview.addSubview(label4)
        
        
        generationTextField.frame = CGRect(x: 5, y: label4.layer.position.y + 15, width: width - 10, height: 20)
        mview.addSubview(generationTextField)
        
        
        view4.frame = CGRect(x: 5, y: generationTextField.layer.position.y + 25, width: width - 10, height: 2)
        view4.backgroundColor = .systemGray3
        mview.addSubview(view4)
        
        
        addButton.frame = CGRect(x: width - 40, y: height - 100, width: 35, height: 35)
        addButton.backgroundColor = .systemGray3
        addButton.setTitle("+", for: .normal)
        addButton.setTitleColor(.white, for: .normal)
        addButton.layer.cornerRadius = addButton.frame.width / 2
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        mview.addSubview(addButton)
        
        cameraView1.frame = CGRect(x: width, y: 0, width: width, height: height)
        cameraView1.backgroundColor = sideBar.color
        mview.addSubview(cameraView1)
        
        cameraView2.frame = CGRect(x: 10, y: height / 2 - 70, width: width - 20, height: 170)
        cameraView2.backgroundColor = .white
        cameraView2.layer.cornerRadius = 5
        cameraView1.addSubview(cameraView2)
        
        cameraViewButton1.frame = CGRect(x: 5, y: 0, width: cameraView2.frame.width - 10, height: 42)
        cameraViewButton1.setTitle("写真を撮影", for: .normal)
        cameraViewButton1.setTitleColor(.black, for: .normal)
        cameraViewButton1.addTarget(self, action: #selector(cameraViewButtonTapped1), for: .touchUpInside)
        cameraView2.addSubview(cameraViewButton1)
        
        cameraLine1.frame = CGRect(x: 5, y: 42, width: cameraView2.frame.width - 10, height: 1)
        cameraLine1.backgroundColor = .systemGray3
        cameraView2.addSubview(cameraLine1)
        
        cameraViewButton2.frame = CGRect(x: 5, y: 45, width: cameraView2.frame.width - 10, height: 42)
        cameraViewButton2.setTitle("写真を選択", for: .normal)
        cameraViewButton2.setTitleColor(.black, for: .normal)
        cameraViewButton2.titleLabel?.textAlignment = NSTextAlignment.left
        cameraViewButton2.addTarget(self, action: #selector(cameraViewButtonTapped2), for: .touchUpInside)
        cameraView2.addSubview(cameraViewButton2)
        
        cameraLine2.frame = CGRect(x: 5, y: 83, width: cameraView2.frame.width - 10, height: 1)
        cameraLine2.backgroundColor = .systemGray3
        cameraView2.addSubview(cameraLine2)
        
        cameraViewButton3.frame = CGRect(x: 5, y: 84, width: width - 10, height: 42)
        cameraViewButton3.setTitle("削除", for: .normal)
        cameraViewButton3.setTitleColor(.black, for: .normal)
        cameraViewButton3.titleLabel?.textAlignment = NSTextAlignment.left
        cameraViewButton3.addTarget(self, action: #selector(cameraViewButtonTapped3), for: .touchUpInside)
        cameraView2.addSubview(cameraViewButton3)
        
        cameraLine3.frame = CGRect(x: 5, y: 126, width: cameraView2.frame.width - 10, height: 1)
        cameraLine3.backgroundColor = .systemGray3
        cameraView2.addSubview(cameraLine3)
        
        cameraViewButton4.frame = CGRect(x: 5, y: 127, width: width - 10, height: 42)
        cameraViewButton4.setTitle("キャンセル", for: .normal)
        cameraViewButton4.setTitleColor(.black, for: .normal)
        cameraViewButton4.titleLabel?.textAlignment = NSTextAlignment.left
        cameraViewButton4.addTarget(self, action: #selector(cameraViewButtonTapped4), for: .touchUpInside)
        cameraView2.addSubview(cameraViewButton4)
        
        let userID = Auth.auth().currentUser?.uid
        //Firebaseからログインしているユーザーの情報を取得する
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").getDocument{(snap, error) in
            if let error = error {
                fatalError("エラーした\(error)")
            }
            guard let data: [String : Any] = snap?.data() else {
                print("ミスってる")
                return
            }
            self.nameLabel.text = "\(String(describing: data["nicName"]!))"
            self.shopLabel.text = "\(String(describing: data["shop"]!))"
            self.nicNameTextField.text = "\(String(describing: data["nicName"]!))"
            self.birthdayTextField.text = "\(String(describing: data["birthday"]!))"
            self.sexTextField.text = "\(String(describing: data["sex"]!))"
            self.generationTextField.text = "\(String(describing: data["generation"]!))"
        }
        mview.contentSize = CGSize(width: width, height: addButton.layer.position.y + addButton.frame.height + 50)
        SVProgressHUD.dismiss()
    }
    //カメラボタンを押した後の画面
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //選択した画像
        if info[.originalImage] != nil {
            
            let image1 = info[.originalImage] as! UIImage
            myImage.image = image1
            let userID = Auth.auth().currentUser?.uid
            //画像を圧縮？してFirebaseStorageに保存
            let imageData = image1.jpegData(compressionQuality: 0.75)
            let imageRef = Storage.storage().reference().child(Const.ImagePath).child(userID! + ".jpg")
            let metadata = StorageMetadata()
            metadata.contentType = "image/jpeg"
            imageRef.putData(imageData!, metadata: metadata) { (metadata, error) in
                if error != nil {
                    // 投稿処理をキャンセルし、先頭画面に戻る
                    UIApplication.shared.windows.first{ $0.isKeyWindow }?.rootViewController?.dismiss(animated: true, completion: nil)
                    return
                }
            }
        }
        loadImage()
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //キャンセルを押した際の処理
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "myPage") as! myPageViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    func loadImage() {
        let userID = Auth.auth().currentUser?.uid
        //StorageのURLを参照して、myImageに設定した画像を貼る。
        let storageref = Storage.storage().reference().child(Const.ImagePath).child(userID! + ".jpg")
        myImage.sd_setImage(with: storageref)
    }
    
    @objc func cameraButtonTapped(){
        cameraView1.layer.position.x = mview.layer.position.x
    }
    @objc func historyButtonTapped(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history") as! historyViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func myShopButtonTapped(){
        //shopViewを作る。
        shopView1.frame = CGRect(x: 0, y: 0, width: width, height: height)
        shopView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.mview.addSubview(shopView1)
        
        shopView2.frame = CGRect(x: 5, y: 30, width: width - 10, height: height - 240)
        shopView2.backgroundColor = .systemGray5
        shopView2.layer.cornerRadius = 5
        shopView1.addSubview(shopView2)
        
        shopViewBackButton.frame = CGRect(x: shopView2.frame.width - 50, y: 10, width: 30, height: 30)
        shopViewBackButton.backgroundColor = .white
        shopViewBackButton.layer.cornerRadius = 15
        shopViewBackButton.setTitle("×", for: .normal)
        shopViewBackButton.setTitleColor(.systemGray2, for: .normal)
        shopViewBackButton.addTarget(self, action: #selector(shopViewBackButtonTap), for: .touchUpInside)
        shopView2.addSubview(shopViewBackButton)
        
        shopViewLabel1.frame = CGRect(x: 5, y: 40, width: 70, height: 15)
        shopViewLabel1.text = "利用店舗"
        shopViewLabel1.font = UIFont.systemFont(ofSize: 12)
        shopView2.addSubview(shopViewLabel1)
        
        shopViewLabel3.frame = CGRect(x: 80, y: 40, width: shopView2.frame.width - 100, height: 15)
        shopViewLabel3.backgroundColor = .white
        shopViewLabel3.textColor = .red
        shopViewLabel3.layer.cornerRadius = 5
        shopView2.addSubview(shopViewLabel3)
        
        shopViewLabel2.frame = CGRect(x: 0, y: 70, width: width, height: 50)
        shopViewLabel2.numberOfLines = 2
        shopViewLabel2.text = "他の店舗でご利用の場合は、以下のリストから\nご利用の店舗を選択してください。"
        shopViewLabel2.textAlignment = NSTextAlignment.center
        shopViewLabel2.font = UIFont.systemFont(ofSize: 12)
        shopView2.addSubview(shopViewLabel2)
        
        shopViewButton1.frame = CGRect(x: 10, y: 130, width: shopView2.frame.width - 20, height: 30)
        shopViewButton1.setTitle("本店", for: .normal)
        shopViewButton1.setTitleColor(.black, for: .normal)
        shopViewButton1.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton1.addTarget(self, action: #selector(shopViewButton1Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton1)
        
        shopViewLine1.frame = CGRect(x: 10, y: 160, width: shopView2.frame.width - 20, height: 1)
        shopViewLine1.backgroundColor = .black
        shopView2.addSubview(shopViewLine1)
        
        shopViewButton2.frame = CGRect(x: 10, y: 161, width: shopView2.frame.width - 20, height: 30)
        shopViewButton2.setTitle("東バイパス店", for: .normal)
        shopViewButton2.setTitleColor(.black, for: .normal)
        shopViewButton2.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton2.addTarget(self, action: #selector(shopViewButton2Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton2)
        
        shopViewLine2.frame = CGRect(x: 10, y: 191, width: shopView2.frame.width - 20, height: 1)
        shopViewLine2.backgroundColor = .black
        shopView2.addSubview(shopViewLine2)
        
        shopViewButton3.frame = CGRect(x: 10, y: 192, width: shopView2.frame.width - 20, height: 30)
        shopViewButton3.setTitle("光の森店", for: .normal)
        shopViewButton3.setTitleColor(.black, for: .normal)
        shopViewButton3.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton3.addTarget(self, action: #selector(shopViewButton3Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton3)
        
        shopViewLine3.frame = CGRect(x: 10, y: 222, width: shopView2.frame.width - 20, height: 1)
        shopViewLine3.backgroundColor = .black
        shopView2.addSubview(shopViewLine3)
        
        shopViewButton4.frame = CGRect(x: 10, y: 223, width: shopView2.frame.width - 20, height: 30)
        shopViewButton4.setTitle("富合店", for: .normal)
        shopViewButton4.setTitleColor(.black, for: .normal)
        shopViewButton4.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton4.addTarget(self, action: #selector(shopViewButton4Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton4)
        
        shopViewLine4.frame = CGRect(x: 10, y: 253, width: shopView2.frame.width - 20, height: 1)
        shopViewLine4.backgroundColor = .black
        shopView2.addSubview(shopViewLine4)
        
        shopViewButton5.frame = CGRect(x: 10, y: 254, width: shopView2.frame.width - 20, height: 30)
        shopViewButton5.setTitle("イオンタウン田崎店", for: .normal)
        shopViewButton5.setTitleColor(.black, for: .normal)
        shopViewButton5.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton5.addTarget(self, action: #selector(shopViewButton5Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton5)
        
        shopViewLine5.frame = CGRect(x: 10, y: 284, width: shopView2.frame.width - 20, height: 1)
        shopViewLine5.backgroundColor = .black
        shopView2.addSubview(shopViewLine5)
        
        shopViewButton6.frame = CGRect(x: 10, y: 285, width: shopView2.frame.width - 20, height: 30)
        shopViewButton6.setTitle("荒尾グリーンランド前店", for: .normal)
        shopViewButton6.setTitleColor(.black, for: .normal)
        shopViewButton6.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton6.addTarget(self, action: #selector(shopViewButton6Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton6)
        
        shopViewLine6.frame = CGRect(x: 10, y: 315, width: shopView2.frame.width - 20, height: 1)
        shopViewLine6.backgroundColor = .black
        shopView2.addSubview(shopViewLine6)
        
        shopViewButton7.frame = CGRect(x: 10, y: 316, width: shopView2.frame.width - 20, height: 30)
        shopViewButton7.setTitle("鹿本店", for: .normal)
        shopViewButton7.setTitleColor(.black, for: .normal)
        shopViewButton7.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton7.addTarget(self, action: #selector(shopViewButton7Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton7)
        
        shopViewLine7.frame = CGRect(x: 10, y: 346, width: shopView2.frame.width - 20, height: 1)
        shopViewLine7.backgroundColor = .black
        shopView2.addSubview(shopViewLine7)
        
        shopViewButton8.frame = CGRect(x: 10, y: 347, width: shopView2.frame.width - 20, height: 30)
        shopViewButton8.setTitle("有明店", for: .normal)
        shopViewButton8.setTitleColor(.black, for: .normal)
        shopViewButton8.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton8.addTarget(self, action: #selector(shopViewButton8Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton8)
        
        shopViewLine8.frame = CGRect(x: 10, y: 378, width: shopView2.frame.width - 20, height: 1)
        shopViewLine8.backgroundColor = .black
        shopView2.addSubview(shopViewLine8)
        
        shopViewButton9.frame = CGRect(x: 10, y: 379, width: shopView2.frame.width - 20, height: 30)
        shopViewButton9.setTitle("水俣店", for: .normal)
        shopViewButton9.setTitleColor(.black, for: .normal)
        shopViewButton9.titleLabel?.textAlignment = NSTextAlignment.left
        shopViewButton9.addTarget(self, action: #selector(shopViewButton9Tap), for: .touchUpInside)
        shopView2.addSubview(shopViewButton9)
        
        shopViewLine9.frame = CGRect(x: 10, y: 409, width: shopView2.frame.width - 20, height: 1)
        shopViewLine9.backgroundColor = .black
        shopView2.addSubview(shopViewLine9)
        
    }
    @objc func addButtonTapped(){
        //一旦addButtonを消してキャンセルボタンと登録ボタンを作る
        addButton.removeFromSuperview()
        
        cancelButton.frame = CGRect(x: 10, y:generationTextField.layer.position.y + 30, width: width - 20, height: 30)
        cancelButton.backgroundColor = .systemGray3
        cancelButton.setTitle("キャンセル", for: .normal)
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        cancelButton.layer.cornerRadius = 5
        mview.addSubview(cancelButton)
        
        
        tourokuButton.frame = CGRect(x: 10, y: generationTextField.layer.position.y + 70, width: width - 20, height: 30)
        tourokuButton.backgroundColor = .red
        tourokuButton.setTitle("登録", for: .normal)
        tourokuButton.setTitleColor(.white, for: .normal)
        tourokuButton.addTarget(self, action: #selector(tourokuButtonTapped), for: .touchUpInside)
        tourokuButton.layer.cornerRadius = 5
        mview.addSubview(tourokuButton)
        //各textFieldを選択できるようにする
        nicNameTextField.isEnabled = true
        birthdayTextField.isEnabled = true
        sexTextField.isEnabled = true
        generationTextField.isEnabled = true
        
        
    }
    @objc func cancelButtonTapped(){
        
        mview.addSubview(addButton)
        cancelButton.removeFromSuperview()
        tourokuButton.removeFromSuperview()
        
        nicNameTextField.isEnabled = false
        birthdayTextField.isEnabled = false
        sexTextField.isEnabled = false
        generationTextField.isEnabled = false
    }
    @objc func tourokuButtonTapped(){
        mview.addSubview(addButton)
        cancelButton.removeFromSuperview()
        tourokuButton.removeFromSuperview()
        let userID = Auth.auth().currentUser?.uid
        let a = Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!")
        //変更したデータをFirebaseに登録する
        a.updateData(["nicName" : nicNameTextField.text!,"genaration" : generationTextField.text!,"sex" : sexTextField.text!,"birthday" : birthdayTextField.text!])
        
    }
    @objc func cameraViewButtonTapped1(){
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            pickerController.delegate = self
            pickerController.sourceType = .camera
            self.present(pickerController, animated: true, completion: nil)
        }
        
    }
    @objc func cameraViewButtonTapped2(){
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            pickerController.delegate = self
            pickerController.sourceType = .photoLibrary
            self.present(pickerController, animated: true, completion: nil)
        }
        self.viewDidLoad()
    }
    @objc func cameraViewButtonTapped3(){
        let userID = Auth.auth().currentUser?.uid
        let desertRef = Storage.storage().reference().child(Const.ImagePath).child(userID! + ".jpg")
        
        desertRef.delete{ error in
            if error != nil{
                print("削除失敗")
            }else{
                print("削除成功")
            }
        }
    }
    @objc func cameraViewButtonTapped4(){
        cameraView1.layer.position.x = mview.frame.width * 2
    }
    
    @objc func shopViewButton1Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"本店"],merge: true)
        self.shopLabel.text = "本店"
        self.shopViewLabel3.text = "本店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton2Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"東バイパス店"],merge: true)
        self.shopLabel.text = "東バイパス店"
        self.shopViewLabel3.text = "東バイパス店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton3Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"光の森店"],merge: true)
        self.shopLabel.text = "光の森店"
        self.shopViewLabel3.text = "光の森店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton4Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"富合店"],merge: true)
        self.shopLabel.text = "富合店"
        self.shopViewLabel3.text = "富合店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton5Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"イオンタウン田崎店"],merge: true)
        self.shopLabel.text = "イオンタウン田崎店"
        self.shopViewLabel3.text = "イオンタウン田崎店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton6Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"荒尾グリーンランド前店"],merge: true)
        self.shopLabel.text = "荒尾グリーンランド前店"
        self.shopViewLabel3.text = "荒尾グリーンランド前店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton7Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"鹿本店"],merge: true)
        self.shopLabel.text = "鹿本店"
        self.shopViewLabel3.text = "鹿本店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton8Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"有明店"],merge: true)
        self.shopLabel.text = "有明店"
        self.shopViewLabel3.text = "有明店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewButton9Tap(){
        let userID = Auth.auth().currentUser?.uid
        Firestore.firestore().collection(Const.dataPath).document("\(String(describing: userID))!").setData(["shop":"水俣店"],merge: true)
        self.shopLabel.text = "水俣店"
        self.shopViewLabel3.text = "水俣店"
        
        shopView1.removeFromSuperview()
    }
    @objc func shopViewBackButtonTap(){
        shopView1.removeFromSuperview()
    }
}

