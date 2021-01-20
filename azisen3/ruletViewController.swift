

//rulet2ViewControllerへの繋ぎのページ。
//実験しづらいので、一度ルーレットを回したら1日経過しないと使えなくなる機能は搭載してない。

import UIKit

class ruletViewController: UIViewController {
    
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width

    let label = UILabel()
    
    let button1 = UIButton()
    
    let image1 = UIImage(named: "logo")
    let image2 = UIImage(named: "logo")
    
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "ルーレット"
    }
    override func viewDidLayoutSubviews() {
        label.text = "挑戦するクーポンを選んでください"
        label.font = UIFont.systemFont(ofSize: 10)
        label.frame = CGRect(x: 0, y: 20, width: width, height: 15)
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        
        imageView1.image = image1
        imageView1.frame = CGRect(x: 5, y: 50, width: 50, height: 50)
        self.view.addSubview(imageView1)
        
        button1.frame = CGRect(x: 60, y: 50, width: width - 70, height: 50)
        button1.setTitle("1日1回ルーレットクーポン", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action:#selector(buttonTap1), for: .touchUpInside)
        self.view.addSubview(button1)
        
    }
    @objc func buttonTap1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "rulet2") as! rulet2ViewController
        vc.labelText = "1日1回ルーレットクーポン"
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
