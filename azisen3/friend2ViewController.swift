
//１１〜２４ 基本部品
//２６〜６７ 基本部品の貼り付け
//７４〜８１　シェアボタンの処理

import UIKit
import Firebase

class friend2ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    
    let image = UIImage(named: "cupon2")
    let imageView = UIImageView()
    let backButton = UIButton()
    let shareButton = UIButton()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    //ラインを送った相手に届くメッセージとURL。URLをタップすると味千アプリのインストール画面に飛ぶ。
    let shareText = "味千ラーメンアプリをインストールして紹介コードを入力されるとお得なクーポンが発行されます。  紹介コード:111111"
    let shareUrl = NSURL(string: "https://aji1000.misesystem.com/store/?u=CU1800001")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        imageView.image = image
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: height / 3)
        self.view.addSubview(imageView)
        
        backButton.frame = CGRect(x: width - 50, y: 20, width: 30, height: 30)
        backButton.setTitle("×", for: .normal)
        backButton.setTitleColor(.systemGray2, for: .normal)
        backButton.backgroundColor = .white
        backButton.layer.cornerRadius = 15
        backButton.addTarget(self, action:#selector(backButtonTap), for: .touchUpInside)
        self.view.addSubview(backButton)
        
        shareButton.frame = CGRect(x: 10, y: height / 3 + 10, width: width - 20, height: 30)
        shareButton.setTitle("お友達にシェアする", for: .normal)
        shareButton.setTitleColor(.white, for: .normal)
        shareButton.titleLabel?.textAlignment = NSTextAlignment.center
        shareButton.backgroundColor = .red
        shareButton.addTarget(self, action: #selector(shareButtonTap), for: .touchUpInside)
        self.view.addSubview(shareButton)
        
        label1.frame = CGRect(x: 10, y: height / 3 + 50, width: width, height: 15)
        label1.text = "チャーシュートッピング無料"
        label1.font = UIFont.systemFont(ofSize: 12)
        label1.textAlignment = NSTextAlignment.left
        self.view.addSubview(label1)
        
        label2.frame = CGRect(x: 0, y: height / 3 + 70, width: width, height: 20)
        label2.text = "チャーシュー"
        label2.textAlignment = NSTextAlignment.center
        label2.textColor = .red
        label2.font = UIFont.systemFont(ofSize: 16)
        self.view.addSubview(label2)
        
        label3.frame = CGRect(x: 5, y: height / 3 + 100, width: width - 10, height: 250)
        label3.numberOfLines = 0
        label3.text = "■味千アプリサービスはご注文の際にご提出ください。\n■本クーポン券は1名様につき1日1回のご利用となります。\n■本クーポン券は、日本国内の味千本店、東バイパス店、光の森店、イオンタウン田崎店、荒尾グリーンランド前店、鹿本店、有明店、水俣店のみの限定となります。\n■味千感謝デーではご利用できません。\n■その他のクーポン券、サービス券とは併用ができません。\n■チャーシュートッピングが無料になります。\n■このクーポン券はテイクアウト商品のご利用ができません。■このクーポン券のみでのお食事のご利用はできません。"
        label3.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label3)
    }
    
    @objc func backButtonTap(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc func shareButtonTap(){
        
        //UISctivityControllerを使って共有機能を実装した。LINEActivityを使う。
        let activityItems: [Any] = [shareText, shareUrl]
        let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: [LINEActivity(message: shareText)])
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    
}
