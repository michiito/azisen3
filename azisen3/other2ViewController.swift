
//どのような機能かわからなかったので、表面的なところだけ。

import UIKit

class other2ViewController: UIViewController {

    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let view1 = UIView()
    let view2 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "サブスクリプション"
        self.view.backgroundColor = .systemGray6
        
        label1.frame = CGRect(x: 5, y: 20, width: width - 10, height: 20)
        label1.text = "有効"
        label1.font = UIFont.systemFont(ofSize: 14)
        self.view.addSubview(label1)
        
        view1.frame = CGRect(x: 0, y: 50, width: width, height: 200)
        view1.backgroundColor = .white
        self.view.addSubview(view1)
        
        label2.frame = CGRect(x: 80, y: 125, width: width / 2, height: 14)
        label2.text = "有効なアイテムはありません"
        label2.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label2)
        
        label3.frame = CGRect(x: 5, y: 260, width: width - 10, height: 20)
        label3.text = "解約済み"
        label3.font = UIFont.systemFont(ofSize: 14)
        self.view.addSubview(label3)
        
        view2.frame = CGRect(x: 0, y: 290, width: width, height: 200)
        view2.backgroundColor = .white
        self.view.addSubview(view2)
        
        label4.frame = CGRect(x: 80, y: 415, width: width / 2, height: 14)
        label4.text = "解約済みのアイテムはありません"
        label4.font = UIFont.systemFont(ofSize: 12)
        self.view.addSubview(label4)

    }
    


}
