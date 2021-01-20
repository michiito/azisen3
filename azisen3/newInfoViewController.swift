
//１１〜６７　基本部品
//７８〜２０８　基本的なボタンの情報
//２０９〜２１８　座標を決めるfor文
//２２６〜３４１　情報ボタンをタップした際の処理

import UIKit

class newInfoViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    let scrollView = UIScrollView()
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()
    let view5 = UIView()
    let view6 = UIView()
    let view7 = UIView()
    let view8 = UIView()
    let view9 = UIView()
    let view10 = UIView()
    let view11 = UIView()
    let view12 = UIView()
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button10 = UIButton()
    let button11 = UIButton()
    let button12 = UIButton()
    
    
    let image1 = UIImage(named: "infologo")
    let image2 = UIImage(named: "info22")
    let image3 = UIImage(named: "info500")
    let image4 = UIImage(named: "info22")
    let image5 = UIImage(named: "info3000")
    let image6 = UIImage(named: "infohonten")
    let image7 = UIImage(named: "info22")
    let image8 = UIImage(named: "infotokutoku")
    let image9 = UIImage(named: "infosho")
    let image10 = UIImage(named: "info22")
    let image11 = UIImage(named: "infologo")
    let image12 = UIImage(named: "info22")
    
    
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    let imageView3 = UIImageView()
    let imageView4 = UIImageView()
    let imageView5 = UIImageView()
    let imageView6 = UIImageView()
    let imageView7 = UIImageView()
    let imageView8 = UIImageView()
    let imageView9 = UIImageView()
    let imageView10 = UIImageView()
    let imageView11 = UIImageView()
    let imageView12 = UIImageView()
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "新着情報"
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "新着情報"
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.view.backgroundColor = .systemGray6
        navigationController?.navigationBar.isTranslucent = false
        //新しいものを一番上に配置するために、数字の大きいものを前にする。
        let viewArray = [view12,view11,view10,view9,view8,view7,view6,view5,view4,view3,view2,view1]
        
        imageView1.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView1.image = image1
        view1.addSubview(imageView1)
        button1.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button1.addTarget(self, action: #selector(buttonTap1), for: .touchUpInside)
        button1.titleLabel?.numberOfLines = 0
        button1.setTitleColor(.black, for: .normal)
        button1.setTitle("2020.6.17\nギョーザ１皿無料ルーレットクーポン", for: .normal)
        view1.addSubview(button1)
        
        imageView2.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView2.image = image2
        view2.addSubview(imageView2)
        button2.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button2.titleLabel?.numberOfLines = 0
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(buttonTap2), for: .touchUpInside)
        button2.setTitle("2020.6.22\n本日は味千感謝デー", for: .normal)
        view2.addSubview(button2)
        
        imageView3.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView3.image = image3
        view3.addSubview(imageView3)
        button3.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button3.addTarget(self, action: #selector(buttonTap3), for: .touchUpInside)
        button3.titleLabel?.numberOfLines = 0
        button3.setTitleColor(.black, for: .normal)
        button3.setTitle("2020.7.28\n本日より「500円ランチキャンペーン」開始！", for: .normal)
        view3.addSubview(button3)
        
        imageView4.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView4.image = image4
        view4.addSubview(imageView1)
        button4.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button4.addTarget(self, action: #selector(buttonTap4), for: .touchUpInside)
        button4.titleLabel?.numberOfLines = 0
        button4.setTitleColor(.black, for: .normal)
        button4.setTitle("2020.8.22\n本日は味千感謝デー", for: .normal)
        view4.addSubview(button4)
        
        imageView5.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView5.image = image5
        view5.addSubview(imageView5)
        button5.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button5.addTarget(self, action: #selector(buttonTap5), for: .touchUpInside)
        button5.titleLabel?.numberOfLines = 0
        button5.setTitleColor(.black, for: .normal)
        button5.setTitle("2020.9.1\n本日9月1日より夏の商品を特別感謝価格で販売いたします。", for: .normal)
        view5.addSubview(button5)
        
        imageView6.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView6.image = image6
        view6.addSubview(imageView6)
        button6.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button6.addTarget(self, action: #selector(buttonTap6), for: .touchUpInside)
        button6.titleLabel?.numberOfLines = 0
        button6.setTitleColor(.black, for: .normal)
        button6.setTitle("2020.9.7\n味千ラーメン店舗営業のお知らせ", for: .normal)
        view6.addSubview(button6)
        
        imageView7.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView7.image = image7
        view7.addSubview(imageView7)
        button7.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button7.titleLabel?.numberOfLines = 0
        button7.setTitleColor(.black, for: .normal)
        button7.addTarget(self, action: #selector(buttonTap7), for: .touchUpInside)
        button7.setTitle("2020.9.22\n本日は毎月22日の味千感謝デー", for: .normal)
        view7.addSubview(button7)
        
        imageView8.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView8.image = image8
        view8.addSubview(imageView8)
        button8.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button8.addTarget(self, action: #selector(buttonTap8), for: .touchUpInside)
        button8.titleLabel?.numberOfLines = 0
        button8.setTitleColor(.black, for: .normal)
        button8.setTitle("2020.10.1\n得とくキャンペーン１０月１日スタート！", for: .normal)
        view8.addSubview(button8)
        
        imageView9.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView9.image = image9
        view9.addSubview(imageView9)
        button9.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button9.addTarget(self, action: #selector(buttonTap9), for: .touchUpInside)
        button9.titleLabel?.numberOfLines = 0
        button9.setTitleColor(.black, for: .normal)
        button9.setTitle("2020.10.2\n味千ラーメン通販サイトより新商品焼小籠包のお知らせです。", for: .normal)
        view9.addSubview(button9)
        
        imageView10.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView10.image = image10
        view10.addSubview(imageView10)
        button10.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button10.addTarget(self, action: #selector(buttonTap10), for: .touchUpInside)
        button10.titleLabel?.numberOfLines = 0
        button10.setTitleColor(.black, for: .normal)
        button10.setTitle("2020.10.22\n10月22日本日は味千感謝デー", for: .normal)
        view10.addSubview(button10)
        
        imageView11.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView11.image = image11
        view11.addSubview(imageView11)
        button11.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button11.addTarget(self, action: #selector(buttonTap11), for: .touchUpInside)
        button11.titleLabel?.numberOfLines = 0
        button11.setTitleColor(.black, for: .normal)
        button11.setTitle("2020.11.20\n富合店営業時間変更のお知らせ", for: .normal)
        view11.addSubview(button11)
        
        imageView12.frame = CGRect(x: 10, y: 5, width: 80, height: 80)
        imageView12.image = image12
        view12.addSubview(imageView12)
        button12.frame = CGRect(x: 100, y: 0, width: width - 110, height: 90)
        button12.addTarget(self, action: #selector(buttonTap12), for: .touchUpInside)
        button12.titleLabel?.numberOfLines = 0
        button12.setTitleColor(.black, for: .normal)
        button12.setTitle("2020.11.22\n本日は味千感謝デー！", for: .normal)
        view12.addSubview(button12)
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height - 80)
        scrollView.contentSize = CGSize(width: 0, height: Int(scrollView.frame.height) + 80 * viewArray.count)
        self.view.addSubview(scrollView)
        
        for i in 0 ..< viewArray.count{
            
            viewArray[i].frame = CGRect(x: 5, y: CGFloat(120 * i), width: width - 10, height: 100)
            viewArray[i].backgroundColor = .white
            viewArray[i].layer.cornerRadius = 5
            viewArray[i].layer.shadowOffset = CGSize(width: 0.0, height: 0.8)
            viewArray[i].layer.shadowColor = UIColor.black.cgColor
            viewArray[i].layer.shadowOpacity = 0.5
            viewArray[i].layer.shadowRadius = 10
            scrollView.addSubview(viewArray[i])
        }
        
        
        
        
    }

    @objc func buttonTap1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infologo")
        vc.sendLabel1 = "2020.6.17"
        vc.sendLabel2 = "ギョーザ１皿無料クーポン"
        vc.sendText = "麺大盛無料に続き、ギョーザ１皿ルーレット無料クーポンを発行いたしました。\n１日一回挑戦することができます！！\nあたりが出たらギョーザ１皿（５個）無料クーポンがもらえます。\nぜひ挑戦してみてください！！"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func buttonTap2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.6.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func buttonTap3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info500")
        vc.sendLabel1 = "2020.7.28"
        vc.sendLabel2 = "本日より「５００円ランチキャンペーン」開始！"
        vc.sendText = "本日2020年7月27日～8月31日迄の期間限定でランチタイムに限り、各店舗オリジナルの内容で500円のランチをご用意しております。また同時に、各店舗一部のセットメニューが通常価格より100円プライスオフ！大変お得なキャンペーンとなっております。お得なこの期間に是非味千拉麺へお越しください！\n\n※500円ランチは店舗によって内容が異なる場合がございます。\n※100円プライスオフのセットメニューの内容は各店舗異なる場合がございます。\n※店舗によりランチタイムの時間が異なる場合がございます\nまた下記の店舗では諸事情によりランチキャンペーンを行っておりません。誠に申し訳ございませんが、ご了承のほどよろしくお願いいたします。\n熊本県【　御領店・水前寺観光通店・高島公園前店・白川水源店・佐野店　】\n沖縄県【　中城店　】\n大分県【　くす店　】\n広島県【　ムツゴロウ広本店　】\n大阪府【　新大阪店・大阪伊賀店　】\n静岡県【　掛川インター店・袋井店　】\n茨城県【　永国店　】\n青森県【　青森観光通店　】\n北海道【　帯広店・札内店　】\n\n\nキャンペーン期間\n2020年7月27日(月)～2020年8月31日(月)\nキャンペーン概要\n・期間中、ランチタイムのみ各店舗500円ランチメニューの提供\n・期間中、ランチタイムのみ一部セットメニューの100円割引"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.8.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info3000")
        vc.sendLabel1 = "2020.9.1"
        vc.sendLabel2 = "本日9月1日より夏の商品を特別感謝価格で販売いたします。"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infohonten")
        vc.sendLabel1 = "2020.9.7"
        vc.sendLabel2 = "味千ラーメン店舗営業のお知らせ"
        vc.sendText = "味千ラーメンよりお知らせです。\n９月６日、７日九州地方を襲った台風の影響で一部店舗は休業しております。\n大変ご迷惑をおかけ致しますが、ご了承の程お願い致します。\n\n下記直営店は、本日７日１２時より営業しております。\n\n味千本店\n東バイパス店\n光の森店\n富合店\n荒尾グリーンランド前店\nイオンタウン田崎店\n水俣店\n有明店"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.9.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infotokutoku")
        vc.sendLabel1 = "2020.10.1"
        vc.sendLabel2 = "得とくキャンペーン１０月１日スタート！！"
        vc.sendText = "10月1日より味千ラーメン店舗でお得な得得クーポンがもらえます。\n\nお食事をしていただくとクーポン券をもらえ、次回ご来店時に一枚で拉麺類の麺大盛無料、三枚でギョーザ一皿、５枚で味千ラーメン１杯無料\n\n集めてお得！使ってお得！\n皆様のご来店お待ちしています！！！"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func buttonTap9(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infosho")
        vc.sendLabel1 = "2020.10.2"
        vc.sendLabel2 = "味千ラーメン通販サイトより新商品焼小籠包のお知らせです。！"
        vc.sendText = "本日2020年7月27日～8月31日迄の期間限定でランチタイムに限り、各店舗オリジナルの内容で500円のランチをご用意しております。また同時に、各店舗一部のセットメニューが通常価格より100円プライスオフ！大変お得なキャンペーンとなっております。お得なこの期間に是非味千拉麺へお越しください！\n\n※500円ランチは店舗によって内容が異なる場合がございます。\n※100円プライスオフのセットメニューの内容は各店舗異なる場合がございます。\n※店舗によりランチタイムの時間が異なる場合がございます\nまた下記の店舗では諸事情によりランチキャンペーンを行っておりません。誠に申し訳ございませんが、ご了承のほどよろしくお願いいたします。\n熊本県【　御領店・水前寺観光通店・高島公園前店・白川水源店・佐野店　】\n沖縄県【　中城店　】\n大分県【　くす店　】\n広島県【　ムツゴロウ広本店　】\n大阪府【　新大阪店・大阪伊賀店　】\n静岡県【　掛川インター店・袋井店　】\n茨城県【　永国店　】\n青森県【　青森観光通店　】\n北海道【　帯広店・札内店　】\n\n\nキャンペーン期間\n2020年7月27日(月)～2020年8月31日(月)\nキャンペーン概要\n・期間中、ランチタイムのみ各店舗500円ランチメニューの提供\n・期間中、ランチタイムのみ一部セットメニューの100円割引"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap10(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.10.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
        
    }
    @objc func buttonTap11(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "infologo")
        vc.sendLabel1 = "2020.11.20"
        vc.sendLabel2 = "富合店営業時間変更のお知らせ"
        vc.sendText = "現在富合店では6:30 〜 22:00（朝ラーメン時間6:30 〜 10:00迄）の営業時間で行っておりましたが、１２月1日（火）から朝９時の営業へと変更となります。\n\nまた、6:30〜10:00迄は朝ラーメン限定の販売でしたが、１２月１日から通常メニューの提供も開始いたします。\n\nよろしくお願い致します。"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func buttonTap12(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "newInfo2") as! newInfo2ViewController
        vc.sendImage = UIImage(named: "info22")
        vc.sendLabel1 = "2020.11.22"
        vc.sendLabel2 = "本日は味千感謝デー"
        vc.sendText = "日頃の味千拉麺へのご愛顧賜りまして、誠にありがとうございます。\n本日はお客様への感謝を表す、毎月２２日の味千感謝デーとなります。\n\n毎月たくさんの御来店ありがとうございます。\n\n先月に引き続き、コロナウイルスの感染防止といたしまして、「席の間隔を空ける・換気の実施等、３密を避ける為の対応をさせて頂いております。\nお客様にはお手数をおかけ致しますが、何卒ご理解ご協力の程よろしくお願い致します。\n\n\nまた、感謝デーに来られない方のために弊社自社サイトにて、「感謝デーセット」を販売しております。\n\n特選味千ラーメン２食入り×６袋フライドガーリック1本が入った、通常約3,000円のセットを2,200円で販売の、大変お買い得なセットとなっておりますので、是非お買い求め下さい。\n\n"
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
