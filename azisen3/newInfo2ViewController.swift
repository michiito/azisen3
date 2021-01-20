
//newInfoViewControllerで押された箇所のページを開くのみの機能。

import UIKit

class newInfo2ViewController: UIViewController {

    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    let label1 = UILabel()
    let label2 = UILabel()
    let backButton = UIButton()
    let scrollView = UIScrollView()
    let imageView = UIImageView()
    let textView = UITextView()
    var sendImage: UIImage?
    var sendLabel1: String?
    var sendLabel2: String?
    var sendText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        label1.frame = CGRect(x: 5, y: 40, width: width, height: 10)
        label1.textAlignment = NSTextAlignment.left
        label1.text = sendLabel1
        label1.font = UIFont.systemFont(ofSize: 10)
        self.view.addSubview(label1)
        
        label2.frame = CGRect(x: 5, y: 55, width: width, height: 10)
        label2.textAlignment = NSTextAlignment.left
        label2.text = sendLabel2
        label2.font = UIFont.systemFont(ofSize: 10)
        self.view.addSubview(label2)
        
        backButton.frame = CGRect(x: width - 40, y: 45, width: 20, height: 20)
        backButton.setTitle("×", for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTap), for: .touchUpInside)
        backButton.setTitleColor(.systemGray2, for: .normal)
        self.view.addSubview(backButton)

        scrollView.frame = CGRect(x: 0, y: 80, width: width, height: height)
        scrollView.contentSize = CGSize(width: 0, height: height * 1.5)
        self.view.addSubview(scrollView)
        
        imageView.image = sendImage
        imageView.frame = CGRect(x: 5, y: 0, width: width - 10, height: width - 10)
        scrollView.addSubview(imageView)
        
        textView.text = sendText
        textView.frame = CGRect(x: 0, y: width, width: width, height: height - 30)
        textView.isEditable = false
        scrollView.addSubview(textView)
    }
    @objc func backButtonTap(){
        self.navigationController?.popViewController(animated: true)
    }
}
