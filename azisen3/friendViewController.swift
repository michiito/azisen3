

//friend2ViewContollerへの繋ぎの画面。

import UIKit

class friendViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let image = UIImage(named: "cupon2")
    let imageView = UIImageView()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "友達に紹介"
        
        imageView.image = image
        imageView.frame = CGRect(x: 5, y: 10, width: width / 4, height: 40)
        self.view.addSubview(imageView)
        
        button.frame = CGRect(x: 15 + width / 4 , y: 10, width: width - (width / 4 + 10), height: 40)
        button.setTitle("チャーシュートッピング無料", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @objc func buttonTap(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "friend2") as! friend2ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }

    

}
