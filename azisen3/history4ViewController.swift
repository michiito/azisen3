
// historyViewControllerの項目を押された際の画面
//１４〜４０　基本部品
//４９〜１３１　基本部品の配置
//１３４〜１７０　星ラベルの色を決定する処理



import UIKit
import Firebase

class history4ViewController: UIViewController {
    
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    
    let backButton = UIButton()
    let imageView = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let label8 = UILabel()
    let label9 = UILabel()
    let label10 = UILabel()
    let label11 = UILabel()
    let label12 = UILabel()
    let label13 = UILabel()
    let lineView1 = UIView()
    let lineView2 = UIView()
    
    var giveText1: String?
    var giveText2: String?
    var giveText3: String?
    var giveText4: String?
    var giveText5: String?
    var giveNumber: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)

        self.view.backgroundColor = .systemGray6
        
        backButton.frame = CGRect(x: width - 40, y: 35, width: 20, height: 20)
        backButton.setTitle("×", for: .normal)
        backButton.setTitleColor(.systemGray2, for: .normal)
        backButton.addTarget(self, action: #selector(backButtontap), for: .touchUpInside)
        backButton.layer.cornerRadius = 10
        backButton.backgroundColor = .white
        self.view.addSubview(backButton)
        
        imageView.frame = CGRect(x: 5, y: 50, width: width - 10, height: width / 2 - 50)
        self.view.addSubview(imageView)
        
        label1.frame = CGRect(x: 5, y: height / 2 + 20, width: 40, height: 15)
        label1.text = "日付"
        label1.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label1)
        
        label2.frame = CGRect(x: 60, y: height / 2 + 20, width: width / 2, height: 15)
        label2.text = giveText1!
        label2.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label2)
        
        label3.frame = CGRect(x: 5, y: height / 2 + 40, width: 40, height: 15)
        label3.text = "評価"
        label3.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label3)
        
        label4.frame = CGRect(x: 60, y: height / 2 + 40, width: 20, height: 15)
        label4.text = "★"
        label4.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label4)
        
        label5.frame = CGRect(x: 80, y: height / 2 + 40, width: 20, height: 15)
        label5.text = "★"
        label5.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label5)
        
        label6.frame = CGRect(x: 100, y: height / 2 + 40, width: 20, height: 15)
        label6.text = "★"
        label6.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label6)
        
        label7.frame = CGRect(x: 120, y: height / 2 + 40, width: 20, height: 15)
        label7.text = "★"
        label7.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label7)
        
        label8.frame = CGRect(x: 140, y: height / 2 + 40, width: 20, height: 15)
        label8.text = "★"
        label8.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label8)
        
        lineView1.frame = CGRect(x: 5, y: height / 2 + 60, width: width - 10, height: 1)
        lineView1.backgroundColor = .black
        self.view.addSubview(lineView1)
        
        label9.frame = CGRect(x: 5, y: height / 2 + 70, width: width - 10, height: 15)
        label9.text = giveText2!
        label9.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label9)
        
        label10.frame = CGRect(x: 5, y: height / 2 + 90, width: width - 10, height: 15)
        label10.text = giveText3!
        label10.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label10)
        
        label11.frame = CGRect(x: 5, y: height / 2 + 110, width: width - 10, height: 15)
        label11.text = giveText4!
        label11.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label11)
        
        lineView2.frame = CGRect(x: 5, y: height / 2 + 130, width: width - 10, height: 1)
        lineView2.backgroundColor = .black
        
        label12.frame = CGRect(x: 5, y: height / 2 + 140, width: width - 10, height: 15)
        label12.text = "メモ"
        label12.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label12)
        
        label13.frame = CGRect(x: 5, y: height / 2 + 160, width: width - 10, height: 40)
        label13.numberOfLines = 0
        label13.text = giveText5!
        label13.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label13)
        
        
        if giveNumber == 0{
            label4.textColor = .systemGray
            label5.textColor = .systemGray
            label6.textColor = .systemGray
            label7.textColor = .systemGray
            label8.textColor = .systemGray
        }else if giveNumber == 1{
            label4.textColor = .yellow
            label5.textColor = .systemGray
            label6.textColor = .systemGray
            label7.textColor = .systemGray
            label8.textColor = .systemGray
        }else if giveNumber == 2{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .systemGray
            label7.textColor = .systemGray
            label8.textColor = .systemGray
        }else if giveNumber == 3{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .systemGray
            label8.textColor = .systemGray
        }else if giveNumber == 4{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .yellow
            label8.textColor = .systemGray
        }else if giveNumber == 5{
            label4.textColor = .yellow
            label5.textColor = .yellow
            label6.textColor = .yellow
            label7.textColor = .yellow
            label8.textColor = .yellow
        }
        
        
    }
    @objc func backButtontap(){
        self.navigationController?.popViewController(animated: true)
    }
}
