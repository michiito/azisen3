//各ボタンを押すと画面が進んでいくような設計。
//１８〜２２７　基本部品
//２３７〜２６６　基本部品の貼り付け
//２７２〜３７２　日付(dayButton)を決めるボタンを押した際の処理
//３４０〜４７２　アイテム、メニューのどれを登録するかを決めるボタン（whatButton)を押した際の処理
//４７３〜５８０　ラーメン、つけ麺などを登録するボタン(menu1)を押した際の処理
//５８２〜７１３　詳しい商品名を登録するボタン（menu2）を押した際の処理
//７１４〜７６８　menu2Buttonを押した後の処理（コメントなどを残す箇所を貼り付ける）
//７７１〜１６９６　pickerViewのデリゲートメゾット↓
//７７５〜８２０　pickerViewのドラムの文字列の数を返す処理
//８２３〜８６８　pickerViewのドラムの文字列を決める処理
//８７４〜８９１　whatButtonを押した際に出てくるpickerViewの処理
//８９４〜１０００　menu1Buttonを押した際に出てくるpickerViewの処理
//１００４〜１６９６ menu2Buttonを押した際に出てくるpickerViewの処理
import UIKit
import Firebase
import SVProgressHUD

class history2ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource   {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let scrollView = UIScrollView()
    let backButton = UIButton()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let label8 = UILabel()
    let label9 = UILabel()
    let memoTextField = UITextField()
    
    let dayButton = UIButton()
    let whatButton = UIButton()
    let menuButton1 = UIButton()
    let menuButton2 = UIButton()
    let starButton1 = UIButton()
    let starButton2 = UIButton()
    let starButton3 = UIButton()
    let starButton4 = UIButton()
    let starButton5 = UIButton()
    let imageButton = UIButton()
    let kakuninButton = UIButton()
    
    let pickerView1 = UIView()
    let pickerView2 = UIView()
    let pickerView3 = UIView()
    let pickerView4 = UIView()
    
    let pickerHarfView1 = UIView()
    let pickerHarfView2 = UIView()
    let pickerHarfView3 = UIView()
    let pickerHarfView4 = UIView()
    
    let pickerLine1 = UIView()
    let pickerLine2 = UIView()
    let pickerLine3 = UIView()
    let pickerLine4 = UIView()
    
    let datePicker1 = UIDatePicker()
    let datePicker2 = UIPickerView()
    let datePicker3 = UIPickerView()
    let datePicker4 = UIPickerView()
    //pickerViewが出てくる際に必要なボタン。奇数がキャンセル、偶数が先に進むボタン
    let pickerButton1 = UIButton()
    let pickerButton2 = UIButton()
    let pickerButton3 = UIButton()
    let pickerButton4 = UIButton()
    let pickerButton5 = UIButton()
    let pickerButton6 = UIButton()
    let pickerButton7 = UIButton()
    let pickerButton8 = UIButton()
    
    let nextLabel1 = UILabel()
    let nextLabel2 = UILabel()
    let nextLabel3 = UILabel()
    let nextLabel4 = UILabel()
    //history3ViewControllerに送る値
    var nextLabelText1: String?
    var nextLabelText2: String?
    var nextLabelText3: String?
    var nextLabelText4: String?
    var starButtonNumber = 3
    var nextImage: UIImage?
    
    let lineView1 = UIView()
    let lineView2 = UIView()
    
    let tourokuButton = UIButton()
    let teiseiButton = UIButton()
    //imageButtonに入れられるボタン
    let buyImage1 = UIImage(named: "p.azisenramen")
    let buyImage2 = UIImage(named: "p.paiku-men")
    let buyImage3 = UIImage(named: "p.kuromayuramen")
    let buyImage4 = UIImage(named: "p.zennoseramen")
    let buyImage5 = UIImage(named: "p.tyasyumen")
    let buyImage6 = UIImage(named: "p.syauyuramen")
    let buyImage7 = UIImage(named: "p.misotonkoturamen")
    let buyImage8 = UIImage(named: "p.karamisoramen")
    let buyImage9 = UIImage(named: "p.hukkokuramen")
    let buyImage10 = UIImage(named: "p.zeitakukiriaburitya-syumen")
    let buyImage11 = UIImage(named: "p.pirikaranegiramen")
    let buyImage12 = UIImage(named: "p.tukemen")
    let buyImage13 = UIImage(named: "p.karatukemen")
    let buyImage14 = UIImage(named: "p.taipi-en")
    let buyImage15 = UIImage(named: "p.parisoba")
    let buyImage16 = UIImage(named: "p.yakisoba")
    let buyImage17 = UIImage(named: "p.tyanpon")
    let buyImage18 = UIImage(named: "p.pirikaratyanpon")
    let buyImage19 = UIImage(named: "p.gyozaset")
    let buyImage20 = UIImage(named: "p.karaageset")
    let buyImage21 = UIImage(named: "p.hantya-hanset")
    let buyImage22 = UIImage(named: "p.no")
    let buyImage23 = UIImage(named: "p.ha-huset")
    let buyImage24 = UIImage(named: "p.supesyaruset")
    let buyImage25 = UIImage(named: "p.tya-syu-tamagodonset")
    let buyImage26 = UIImage(named: "p.karamisotya-syu-donset")
    let buyImage27 = UIImage(named: "p.tikinnanbanset")
    let buyImage28 = UIImage(named: "p.manpukuset")
    let buyImage29 = UIImage(named: "p.aburitya-syu-donset")
    let buyImage30 = UIImage(named: "p.dxset")
    let buyImage31 = UIImage(named: "p.no")
    let buyImage32 = UIImage(named: "p.dxset")
    let buyImage33 = UIImage(named: "p.dxset")
    let buyImage34 = UIImage(named: "p.yakigyo-zaset")
    let buyImage35 = UIImage(named: "p.karaage")
    let buyImage36 = UIImage(named: "p.enokigyuunikumaki")
    let buyImage37 = UIImage(named: "p.ebiharumaki")
    let buyImage38 = UIImage(named: "p.guri-nsarada")
    let buyImage39 = UIImage(named: "p.aburitya-syu-")
    let buyImage40 = UIImage(named: "p.edamame")
    let buyImage41 = UIImage(named: "p.tonsoku")
    let buyImage42 = UIImage(named: "p.tikinnanban")
    let buyImage43 = UIImage(named: "p.potetohurai")
    let buyImage44 = UIImage(named: "p.no")
    let buyImage45 = UIImage(named: "p.no")
    let buyImage46 = UIImage(named: "p.negitappuri")
    let buyImage47 = UIImage(named: "p.tya-syu-")
    let buyImage48 = UIImage(named: "p.yasai")
    let buyImage49 =  UIImage(named: "p.hanzyukutamago")
    let buyImage50 = UIImage(named: "p.paiku-")
    let buyImage51 =  UIImage(named: "p.kikurage")
    let buyImage52 = UIImage(named: "p.moyasi")
    let buyImage53 = UIImage(named: "p.ko-n")
    let buyImage54 = UIImage(named: "p.no")
    let buyImage55 = UIImage(named: "p.tya-han")
    let buyImage56 = UIImage(named: "p.pirikaratya-han")
    let buyImage57 = UIImage(named: "p.otonanokurotya-han")
    let buyImage58 = UIImage(named: "p.tya-syu-tamagodon")
    let buyImage59 = UIImage(named: "p.karamisotya-syu-don")
    let buyImage60 = UIImage(named: "p.raisu")
    let buyImage61 = UIImage(named: "p.onigiri")
    let buyImage62 = UIImage(named: "p.no")
    let buyImage63 = UIImage(named: "p.annindouhu")
    let buyImage64 = UIImage(named: "p.u-rontya")
    let buyImage65 = UIImage(named: "p.namabi-ru")
    let buyImage66 = UIImage(named: "p.binbi-ru")
    let buyImage67 = UIImage(named: "p.nonaruko-rubi-ru")
    let buyImage68 = UIImage(named: "p.no")
    let buyImage69 = UIImage(named: "p.no")
    
    let buy2Image1 = UIImage(named: "ok1")
    let buy2Image2 = UIImage(named: "ok2")
    let buy2Image3 = UIImage(named: "ok3")
    let buy2Image4 = UIImage(named: "ok4")
    let buy2Image5 = UIImage(named: "ok5")
    let buy2Image6 = UIImage(named: "ok6")
    let buy2Image7 = UIImage(named: "ok7")
    let buy2Image8 = UIImage(named: "ok8")
    let buy2Image9 = UIImage(named: "ok9")
    let buy2Image10 = UIImage(named: "ok10")
    let buy2Image11 = UIImage(named: "ok11")
    let buy2Image12 = UIImage(named: "ok12")
    let buy2Image13 = UIImage(named: "ok13")
    let buy2Image14 = UIImage(named: "ok14")
    let buy2Image15 = UIImage(named: "ok15")
    let buy2Image16 = UIImage(named: "ok16")
    let buy2Image17 = UIImage(named: "ok17")
    let buy2Image18 = UIImage(named: "ok18")
    let buy2Image19 = UIImage(named: "ok19")
    let buy2Image20 = UIImage(named: "ok20")
    let buy2Image21 = UIImage(named: "ok21")
    let buy2Image22 = UIImage(named: "ok22")
    let buy2Image23 = UIImage(named: "ok23")
    let buy2Image24 = UIImage(named: "ok24")
    let buy2Image25 = UIImage(named: "ok25")
    let buy2Image26 = UIImage(named: "ok26")
    let buy2Image27 = UIImage(named: "ok27")
    let buy2Image28 = UIImage(named: "ok28")

    //pickerViewでドラム回転される文字列
    let datePicker2Array = ["メニュー","アイテム","その他"]
    let datePicker3Array1 = ["ラーメン","つけ麺","中華麺","お好み麺セット","セットメニュー","お子様セット","サイドメニュー、一品物","トッピング","ご飯もの","デザート","ドリンク"]
    let datePicker3Array2 = ["ラーメン","ギフト","トッピング","太平燕","冷蔵配送商品","乾麺"]
    
    let datePicker4Array1 = ["味千ラーメン","パイクー麺","黒マー油ラーメン","全のせ拉麺","チャーシュー麺","醤油ラーメン","味噌豚骨ラーメン","辛みそラーメン","復刻ラーメン昭和味","贅沢切り炙りチャーシュー麺","ピリ辛ネギラーメン"]
    let datePicker4Array2 = ["つけ麺","辛つけ麺"]
    let datePicker4Array3 = ["太平燕","パリそば","焼きそば","ちゃんぽん","ピリ辛ちゃんぽん"]
    let datePicker4Array4 = ["ギョーザセット","唐揚げセット","半チャーハンセット","月替りセット"]
    let datePicker4Array5 = ["ハーフセット","スペシャルセット","チャーシュー玉子丼セット","辛みそチャーシューセット","チキン南蛮セット","満腹セット","炙りチャーシュー丼セット","DXセット","馬丼セット"]
    let datePicker4Array6 = ["ラーメンKids","ラーメンJr."]
    let datePicker4Array7 = ["焼きギョーザ5個入り/10個入り","唐揚げ5個","えのき牛肉巻き","エビ春巻き1本","グリーンサラダ","炙りチャーシュー","枝豆","豚足","チキン南蛮","ポテトフライ","ちょい飲みセットA","ちょい飲みセットB"]
    let datePicker4Array8 = ["ネギたっぷり","チャーシュー","野菜","半熟玉子","パイクー(2個)","木耳","もやし","コーン","メンマ"]
    let datePicker4Array9 = ["チャーハン(スープ付き)","ピリ辛チャーハン(スープ付き)","大人の黒チャーハン(スープ付き)","チャーシュー玉子丼","辛みそチャーシュー丼","ライス","おにぎり1個","馬丼"]
    let datePicker4Array10 = ["杏仁豆腐"]
    let datePicker4Array11 = ["ウーロン茶","生ビール(中)","瓶ビール(中瓶)","ノンアルコールビール(小瓶)","(米焼酎)白岳","(芋焼酎)黒霧島"]
    let datePicker4Array12 = ["味千とんこつラ−メン　２430円(税込み)","[味千×桂花]桂花（３食)2,754円（税込み)","味千とんこつラーメンギフト2,730円（税込み）","熊本味千ラーメンギフトセット4,420円（税込み）","熊本豚骨ラーメン２食入り280円（税込み）","匠ラーメン＋味千拉麺丼セット2,000円（税込み）","[味千拉麺]　匠ラーメン１食594円（税込み）","[味千拉麺]　匠ラーメン５食2,970円（税込み）","[味千拉麺]　匠ラーメン１０食5,940円（税込み）"]
    let datePicker4Array13 = ["味千とんこつラーメンギフト2,730円（税込み）","熊本味千ラーメンギフトセット4,420円（税込み）","ギフト　黒マー油ラーメン900円（税込）","ギフト　味千ラーメンBOX900円（税込み）","味千ラーメンBOX×２箱2,800円（税込み）"]
    let datePicker4Array14 = ["[冷蔵配送]くまもと桂花特製太肉519円（税込み）","ラーメン特製ピリ辛ソース400円（税込み）", "特製味付けメンマ864円（税込）"]
    let datePicker4Array15 = ["熊本名物　太平燕　２食１セット650円（税込み）","熊本名物　太平燕２食２セット1,300円（税込み）","熊本名物　太平燕２食４セット2,600円（税込）","熊本名物　太平燕　２食６セット3,900円（税込み）","熊本名物　太平燕２食入6,500円（税込み）","[皇帝]　太平燕あっさりとんこつ味340円（税込）","[皇帝]　太平燕　チキンカツ味340円（税込み）","[皇帝]　太平燕　辛みそ味340円（税込み）"]
    let datePicker4Array16 = ["[冷蔵配送]くまもと桂花特製太肉519円（税込み）","特製味付けメンマ864円（税込み）"]
    let datePicker4Array17 = ["熊本豚骨ラーメン２食入１セット280円（税込み）"]
    
    
    var whatButtonTitleText: String?
    var menuButton1TitleText: String?
    var menuButton2TitleText: String?
    
    //pickerViewで選ばれたものによって値を変える変数
    var hanbetu1: Int?
    var hanbetu2: Int?
    var hanbetu3: Int?
    var hanbetu4: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    override func viewDidLayoutSubviews() {
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        scrollView.contentSize = CGSize(width: 0, height: height * 1.5)
        scrollView.backgroundColor = .systemGray6
        self.view.addSubview(scrollView)
        
        backButton.frame = CGRect(x: width - 40, y: 25, width: 20, height: 20)
        backButton.setTitle("×", for: .normal)
        backButton.setTitleColor(.systemGray2, for: .normal)
        backButton.addTarget(self, action: #selector(backButtontap), for: .touchUpInside)
        backButton.layer.cornerRadius = 10
        backButton.backgroundColor = .white
        self.view.addSubview(backButton)
        
        label1.frame = CGRect(x: 5, y: 40, width: 20, height: 15)
        label1.text = "日付"
        label1.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label1)
        
        label2.frame = CGRect(x: 25, y: 40, width: 30, height: 15)
        label2.text = "*必須"
        label2.font = UIFont.systemFont(ofSize: 10)
        label2.textColor = .red
        scrollView.addSubview(label2)
        
        dayButton.frame = CGRect(x: 70, y: 40, width: width - 70, height: 15)
        dayButton.layer.cornerRadius = 5
        dayButton.backgroundColor = .white
        dayButton.addTarget(self, action: #selector(dayButtonTap), for: .touchUpInside)
        scrollView.addSubview(dayButton)
    }
    
    @objc func backButtontap(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func dayButtonTap(){
        //他の要素は全て削除する。history4ViewControllerに送るものも初期化する
        label3.removeFromSuperview()
        label4.removeFromSuperview()
        label5.removeFromSuperview()
        label6.removeFromSuperview()
        label7.removeFromSuperview()
        label8.removeFromSuperview()
        label9.removeFromSuperview()
        whatButton.removeFromSuperview()
        menuButton1.removeFromSuperview()
        menuButton2.removeFromSuperview()
        starButton1.removeFromSuperview()
        starButton2.removeFromSuperview()
        starButton3.removeFromSuperview()
        starButton4.removeFromSuperview()
        starButton5.removeFromSuperview()
        memoTextField.removeFromSuperview()
        imageButton.removeFromSuperview()
        kakuninButton.removeFromSuperview()
        hanbetu1 = nil
        hanbetu2 = nil
        hanbetu3 = nil
        hanbetu4 = nil
        
        
        pickerView1.frame = CGRect(x: width / 10, y: 60, width: width * 0.85, height: width * 0.7)
        pickerView1.layer.cornerRadius = 10
        pickerView1.backgroundColor = .white
        scrollView.addSubview(pickerView1)
        
        pickerHarfView1.frame = CGRect(x: 0, y: 0, width: pickerView1.frame.width, height: pickerView1.frame.width / 10)
        pickerHarfView1.layer.cornerRadius = 10
        pickerHarfView1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        pickerHarfView1.backgroundColor = .systemGray4
        pickerView1.addSubview(pickerHarfView1)
        
        pickerButton1.frame = CGRect(x: 0, y: 0, width: pickerView1.frame.width / 4, height: pickerHarfView1.frame.height)
        pickerButton1.setTitle("Cancel", for: .normal)
        pickerButton1.setTitleColor(.blue, for: .normal)
        pickerButton1.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton1.addTarget(self, action: #selector(pickerButton1Tap), for: .touchUpInside)
        pickerHarfView1.addSubview(pickerButton1)
        
        pickerButton2.frame = CGRect(x: pickerView1.frame.width - pickerView1.frame.width / 4, y: 0, width: pickerView1.frame.width / 4, height: pickerHarfView1.frame.height)
        pickerButton2.setTitle("Done", for: .normal)
        pickerButton2.setTitleColor(.blue, for: .normal)
        pickerButton2.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton2.addTarget(self, action: #selector(pickerButton2Tap), for: .touchUpInside)
        pickerHarfView1.addSubview(pickerButton2)
        
        pickerLine1.frame = CGRect(x: 0, y: pickerHarfView1.frame.height, width: pickerHarfView1.frame.width, height: 1)
        pickerLine1.backgroundColor = .black
        pickerHarfView1.addSubview(pickerLine1)
        
        datePicker1.frame = CGRect(x: 0, y: pickerHarfView1.frame.height + 1, width: pickerView1.frame.width, height: pickerView1.frame.height - pickerHarfView1.frame.height - 1)
        datePicker1.datePickerMode = UIDatePicker.Mode.date
        datePicker1.timeZone = NSTimeZone.local
        datePicker1.locale = Locale.current
        datePicker1.preferredDatePickerStyle = .wheels
        pickerView1.addSubview(datePicker1)
    }
    @objc func pickerButton1Tap(){
        for i in pickerView1.subviews{
            i.removeFromSuperview()
            pickerView1.removeFromSuperview()
        }
    }
    @objc func pickerButton2Tap(){
        //whatButtonを表示する処理
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        dayButton.setTitle("\(formatter.string(from: datePicker1.date))", for: .normal)
        nextLabelText1 = "\(formatter.string(from: datePicker1.date))"
        dayButton.setTitleColor(.black, for: .normal)
        for i in pickerView1.subviews{
            i.removeFromSuperview()
            pickerView1.removeFromSuperview()
        }
        
        hanbetu1 = 1
        
        label3.frame = CGRect(x: 5, y: 70, width: 100, height: 15)
        label3.text = "何を記録しますか？"
        label3.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label3)
        
        label4.frame = CGRect(x: 110, y: 70, width: 50, height: 15)
        label4.text = "*必須"
        label4.font = UIFont.systemFont(ofSize: 10)
        label4.textColor = .red
        scrollView.addSubview(label4)
        
        whatButton.frame = CGRect(x: 5, y: 90, width: width - 10, height: 15)
        whatButton.backgroundColor = .white
        whatButton.layer.cornerRadius = 5
        whatButton.addTarget(self, action: #selector(whatButtonTap), for: .touchUpInside)
        scrollView.addSubview(whatButton)
        
    }
    
    @objc func whatButtonTap(){
        //dayButtonをタップした際設定したもの以外は全て消去
        label5.removeFromSuperview()
        label6.removeFromSuperview()
        label7.removeFromSuperview()
        label8.removeFromSuperview()
        label9.removeFromSuperview()
        menuButton1.removeFromSuperview()
        menuButton2.removeFromSuperview()
        starButton1.removeFromSuperview()
        starButton2.removeFromSuperview()
        starButton3.removeFromSuperview()
        starButton4.removeFromSuperview()
        starButton5.removeFromSuperview()
        memoTextField.removeFromSuperview()
        imageButton.removeFromSuperview()
        kakuninButton.removeFromSuperview()
        hanbetu1 = 1
        hanbetu2 = nil
        hanbetu3 = nil
        hanbetu4 = nil
        nextLabelText2 = "メニュー"
        whatButton.setTitle("メニュー", for: .normal)
        whatButton.setTitleColor(.black, for: .normal)
        
        pickerView2.frame = CGRect(x: width / 10, y: 110, width: width * 0.85, height: width * 0.7)
        pickerView2.layer.cornerRadius = 10
        pickerView2.backgroundColor = .white
        scrollView.addSubview(pickerView2)
        
        pickerHarfView2.frame = CGRect(x: 0, y: 0, width: pickerView2.frame.width, height: pickerView2.frame.width / 10)
        pickerHarfView2.layer.cornerRadius = 10
        pickerHarfView2.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        pickerHarfView2.backgroundColor = .systemGray4
        pickerView2.addSubview(pickerHarfView2)
        
        pickerButton3.frame = CGRect(x: 0, y: 0, width: pickerView2.frame.width / 4, height: pickerHarfView2.frame.height)
        pickerButton3.setTitle("Cancel", for: .normal)
        pickerButton3.setTitleColor(.blue, for: .normal)
        pickerButton3.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton3.addTarget(self, action: #selector(pickerButton3Tap), for: .touchUpInside)
        pickerHarfView2.addSubview(pickerButton3)
        
        pickerButton4.frame = CGRect(x: pickerView2.frame.width - pickerView2.frame.width / 4, y: 0, width: pickerView2.frame.width / 4, height: pickerHarfView2.frame.height)
        pickerButton4.setTitle("Done", for: .normal)
        pickerButton4.setTitleColor(.blue, for: .normal)
        pickerButton4.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton4.addTarget(self, action: #selector(pickerButton4Tap), for: .touchUpInside)
        pickerHarfView2.addSubview(pickerButton4)
        
        pickerLine2.frame = CGRect(x: 0, y: pickerHarfView2.frame.height, width: pickerHarfView2.frame.width, height: 1)
        pickerLine2.backgroundColor = .black
        pickerHarfView2.addSubview(pickerLine2)
        
        datePicker2.frame = CGRect(x: 0, y: pickerHarfView2.frame.height + 1, width: pickerView2.frame.width, height: pickerView2.frame.height - pickerHarfView2.frame.height - 1)
        datePicker2.delegate = self
        datePicker2.dataSource = self
        pickerView2.addSubview(datePicker2)
    }
    @objc func pickerButton3Tap(){
        for i in pickerView2.subviews{
            i.removeFromSuperview()
            pickerView2.removeFromSuperview()
        }
    }
    @objc func pickerButton4Tap(){
        
        for i in pickerView2.subviews{
            i.removeFromSuperview()
            pickerView2.removeFromSuperview()
        }
        if nextLabelText2 == "メニュー"{
            hanbetu2 = 0
        }else if nextLabelText2 == "アイテム"{
            hanbetu2 = 1
        }else if nextLabelText2 == "その他"{
            hanbetu2 = 2
        }
        label5.frame = CGRect(x: 5, y: 110, width: 130, height: 15)
        if hanbetu2 == 0{
            label5.text = "メニューを選択してください"
        }else if hanbetu2 == 1{
            label5.text = "アイテムを選択してください"
        }
        label5.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label5)
        
        label6.frame = CGRect(x: 130, y: 110, width: 40, height: 15)
        label6.text = "*必須"
        label6.textColor = .red
        label6.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label6)
        
        menuButton1.frame = CGRect(x: 5, y: 130, width: width - 10, height: 15)
        menuButton1.backgroundColor = .white
        menuButton1.layer.cornerRadius = 5
        menuButton1.addTarget(self, action: #selector(menuButton1Tap), for: .touchUpInside)
        scrollView.addSubview(menuButton1)
        
    }
    @objc func menuButton1Tap(){
        
        label7.removeFromSuperview()
        label8.removeFromSuperview()
        label9.removeFromSuperview()
        menuButton2.removeFromSuperview()
        starButton1.removeFromSuperview()
        starButton2.removeFromSuperview()
        starButton3.removeFromSuperview()
        starButton4.removeFromSuperview()
        starButton5.removeFromSuperview()
        memoTextField.removeFromSuperview()
        imageButton.removeFromSuperview()
        kakuninButton.removeFromSuperview()
        hanbetu3 = nil
        hanbetu4 = nil
        nextLabelText3 = "ラーメン"
        menuButton1.setTitle("ラーメン", for: .normal)
        menuButton1.setTitleColor(.black, for: .normal)
        
        pickerView3.frame = CGRect(x: width / 10, y: 150, width: width * 0.85, height: width * 0.7)
        pickerView3.layer.cornerRadius = 10
        pickerView3.backgroundColor = .white
        scrollView.addSubview(pickerView3)
        
        pickerHarfView3.frame = CGRect(x: 0, y: 0, width: pickerView3.frame.width, height: pickerView3.frame.width / 10)
        pickerHarfView3.layer.cornerRadius = 10
        pickerHarfView3.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        pickerHarfView3.backgroundColor = .systemGray4
        pickerView3.addSubview(pickerHarfView3)
        
        pickerButton5.frame = CGRect(x: 0, y: 0, width: pickerView3.frame.width / 4, height: pickerHarfView3.frame.height)
        pickerButton5.setTitle("Cancel", for: .normal)
        pickerButton5.setTitleColor(.blue, for: .normal)
        pickerButton5.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton5.addTarget(self, action: #selector(pickerButton5Tap), for: .touchUpInside)
        pickerHarfView3.addSubview(pickerButton5)
        
        pickerButton6.frame = CGRect(x: pickerView3.frame.width - pickerView3.frame.width / 4, y: 0, width: pickerView3.frame.width / 4, height: pickerHarfView3.frame.height)
        pickerButton6.setTitle("Done", for: .normal)
        pickerButton6.setTitleColor(.blue, for: .normal)
        pickerButton6.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton6.addTarget(self, action: #selector(pickerButton6Tap), for: .touchUpInside)
        pickerHarfView3.addSubview(pickerButton6)
        
        pickerLine3.frame = CGRect(x: 0, y: pickerHarfView3.frame.height, width: pickerHarfView3.frame.width, height: 1)
        pickerLine3.backgroundColor = .black
        pickerHarfView3.addSubview(pickerLine3)
        
        datePicker3.frame = CGRect(x: 0, y: pickerHarfView3.frame.height + 1, width: pickerView3.frame.width, height: pickerView3.frame.height - pickerHarfView3.frame.height - 1)
        datePicker3.delegate = self
        datePicker3.dataSource = self
        pickerView3.addSubview(datePicker3)
        
    }
    @objc func pickerButton5Tap(){
        for i in pickerView3.subviews{
            i.removeFromSuperview()
            pickerView3.removeFromSuperview()
        }
    }
    @objc func pickerButton6Tap(){
        for i in pickerView3.subviews{
            i.removeFromSuperview()
            pickerView3.removeFromSuperview()
        }
        if nextLabelText3 == "ラーメン"{
            hanbetu3 = 0
        }else if nextLabelText3 == "つけ麺"{
            hanbetu3 = 1
        }else if nextLabelText3 == "中華麺"{
            hanbetu3 = 2
        }else if nextLabelText3 == "お好み麺セット"{
            hanbetu3 = 3
        }else if nextLabelText3 == "セットメニュー"{
            hanbetu3 = 4
        }else if nextLabelText3 == "お子様セット"{
            hanbetu3 = 5
        }else if nextLabelText3 == "サイドメニュー、一品物"{
            hanbetu3 = 6
        }else if nextLabelText3 == "トッピング"{
            hanbetu3 = 7
        }else if nextLabelText3 == "ご飯もの"{
            hanbetu3 = 8
        }else if nextLabelText3 == "デザート"{
            hanbetu3 = 9
        }else if nextLabelText3 == "ドリンク"{
            hanbetu3 = 10
        }else if hanbetu2 == 1 && nextLabelText3 == "ラーメン"{
            hanbetu3 = 11
        }else if nextLabelText3 == "ギフト"{
            hanbetu3 = 12
        }else if nextLabelText3 == "トッピング"{
            hanbetu3 = 13
        }else if nextLabelText3 == "太平燕"{
            hanbetu3 = 14
        }else if nextLabelText3 == "冷蔵配送商品"{
            hanbetu3 = 15
        }else if nextLabelText3 == "乾麺"{
            hanbetu3 = 16
        }
        
        menuButton2.frame = CGRect(x: 5, y: 150, width: width - 10, height: 15)
        menuButton2.backgroundColor = .white
        menuButton2.layer.cornerRadius = 5
        menuButton2.addTarget(self, action: #selector(menuButton2Tap), for: .touchUpInside)
        scrollView.addSubview(menuButton2)
    }
    
    @objc func menuButton2Tap(){
        
        label7.removeFromSuperview()
        label8.removeFromSuperview()
        label9.removeFromSuperview()
        starButton1.removeFromSuperview()
        starButton2.removeFromSuperview()
        starButton3.removeFromSuperview()
        starButton4.removeFromSuperview()
        starButton5.removeFromSuperview()
        memoTextField.removeFromSuperview()
        imageButton.removeFromSuperview()
        kakuninButton.removeFromSuperview()
        hanbetu4 = nil
        
        nextLabelText4 = "味千ラーメン"
        
        pickerView4.frame = CGRect(x: width / 10, y: 170, width: width * 0.85, height: width * 0.7)
        pickerView4.layer.cornerRadius = 10
        pickerView4.backgroundColor = .white
        scrollView.addSubview(pickerView4)
        
        pickerHarfView4.frame = CGRect(x: 0, y: 0, width: pickerView4.frame.width, height: pickerView4.frame.width / 10)
        pickerHarfView4.layer.cornerRadius = 10
        pickerHarfView4.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        pickerHarfView4.backgroundColor = .systemGray4
        pickerView4.addSubview(pickerHarfView4)
        
        pickerButton7.frame = CGRect(x: 0, y: 0, width: pickerView4.frame.width / 4, height: pickerHarfView4.frame.height)
        pickerButton7.setTitle("Cancel", for: .normal)
        pickerButton7.setTitleColor(.blue, for: .normal)
        pickerButton7.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton7.addTarget(self, action: #selector(pickerButton7Tap), for: .touchUpInside)
        pickerHarfView4.addSubview(pickerButton7)
        
        pickerButton8.frame = CGRect(x: pickerView4.frame.width - pickerView4.frame.width / 4, y: 0, width: pickerView4.frame.width / 4, height: pickerHarfView4.frame.height)
        pickerButton8.setTitle("Done", for: .normal)
        pickerButton8.setTitleColor(.blue, for: .normal)
        pickerButton8.titleLabel?.textAlignment = NSTextAlignment.center
        pickerButton8.addTarget(self, action: #selector(pickerButton8Tap), for: .touchUpInside)
        pickerHarfView4.addSubview(pickerButton8)
        
        pickerLine4.frame = CGRect(x: 0, y: pickerHarfView4.frame.height, width: pickerHarfView4.frame.width, height: 1)
        pickerLine4.backgroundColor = .black
        pickerHarfView4.addSubview(pickerLine4)
        
        datePicker4.frame = CGRect(x: 0, y: pickerHarfView4.frame.height + 1, width: pickerView4.frame.width, height: pickerView4.frame.height - pickerHarfView4.frame.height - 1)
        datePicker4.delegate = self
        datePicker4.dataSource = self
        pickerView4.addSubview(datePicker4)
        
    }
    @objc func pickerButton7Tap(){
        for i in pickerView4.subviews{
            i.removeFromSuperview()
            pickerView4.removeFromSuperview()
        }
    }
    @objc func pickerButton8Tap(){
        for i in pickerView4.subviews{
            i.removeFromSuperview()
            pickerView4.removeFromSuperview()
        }
        label7.frame = CGRect(x: 5, y: 180, width: 40, height: 15)
        label7.text = "評価"
        label7.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label7)
        
        starButton1.frame = CGRect(x: 50, y: 170, width: 40, height: 40)
        starButton1.backgroundColor = .systemGray6
        starButton1.setTitle("★", for: .normal)
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton1.addTarget(self, action: #selector(starButton1Tap), for: .touchUpInside)
        scrollView.addSubview(starButton1)
        
        starButton2.frame = CGRect(x: 100, y: 170, width: 40, height: 40)
        starButton2.backgroundColor = .systemGray6
        starButton2.setTitle("★", for: .normal)
        starButton2.setTitleColor(.yellow, for: .normal)
        starButton2.addTarget(self, action: #selector(starButton2Tap), for: .touchUpInside)
        scrollView.addSubview(starButton2)
        
        starButton3.frame = CGRect(x: 150, y: 170, width: 40, height: 40)
        starButton3.backgroundColor = .systemGray6
        starButton3.setTitle("★", for: .normal)
        starButton3.setTitleColor(.yellow, for: .normal)
        starButton3.addTarget(self, action: #selector(starButton3Tap), for: .touchUpInside)
        scrollView.addSubview(starButton3)
        
        starButton4.frame = CGRect(x: 200, y: 170, width: 40, height: 40)
        starButton4.backgroundColor = .systemGray6
        starButton4.setTitle("★", for: .normal)
        starButton4.setTitleColor(.white, for: .normal)
        starButton4.addTarget(self, action: #selector(starButton4Tap), for: .touchUpInside)
        scrollView.addSubview(starButton4)
        
        starButton5.frame = CGRect(x: 250, y: 170, width: 40, height: 40)
        starButton5.backgroundColor = .systemGray6
        starButton5.setTitle("★", for: .normal)
        starButton5.setTitleColor(.white, for: .normal)
        starButton5.addTarget(self, action: #selector(starButton5Tap), for: .touchUpInside)
        scrollView.addSubview(starButton5)
        
        label8.frame = CGRect(x: 5, y: 210, width: 40, height: 15)
        label8.text = "メモ"
        label8.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label8)
        
        memoTextField.frame = CGRect(x: 5, y: 230, width: width - 10, height: 20)
        memoTextField.backgroundColor = .white
        memoTextField.text = ""
        memoTextField.layer.cornerRadius = 5
        scrollView.addSubview(memoTextField)
        
        label9.frame = CGRect(x: 5, y: 260, width: 30, height: 15)
        label9.text = "画像 :"
        label9.font = UIFont.systemFont(ofSize: 10)
        scrollView.addSubview(label9)
        
        imageButton.frame = CGRect(x: 5, y: 280, width: width - 10, height: width - 10)
        scrollView.addSubview(imageButton)
        
        kakuninButton.frame = CGRect(x: 5, y: 280 + width, width: width - 10, height: 30)
        kakuninButton.backgroundColor = .red
        kakuninButton.setTitle("確認", for: .normal)
        kakuninButton.setTitleColor(.white, for: .normal)
        kakuninButton.titleLabel?.textAlignment = NSTextAlignment.center
        kakuninButton.addTarget(self, action: #selector(kakuninButtonTap), for: .touchUpInside)
        scrollView.addSubview(kakuninButton)
        
        
    }
    @objc func starButton1Tap(){
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton2.setTitleColor(.white, for: .normal)
        starButton3.setTitleColor(.white, for: .normal)
        starButton4.setTitleColor(.white, for: .normal)
        starButton5.setTitleColor(.white, for: .normal)
        starButtonNumber = 1
        
    }
    @objc func starButton2Tap(){
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton2.setTitleColor(.yellow, for: .normal)
        starButton3.setTitleColor(.white, for: .normal)
        starButton4.setTitleColor(.white, for: .normal)
        starButton5.setTitleColor(.white, for: .normal)
        starButtonNumber = 2
    }
    @objc func starButton3Tap(){
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton2.setTitleColor(.yellow, for: .normal)
        starButton3.setTitleColor(.yellow, for: .normal)
        starButton4.setTitleColor(.white, for: .normal)
        starButton5.setTitleColor(.white, for: .normal)
        starButtonNumber = 3
    }
    @objc func starButton4Tap(){
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton2.setTitleColor(.yellow, for: .normal)
        starButton3.setTitleColor(.yellow, for: .normal)
        starButton4.setTitleColor(.yellow, for: .normal)
        starButton5.setTitleColor(.white, for: .normal)
        starButtonNumber = 4
    }
    @objc func starButton5Tap(){
        starButton1.setTitleColor(.yellow, for: .normal)
        starButton2.setTitleColor(.yellow, for: .normal)
        starButton3.setTitleColor(.yellow, for: .normal)
        starButton4.setTitleColor(.yellow, for: .normal)
        starButton5.setTitleColor(.yellow, for: .normal)
        starButtonNumber = 5
    }
    @objc func kakuninButtonTap(){
        let a = memoTextField.text
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "history3") as! history3ViewController
        vc.sendText1 = nextLabelText1!
        vc.sendText2 = nextLabelText2!
        vc.sendText3 = nextLabelText3!
        vc.sendText4 = nextLabelText4!
        vc.sendText5 = a
        vc.sendStarNumber = starButtonNumber
        vc.sendImage = nextImage!
        self.navigationController?.pushViewController(vc, animated: false)
    }
    //ひとつのPickerViewに対して、横にいくつドラムロールを並べるかを指定。通常は1でOK
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    //PickerViewの選択肢の個数を返す処理。
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if hanbetu1 == 1 && hanbetu2 == nil{
            return datePicker2Array.count
        }else if hanbetu2 == 0 && hanbetu3 == nil{
            return datePicker3Array1.count
        }else if hanbetu2 == 1 && hanbetu3 == nil{
            return datePicker3Array2.count
        }else if hanbetu3 == 0 && hanbetu4 == nil{
            return datePicker4Array1.count
        }else if hanbetu3 == 1 && hanbetu4 == nil{
            return datePicker4Array2.count
        }else if hanbetu3 == 2 && hanbetu4 == nil{
            return datePicker4Array3.count
        }else if hanbetu3 == 3 && hanbetu4 == nil{
            return datePicker4Array4.count
        }else if hanbetu3 == 4 && hanbetu4 == nil{
            return datePicker4Array5.count
        }else if hanbetu3 == 5 && hanbetu4 == nil{
            return datePicker4Array6.count
        }else if hanbetu3 == 6 && hanbetu4 == nil{
            return datePicker4Array7.count
        }else if hanbetu3 == 7 && hanbetu4 == nil{
            return datePicker4Array8.count
        }else if hanbetu3 == 8 && hanbetu4 == nil{
            return datePicker4Array9.count
        }else if hanbetu3 == 9 && hanbetu4 == nil{
            return datePicker4Array10.count
        }else if hanbetu3 == 10 && hanbetu4 == nil{
            return datePicker4Array11.count
        }else if hanbetu3 == 11 && hanbetu4 == nil{
            return datePicker4Array12.count
        }else if hanbetu3 == 12 && hanbetu4 == nil{
            return datePicker4Array13.count
        }else if hanbetu3 == 13 && hanbetu4 == nil{
            return datePicker4Array14.count
        }else if hanbetu3 == 14 && hanbetu4 == nil{
            return datePicker4Array15.count
        }else if hanbetu3 == 15 && hanbetu4 == nil{
            return datePicker4Array16.count
        }else if hanbetu3 == 16 && hanbetu4 == nil{
            return datePicker4Array17.count
        }else{
            return 1
        }
        
    }
     
    //PickerViewの選択肢として表示する文字列を設定（これがないと、?として表示されてしまう）
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if hanbetu1 == 1 && hanbetu2 == nil{
            return String(datePicker2Array[row])
        }else if hanbetu2 == 0 && hanbetu3 == nil{
            return String(datePicker3Array1[row])
        }else if hanbetu2 == 1 && hanbetu3 == nil{
            return String(datePicker3Array2[row])
        }else if hanbetu3 == 0 && hanbetu4 == nil{
            return String(datePicker4Array1[row])
        }else if hanbetu3 == 1 && hanbetu4 == nil{
            return String(datePicker4Array2[row])
        }else if hanbetu3 == 2 && hanbetu4 == nil{
            return String(datePicker4Array3[row])
        }else if hanbetu3 == 3 && hanbetu4 == nil{
            return String(datePicker4Array4[row])
        }else if hanbetu3 == 4 && hanbetu4 == nil{
            return String(datePicker4Array5[row])
        }else if hanbetu3 == 5 && hanbetu4 == nil{
            return String(datePicker4Array6[row])
        }else if hanbetu3 == 6 && hanbetu4 == nil{
            return String(datePicker4Array7[row])
        }else if hanbetu3 == 7 && hanbetu4 == nil{
            return String(datePicker4Array8[row])
        }else if hanbetu3 == 8 && hanbetu4 == nil{
            return String(datePicker4Array9[row])
        }else if hanbetu3 == 9 && hanbetu4 == nil{
            return String(datePicker4Array10[row])
        }else if hanbetu3 == 10 && hanbetu4 == nil{
            return String(datePicker4Array11[row])
        }else if hanbetu3 == 11 && hanbetu4 == nil{
            return String(datePicker4Array12[row])
        }else if hanbetu3 == 12 && hanbetu4 == nil{
            return String(datePicker4Array13[row])
        }else if hanbetu3 == 13 && hanbetu4 == nil{
            return String(datePicker4Array14[row])
        }else if hanbetu3 == 14 && hanbetu4 == nil{
            return String(datePicker4Array15[row])
        }else if hanbetu3 == 15 && hanbetu4 == nil{
            return String(datePicker4Array16[row])
        }else if hanbetu3 == 16 && hanbetu4 == nil{
            return String(datePicker4Array17[row])
        }else{
            return ""
        }
    }
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        //whatButtonの処理
        if hanbetu1 == 1 && hanbetu2 == nil{
            if datePicker2Array[row] == "メニュー"{
                whatButton.setTitle("メニュー", for: .normal)
                whatButton.setTitleColor(.black, for: .normal)
                whatButtonTitleText = "メニュー"
                nextLabelText2 = "メニュー"
            }else if datePicker2Array[row] == "アイテム"{
                whatButton.setTitle("アイテム", for: .normal)
                whatButton.setTitleColor(.black, for: .normal)
                whatButtonTitleText = "アイテム"
                nextLabelText2 = "アイテム"
            }else{
                whatButton.setTitle("その他", for: .normal)
                whatButton.setTitleColor(.black, for: .normal)
                whatButtonTitleText = "その他"
                nextLabelText2 = "その他"
            }
        }
        
        //menuButton1の処理
        if hanbetu3 == nil{
            if hanbetu2 == 0 && datePicker3Array1[row] == "ラーメン" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "つけ麺" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "中華麺" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "お好み麺セット" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "セットメニュー" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "お子様セット" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "サイドメニュー、一品物" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "トッピング" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "ご飯もの" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "デザート" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 0 && datePicker3Array1[row] == "ドリンク" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array1[row]
                nextLabelText3 = "\(datePicker3Array1[row])"
                menuButton1.setTitle("\(datePicker3Array1[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "ラーメン" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "ギフト" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "トッピング" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "太平燕" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "冷蔵配送商品" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }else if hanbetu2 == 1 && datePicker3Array2[row] == "乾麺" && hanbetu3 == nil{
                menuButton1TitleText = datePicker3Array2[row]
                nextLabelText3 = "\(datePicker3Array2[row])"
                menuButton1.setTitle("\(datePicker3Array2[row])", for: .normal)
                menuButton1.setTitleColor(.black, for: .normal)
                
            }
            
        }
        
        
        //menuButton2の処理
        //
        if hanbetu3 == 0 && datePicker4Array1[row] == "味千ラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            imageButton.setImage(self.buyImage1, for: .normal)
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            nextImage = self.buyImage1
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "パイクー麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage2, for: .normal)
            nextImage = self.buyImage2
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "黒マー油ラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage3, for: .normal)
            nextImage = self.buyImage3
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "全のせ拉麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage4, for: .normal)
            nextImage = self.buyImage4
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "チャーシュー麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage5, for: .normal)
            nextImage = self.buyImage5
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "醤油ラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage6, for: .normal)
            nextImage = self.buyImage6
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "味噌豚骨ラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage7, for: .normal)
            nextImage = self.buyImage7
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "辛みそラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage8, for: .normal)
            nextImage = self.buyImage8
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "復刻ラーメン昭和味" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage9, for: .normal)
            nextImage = self.buyImage9
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "贅沢切り炙りチャーシュー麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage10, for: .normal)
            nextImage = self.buyImage10
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "贅沢切り炙りチャーシュー麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage11, for: .normal)
            nextImage = self.buyImage11
        }else if hanbetu3 == 0 && datePicker4Array1[row] == "ピリ辛ネギラーメン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array1[row]
            nextLabelText4 = "\(datePicker4Array1[row])"
            menuButton2.setTitle("\(datePicker4Array1[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage12, for: .normal)
            nextImage = self.buyImage12
        }else if hanbetu3 == 1 && datePicker4Array2[row] == "つけ麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array2[row]
            nextLabelText4 = "\(datePicker4Array2[row])"
            menuButton2.setTitle("\(datePicker4Array2[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage13, for: .normal)
            nextImage = self.buyImage13
        }else if hanbetu3 == 1 && datePicker4Array2[row] == "辛つけ麺" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array2[row]
            nextLabelText4 = "\(datePicker4Array2[row])"
            menuButton2.setTitle("\(datePicker4Array2[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage14, for: .normal)
            nextImage = self.buyImage14
        }else if hanbetu3 == 2 && datePicker4Array3[row] == "太平燕" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array3[row]
            nextLabelText4 = "\(datePicker4Array3[row])"
            menuButton2.setTitle("\(datePicker4Array3[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage15, for: .normal)
            nextImage = self.buyImage15
            
        }else if hanbetu3 == 2 && datePicker4Array3[row] == "パリそば" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array3[row]
            nextLabelText4 = "\(datePicker4Array3[row])"
            menuButton2.setTitle("\(datePicker4Array3[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage16, for: .normal)
            nextImage = self.buyImage16
        }else if hanbetu3 == 2 && datePicker4Array3[row] == "焼きそば" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array3[row]
            nextLabelText4 = "\(datePicker4Array3[row])"
            menuButton2.setTitle("\(datePicker4Array3[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage17, for: .normal)
            nextImage = self.buyImage17
        }else if hanbetu3 == 2 && datePicker4Array3[row] == "ちゃんぽん" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array3[row]
            nextLabelText4 = "\(datePicker4Array3[row])"
            menuButton2.setTitle("\(datePicker4Array3[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage18, for: .normal)
            nextImage = self.buyImage18
        }else if hanbetu3 == 2 && datePicker4Array3[row] == "ピリ辛ちゃんぽん" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array3[row]
            nextLabelText4 = "\(datePicker4Array3[row])"
            menuButton2.setTitle("\(datePicker4Array3[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage19, for: .normal)
            nextImage = self.buyImage19
        }else if hanbetu3 == 3 && datePicker4Array4[row] == "ギョーザセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array4[row]
            nextLabelText4 = "\(datePicker4Array4[row])"
            menuButton2.setTitle("\(datePicker4Array4[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage20, for: .normal)
            nextImage = self.buyImage20
        }else if hanbetu3 == 3 && datePicker4Array4[row] == "唐揚げセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array4[row]
            nextLabelText4 = "\(datePicker4Array4[row])"
            menuButton2.setTitle("\(datePicker4Array4[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage21, for: .normal)
            nextImage = self.buyImage21
        }else if hanbetu3 == 3 && datePicker4Array4[row] == "半チャーハンセット" && hanbetu4 == nil {
            menuButton2TitleText = datePicker4Array4[row]
            nextLabelText4 = "\(datePicker4Array4[row])"
            menuButton2.setTitle("\(datePicker4Array4[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage22, for: .normal)
            nextImage = self.buyImage22
        }else if hanbetu3 == 3 && datePicker4Array4[row] == "月替りセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array4[row]
            nextLabelText4 = "\(datePicker4Array4[row])"
            menuButton2.setTitle("\(datePicker4Array4[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage23, for: .normal)
            nextImage = self.buyImage23
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "ハーフセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage24, for: .normal)
            nextImage = self.buyImage24
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "スペシャルセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage25, for: .normal)
            nextImage = self.buyImage25
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "チャーシュー玉子丼セット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage26, for: .normal)
            nextImage = self.buyImage26
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "辛みそチャーシューセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage27, for: .normal)
            nextImage = self.buyImage27
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "チキン南蛮セット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage28, for: .normal)
            nextImage = self.buyImage28
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "満腹セット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage28, for: .normal)
            nextImage = self.buyImage28
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "炙りチャーシュー丼セット" && hanbetu4 == nil {
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage29, for: .normal)
            nextImage = self.buyImage29
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "DXセット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage30, for: .normal)
            nextImage = self.buyImage30
        }else if hanbetu3 == 4 && datePicker4Array5[row] == "馬丼セット" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array5[row]
            nextLabelText4 = "\(datePicker4Array5[row])"
            menuButton2.setTitle("\(datePicker4Array5[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage31, for: .normal)
            nextImage = self.buyImage31
        }else if hanbetu3 == 5 && datePicker4Array6[row] == "ラーメンKids" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array6[row]
            nextLabelText4 = "\(datePicker4Array6[row])"
            menuButton2.setTitle("\(datePicker4Array6[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage32, for: .normal)
            nextImage = self.buyImage32
        }else if hanbetu3 == 5 && datePicker4Array6[row] == "ラーメンJr." && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array6[row]
            nextLabelText4 = "\(datePicker4Array6[row])"
            menuButton2.setTitle("\(datePicker4Array6[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage33, for: .normal)
            nextImage = self.buyImage33
            
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "焼きギョーザ5個入り/10個入り" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage34, for: .normal)
            nextImage = self.buyImage34
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "唐揚げ5個" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage35, for: .normal)
            nextImage = self.buyImage35
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "えのき牛肉巻き" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage36, for: .normal)
            nextImage = self.buyImage36
        }
        else if hanbetu3 == 6 && datePicker4Array7[row] == "エビ春巻き1本" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage37, for: .normal)
            nextImage = self.buyImage37
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "グリーンサラダ" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage38, for: .normal)
            nextImage = self.buyImage38
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "炙りチャーシュー" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage39, for: .normal)
            nextImage = self.buyImage39
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "枝豆" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage40, for: .normal)
            nextImage = self.buyImage40
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "豚足" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage41, for: .normal)
            nextImage = self.buyImage41
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "チキン南蛮" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage42, for: .normal)
            nextImage = self.buyImage42
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "ポテトフライ" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage43, for: .normal)
            nextImage = self.buyImage43
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "ちょい飲みセットA" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage44, for: .normal)
            nextImage = self.buyImage44
        }else if hanbetu3 == 6 && datePicker4Array7[row] == "ちょい飲みセットB" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array7[row]
            nextLabelText4 = "\(datePicker4Array7[row])"
            menuButton2.setTitle("\(datePicker4Array7[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage45, for: .normal)
            nextImage = self.buyImage45
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "ネギたっぷり" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage46, for: .normal)
            nextImage = self.buyImage46
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "チャーシュー" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage47, for: .normal)
            nextImage = self.buyImage47
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "野菜" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage48, for: .normal)
            nextImage = self.buyImage48
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "半熟玉子" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage49, for: .normal)
            nextImage = self.buyImage49
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "パイクー(2個)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage50, for: .normal)
            nextImage = self.buyImage50
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "木耳" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage51, for: .normal)
            nextImage = self.buyImage51
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "もやし" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage52, for: .normal)
            nextImage = self.buyImage52
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "コーン" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage53, for: .normal)
            nextImage = self.buyImage53
        }else if hanbetu3 == 7 && datePicker4Array8[row] == "メンマ" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array8[row]
            nextLabelText4 = "\(datePicker4Array8[row])"
            menuButton2.setTitle("\(datePicker4Array8[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage54, for: .normal)
            nextImage = self.buyImage54
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "チャーハン(スープ付き)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage55, for: .normal)
            nextImage = self.buyImage55
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "ピリ辛チャーハン(スープ付き)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage56, for: .normal)
            nextImage = self.buyImage56
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "大人の黒チャーハン(スープ付き)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage57, for: .normal)
            nextImage = self.buyImage57
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "チャーシュー玉子丼" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage58, for: .normal)
            nextImage = self.buyImage58
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "辛みそチャーシュー丼" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage59, for: .normal)
            nextImage = self.buyImage59
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "ライス" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage60, for: .normal)
            nextImage = self.buyImage60
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "おにぎり1個" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage61, for: .normal)
            nextImage = self.buyImage61
        }else if hanbetu3 == 8 && datePicker4Array9[row] == "馬丼" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array9[row]
            nextLabelText4 = "\(datePicker4Array9[row])"
            menuButton2.setTitle("\(datePicker4Array9[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage62, for: .normal)
            nextImage = self.buyImage62
        }else if hanbetu3 == 9 && datePicker4Array10[row] == "杏仁豆腐" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array10[row]
            nextLabelText4 = "\(datePicker4Array10[row])"
            menuButton2.setTitle("\(datePicker4Array10[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage63, for: .normal)
            nextImage = self.buyImage63
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "ウーロン茶" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage64, for: .normal)
            nextImage = self.buyImage64
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "生ビール(中)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage65, for: .normal)
            nextImage = self.buyImage65
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "瓶ビール(中瓶)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage66, for: .normal)
            nextImage = self.buyImage66
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "ノンアルコールビール(小瓶)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage67, for: .normal)
            nextImage = self.buyImage67
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "(米焼酎)白岳" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage68, for: .normal)
            nextImage = self.buyImage68
        }else if hanbetu3 == 10 && datePicker4Array11[row] == "(芋焼酎)黒霧島" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array11[row]
            nextLabelText4 = "\(datePicker4Array11[row])"
            menuButton2.setTitle("\(datePicker4Array11[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buyImage69, for: .normal)
            nextImage = self.buyImage69
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "味千とんこつラ−メン　２430円(税込み)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image1, for: .normal)
            nextImage = self.buy2Image1
            
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "[味千×桂花]桂花（３食)2,754円（税込み)" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image2, for: .normal)
            nextImage = self.buy2Image2
            
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "味千とんこつラーメンギフト2,730円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image3, for: .normal)
            nextImage = self.buy2Image3
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "熊本味千ラーメンギフトセット4,420円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image4, for: .normal)
            nextImage = self.buy2Image4
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "熊本豚骨ラーメン２食入り280円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image5, for: .normal)
            nextImage = self.buy2Image5
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "匠ラーメン＋味千拉麺丼セット2,000円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image6, for: .normal)
            nextImage = self.buy2Image6
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "[味千拉麺]　匠ラーメン１食594円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image7, for: .normal)
            nextImage = self.buy2Image7
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "[味千拉麺]　匠ラーメン５食2,970円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image8, for: .normal)
            nextImage = self.buy2Image8
        }else if hanbetu3 == 11 && datePicker4Array12[row] == "[味千拉麺]　匠ラーメン１０食5,940円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array12[row]
            nextLabelText4 = "\(datePicker4Array12[row])"
            menuButton2.setTitle("\(datePicker4Array12[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image9, for: .normal)
            nextImage = self.buy2Image9
        }else if hanbetu3 == 12 && datePicker4Array13[row] == "味千とんこつラーメンギフト2,730円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array13[row]
            nextLabelText4 = "\(datePicker4Array13[row])"
            menuButton2.setTitle("\(datePicker4Array13[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image10, for: .normal)
            nextImage = self.buy2Image10
        }else if hanbetu3 == 12 && datePicker4Array13[row] == "熊本味千ラーメンギフトセット4,420円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array13[row]
            nextLabelText4 = "\(datePicker4Array13[row])"
            menuButton2.setTitle("\(datePicker4Array13[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image11, for: .normal)
            nextImage = self.buy2Image11
        }else if hanbetu3 == 12 && datePicker4Array13[row] == "ギフト　黒マー油ラーメン900円（税込）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array13[row]
            nextLabelText4 = "\(datePicker4Array13[row])"
            menuButton2.setTitle("\(datePicker4Array13[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image12, for: .normal)
            nextImage = self.buy2Image12
        }else if hanbetu3 == 12 && datePicker4Array13[row] == "ギフト　味千ラーメンBOX900円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array13[row]
            nextLabelText4 = "\(datePicker4Array13[row])"
            menuButton2.setTitle("\(datePicker4Array13[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image13, for: .normal)
            nextImage = self.buy2Image13
        }else if hanbetu3 == 12 && datePicker4Array13[row] == "味千ラーメンBOX×２箱2,800円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array13[row]
            nextLabelText4 = "\(datePicker4Array13[row])"
            menuButton2.setTitle("\(datePicker4Array13[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image14, for: .normal)
            nextImage = self.buy2Image14
        }else if hanbetu3 == 13 && datePicker4Array14[row] == "[冷蔵配送]くまもと桂花特製太肉519円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array14[row]
            nextLabelText4 = "\(datePicker4Array14[row])"
            menuButton2.setTitle("\(datePicker4Array14[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image15, for: .normal)
            nextImage = self.buy2Image15
        }else if hanbetu3 == 13 && datePicker4Array14[row] == "ラーメン特製ピリ辛ソース400円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array14[row]
            nextLabelText4 = "\(datePicker4Array14[row])"
            menuButton2.setTitle("\(datePicker4Array14[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image16, for: .normal)
            nextImage = self.buy2Image16
        }else if hanbetu3 == 13 && datePicker4Array14[row] == "特製味付けメンマ864円（税込）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array14[row]
            nextLabelText4 = "\(datePicker4Array14[row])"
            menuButton2.setTitle("\(datePicker4Array14[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image17, for: .normal)
            nextImage = self.buy2Image17
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "熊本名物　太平燕　２食１セット650円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image18, for: .normal)
            nextImage = self.buy2Image18
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "熊本名物　太平燕２食２セット1,300円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image19, for: .normal)
            nextImage = self.buy2Image19
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "熊本名物　太平燕２食４セット2,600円（税込）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image20, for: .normal)
            nextImage = self.buy2Image20
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "熊本名物　太平燕　２食６セット3,900円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image21, for: .normal)
            nextImage = self.buy2Image21
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "熊本名物　太平燕２食入6,500円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image22, for: .normal)
            nextImage = self.buy2Image22
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "[皇帝]　太平燕あっさりとんこつ味340円（税込）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image23, for: .normal)
            nextImage = self.buy2Image23
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "[皇帝]　太平燕　チキンカツ味340円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image24, for: .normal)
            nextImage = self.buy2Image24
        }else if hanbetu3 == 14 && datePicker4Array15[row] == "[皇帝]　太平燕　辛みそ味340円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array15[row]
            nextLabelText4 = "\(datePicker4Array15[row])"
            menuButton2.setTitle("\(datePicker4Array15[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image25, for: .normal)
            nextImage = self.buy2Image25
        }else if hanbetu3 == 15 && datePicker4Array16[row] == "[冷蔵配送]くまもと桂花特製太肉519円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array16[row]
            nextLabelText4 = "\(datePicker4Array16[row])"
            menuButton2.setTitle("\(datePicker4Array16[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image26, for: .normal)
            nextImage = self.buy2Image26
        }else if hanbetu3 == 15 && datePicker4Array16[row] == "特製味付けメンマ864円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array16[row]
            nextLabelText4 = "\(datePicker4Array16[row])"
            menuButton2.setTitle("\(datePicker4Array16[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image27, for: .normal)
            nextImage = self.buy2Image27
        }else if hanbetu3 == 16 && datePicker4Array17[row] == "特製味付けメンマ864円（税込み）" && hanbetu4 == nil{
            menuButton2TitleText = datePicker4Array17[row]
            nextLabelText4 = "\(datePicker4Array17[row])"
            menuButton2.setTitle("\(datePicker4Array17[row])", for: .normal)
            menuButton2.setTitleColor(.black, for: .normal)
            imageButton.setImage(self.buy2Image28, for: .normal)
            nextImage = self.buy2Image28
        }
    }
}
