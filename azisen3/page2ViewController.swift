

//buyControllerのページめくり画面遷移する際の処理
//１８〜４００　基本設定、サイドメニュー作成
//４０４〜４１４　画面遷移のルール
//４１８〜６１６　buyControllerの現在地によって変わる処理

import UIKit

class page2ViewController: UIPageViewController, UIGestureRecognizerDelegate {

    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        
        
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.navigationItem.title = "お買い物"
        self.dataSource = self
        let navigationItem1 = UIBarButtonItem(image: UIImage(systemName:"square.grid.2x2"), style: .plain, target: self, action: #selector(barTapped1(_:)))
        navigationItem1.tintColor = .black
        self.navigationItem.rightBarButtonItem = navigationItem1
        
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
        
        
        sideBar.imageView1.frame = CGRect(x: 0, y: -60, width: sideBar.sideScrollView.frame.width, height: sideBar.sideView2.frame.height / 7)
        sideBar.imageView1.setImage(sideBar.sideimage1, for: .normal)
        sideBar.imageView1.contentMode = UIView.ContentMode.scaleAspectFill
        sideBar.sideScrollView.addSubview(sideBar.imageView1)
        
        
        sideBar.imageView.image = sideBar.sideimage2
        sideBar.imageView.layer.cornerRadius = sideBar.imageView.frame.width / 2
        sideBar.imageView.frame = CGRect(x: 30, y: sideBar.imageView.frame.height / 8 - 40, width: sideBar.sideView2.frame.width / 4, height: sideBar.sideView2.frame.width / 8)
        sideBar.sideScrollView.addSubview(sideBar.imageView)
        
        sideBar.text1.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: -40, width: 50, height: 10)
        sideBar.text1.text = "未登録"
        sideBar.text1.font = UIFont.systemFont(ofSize: 12)
        sideBar.text1.font = UIFont.boldSystemFont(ofSize: 16)
        sideBar.sideScrollView.addSubview(sideBar.text1)
        
        sideBar.text2.frame = CGRect(x: sideBar.imageView.frame.width + sideBar.imageView.layer.position.x - 10, y: -20, width: 90, height: 10)
        sideBar.text2.text = "マイページを見る"
        sideBar.text2.font = UIFont.systemFont(ofSize: 11)
        sideBar.sideScrollView.addSubview(sideBar.text2)
        
        
        sideBar.mView1.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height - 60, width: 3, height: 30)
        sideBar.mView1.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView1)
        
        
        sideBar.mimageView1.image = sideBar.mimage1
        sideBar.mimageView1.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height - 60, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView1)
        
        
        sideBar.mbutton1.setTitle("ホーム", for: .normal)
        sideBar.mbutton1.addTarget(self, action: #selector(tapEvent1), for: .touchUpInside)
        sideBar.mbutton1.contentHorizontalAlignment = .left
        sideBar.mbutton1.setTitleColor(.black, for: .normal)
        sideBar.mbutton1.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height - 60, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton1)
        
        
        sideBar.lineView1.backgroundColor = .systemGray3
        sideBar.lineView1.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 31 - 60, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView1)
        
        
        sideBar.mView2.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 32 - 60, width: 3, height: 30)
        sideBar.mView2.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView2)
        
        
        sideBar.mimageView2.image = sideBar.mimage2
        sideBar.mimageView2.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 32 - 60, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView2)
        
        
        sideBar.mbutton2.setTitle("店舗情報", for: .normal)
        sideBar.mbutton2.setTitleColor(.black, for: .normal)
        sideBar.mbutton2.addTarget(self, action: #selector(tapEvents2), for: .touchUpInside)
        sideBar.mbutton2.contentHorizontalAlignment = .left
        sideBar.mbutton2.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 32 - 60, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton2)
        
        
        sideBar.lineView2.backgroundColor = .systemGray3
        sideBar.lineView2.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 3, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView2)
        
        
        sideBar.mView3.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 4, width: 3, height: 30)
        sideBar.mView3.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView3)
        
        
        sideBar.mimageView3.image = sideBar.mimage3
        sideBar.mimageView3.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 4, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView3)
        
        
        sideBar.mbutton3.setTitle("新着情報", for: .normal)
        sideBar.mbutton3.setTitleColor(.black, for: .normal)
        sideBar.mbutton3.addTarget(self, action: #selector(tapEvent3), for: .touchUpInside)
        sideBar.mbutton3.contentHorizontalAlignment = .left
        sideBar.mbutton3.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 4, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton3)
        
        
        sideBar.lineView3.backgroundColor = .systemGray3
        sideBar.lineView3.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 35, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView3)
        
        
        sideBar.mView4.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 36, width: 3, height: 30)
        sideBar.mView4.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView4)
        
        sideBar.mimageView4.image = sideBar.mimage4
        sideBar.mimageView4.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 36, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView4)
        
        sideBar.mbutton4.setTitle("クーポン", for: .normal)
        sideBar.mbutton4.addTarget(self, action: #selector(tapEvent4), for: .touchUpInside)
        sideBar.mbutton4.setTitleColor(.black, for: .normal)
        sideBar.mbutton4.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 36, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.mbutton4.contentHorizontalAlignment = .left
        sideBar.sideScrollView.addSubview(sideBar.mbutton4)
        
        
        sideBar.lineView4.backgroundColor = .systemGray3
        sideBar.lineView4.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 67, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView4)
        
        
        
        sideBar.mView5.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 68, width: 3, height: 30)
        sideBar.mView5.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView5)
        
        
        sideBar.mimageView5.image = sideBar.mimage5
        sideBar.mimageView5.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 68, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView5)
        
        sideBar.mbutton5.setTitle("マイヒストリー", for: .normal)
        sideBar.mbutton5.addTarget(self, action: #selector(tapEvent5), for: .touchUpInside)
        sideBar.mbutton5.setTitleColor(.black, for: .normal)
        sideBar.mbutton5.contentHorizontalAlignment = .left
        sideBar.mbutton5.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 68, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton5)
        
        
        sideBar.lineView5.backgroundColor = .systemGray3
        sideBar.lineView5.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 99, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView5)
        
        
        sideBar.mView6.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 100, width: 3, height: 30)
        sideBar.mView6.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView6)
        
        
        sideBar.mimageView6.image = sideBar.mimage6
        sideBar.mimageView6.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 100, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView6)
        
        
        sideBar.mbutton6.setTitle("ルーレット", for: .normal)
        sideBar.mbutton6.setTitleColor(.black, for: .normal)
        sideBar.mbutton6.addTarget(self, action: #selector(tapEvent6), for: .touchUpInside)
        sideBar.mbutton6.contentHorizontalAlignment = .left
        sideBar.mbutton6.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 100, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton6)
        
        
        sideBar.lineView6.backgroundColor = .systemGray3
        sideBar.lineView6.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 131, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView6)
        
        
        sideBar.mView7.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 132, width: 3, height: 30)
        sideBar.mView7.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView7)
        
        
        sideBar.mimageView7.image = sideBar.mimage7
        sideBar.mimageView7.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 132, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView7)
        
        
        sideBar.mbutton7.setTitle("メニュー", for: .normal)
        sideBar.mbutton7.setTitleColor(.black, for: .normal)
        sideBar.mbutton7.addTarget(self, action: #selector(tapEvent7), for: .touchUpInside)
        sideBar.mbutton7.contentHorizontalAlignment = .left
        sideBar.mbutton7.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 132, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton7)
        
        
        sideBar.lineView7.backgroundColor = .systemGray3
        sideBar.lineView7.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 163, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView7)
        
        
        sideBar.mView8.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 164, width: 3, height: 30)
        sideBar.mView8.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView8)
        
        
        sideBar.mimageView8.image = sideBar.mimage8
        sideBar.mimageView8.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 164, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView8)
        
        
        sideBar.mbutton8.setTitle("スタンプ", for: .normal)
        sideBar.mbutton8.addTarget(self, action: #selector(tapEvent8), for: .touchUpInside)
        sideBar.mbutton8.setTitleColor(.black, for: .normal)
        sideBar.mbutton8.contentHorizontalAlignment = .left
        sideBar.mbutton8.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 164, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton8)
        
        
        sideBar.lineView8.backgroundColor = .systemGray3
        sideBar.lineView8.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 195, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView8)
        
        
        sideBar.mView9.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 196, width: 3, height: 30)
        sideBar.mView9.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView9)
        
        
        sideBar.mimageView9.image = sideBar.mimage9
        sideBar.mimageView9.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 196, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView9)
        
        
        sideBar.mbutton9.setTitle("友達に紹介", for: .normal)
        sideBar.mbutton9.addTarget(self, action: #selector(tapEvent9), for: .touchUpInside)
        sideBar.mbutton9.setTitleColor(.black, for: .normal)
        sideBar.mbutton9.contentHorizontalAlignment = .left
        sideBar.mbutton9.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 196, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton9)
        
        
        sideBar.lineView9.backgroundColor = .systemGray3
        sideBar.lineView9.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 227, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView9)
        
        
        sideBar.mView10.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 228, width: 3, height: 30)
        sideBar.mView10.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView10)
        
        
        sideBar.mimageView10.image = sideBar.mimage10
        sideBar.mimageView10.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 228, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView10)
        
        
        sideBar.mbutton10.setTitle("お買い物", for: .normal)
        sideBar.mbutton10.addTarget(self, action: #selector(tapEvent10), for: .touchUpInside)
        sideBar.mbutton10.setTitleColor(.black, for: .normal)
        sideBar.mbutton10.contentHorizontalAlignment = .left
        sideBar.mbutton10.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 228, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton10)
        
        
        sideBar.lineView10.backgroundColor = .systemGray3
        sideBar.lineView10.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 259, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView10)
        
        
        sideBar.mView11.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 260, width: 3, height: 30)
        sideBar.mView11.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView11)
        
        
        sideBar.mimageView11.image = sideBar.mimage11
        sideBar.mimageView11.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 260, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView11)
        
        
        sideBar.mbutton11.setTitle("Webサイト", for: .normal)
        sideBar.mbutton11.setTitleColor(.black, for: .normal)
        sideBar.mbutton11.addTarget(self, action: #selector(tapEvent11), for: .touchUpInside)
        sideBar.mbutton11.contentHorizontalAlignment = .left
        sideBar.mbutton11.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 260, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton11)
        
        
        sideBar.lineView11.backgroundColor = .systemGray3
        sideBar.lineView11.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 291, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView11)
        
        
        sideBar.mView12.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 292, width: 3, height: 30)
        sideBar.mView12.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView12)
        
        
        sideBar.mimageView12.image = sideBar.mimage12
        sideBar.mimageView12.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 292, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView12)
        
        
        sideBar.mbutton12.setTitle("テイクアウト", for: .normal)
        sideBar.mbutton12.addTarget(self, action: #selector(tapEvent12), for: .touchUpInside)
        sideBar.mbutton12.contentHorizontalAlignment = .left
        sideBar.mbutton12.setTitleColor(.black, for: .normal)
        sideBar.mbutton12.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 292, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton12)
        
        
        sideBar.lineView12.backgroundColor = .systemGray3
        sideBar.lineView12.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 323, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView12)
        
        
        sideBar.mView13.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 324, width: 3, height: 30)
        sideBar.mView13.backgroundColor = .black
        sideBar.sideScrollView.addSubview(sideBar.mView13)
        
        
        sideBar.mimageView13.image = sideBar.mimage13
        sideBar.mimageView13.frame = CGRect(x: 10, y: sideBar.imageView1.frame.height + 324, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mimageView13)
        
        
        sideBar.mbutton13.setTitle("その他", for: .normal)
        sideBar.mbutton13.setTitleColor(.black, for: .normal)
        sideBar.mbutton13.addTarget(self, action: #selector(tapEvent13), for: .touchUpInside)
        sideBar.mbutton13.contentHorizontalAlignment = .left
        sideBar.mbutton13.frame = CGRect(x: 50, y: sideBar.imageView1.frame.height + 324, width: sideBar.imageView1.frame.width - 40, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.mbutton13)
        
        
        sideBar.lineView13.backgroundColor = .systemGray3
        sideBar.lineView13.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 355, width: sideBar.sideView2.frame.width, height: 2)
        sideBar.sideScrollView.addSubview(sideBar.lineView13)
        
        
        sideBar.noSpace.backgroundColor = .white
        sideBar.noSpace.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 357, width: sideBar.sideView2.frame.width, height: 62)
        sideBar.sideScrollView.addSubview(sideBar.noSpace)
        
        
        sideBar.backButton.frame = CGRect(x: 0, y: sideBar.imageView1.frame.height + 419, width: sideBar.sideScrollView.frame.width, height: 40)
        sideBar.backButton.addTarget(self, action: #selector(tapEvent14), for: .touchUpInside)
        sideBar.backButton.backgroundColor = .black
        sideBar.backButton.setTitle("× 閉じる", for: .normal)
        sideBar.backButton.setTitleColor(.white, for: .normal)
        sideBar.sideScrollView.addSubview(sideBar.backButton)
        
        
        sideBar.subButton1.addTarget(self, action: #selector(tapEvent15), for: .touchUpInside)
        sideBar.subButton1.setImage(sideBar.subImage1, for: .normal)
        sideBar.subButton1.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 - 60, y: sideBar.imageView1.frame.height + 465, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton1)
        
        
        sideBar.subButton2.addTarget(self, action: #selector(tapEvent16), for: .touchUpInside)
        sideBar.subButton2.setImage(sideBar.subImage2, for: .normal)
        sideBar.subButton2.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 - 15, y: sideBar.imageView1.frame.height + 465, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton2)
        
        
        sideBar.subButton3.setImage(sideBar.subImage3, for: .normal)
        sideBar.subButton3.addTarget(self, action: #selector(tapEvent17), for: .touchUpInside)
        sideBar.subButton3.frame = CGRect(x: sideBar.sideScrollView.frame.width / 2 + 30, y: sideBar.imageView1.frame.height + 465, width: 30, height: 30)
        sideBar.sideScrollView.addSubview(sideBar.subButton3)
        
        
        
    }
    func getFirst() -> buyViewController {
        return storyboard!.instantiateViewController(withIdentifier: "buy") as! buyViewController
        
    }
    func getSecond() -> buy2ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "buy2") as! buy2ViewController
    }

    func getThird() -> buy3ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "buy3") as! buy3ViewController
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @objc func barTapped1(_ sender: UIBarButtonItem){
        print("a")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
    
    
    

}
extension page2ViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController is (buy3ViewController) {
            // 3 -> 2
            return getSecond()
        } else if viewController is (buy2ViewController) {
            // 2 -> 1
            return getFirst()
        } else {
            // 1 -> end of the road
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if viewController is (buyViewController) {
            // 1 -> 2
            return getSecond()
        } else if viewController is (buy2ViewController) {
            // 2 -> 3
            return getThird()
        } else {
            // 3 -> end of the road
            return nil
        }
    }
    
    
}
