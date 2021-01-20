
//構造はshopViewControllerと同じ

import UIKit
import MapKit

class tomiaiViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    let scrollView = UIScrollView()
    let image = UIImage(named: "s.tomiai")
    let images = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    
    let contentsView = UIView()
    let conLabel1 = UILabel()
    let conLabel2 = UILabel()
    let conLabel3 = UILabel()
    let conLabel4 = UILabel()
    let conLabel5 = UILabel()
    let conLabel6 = UILabel()
    let conLabel7 = UILabel()
    let conLabel8 = UILabel()
    let conLabel9 = UILabel()
    let conLabel10 = UILabel()
    let conLabel11 = UILabel()
    
    let conView1 = UIView()
    let conView2 = UIView()
    let conView3 = UIView()
    let conView4 = UIView()
    let conView5 = UIView()
    
    var map = MKMapView()
    
    let shopButton1 = UIButton()
    let shopButton2 = UIButton()
    let shopButton3 = UIButton()
    let shopButton4 = UIButton()
    let shopButton5 = UIButton()
    let shopButton6 = UIButton()
    let shopButton7 = UIButton()
    let shopButton8 = UIButton()
    
    let photo1 = UIImage(named: "honten")
    let photo2 = UIImage(named: "s.eastOfBypas")
    let photo3 = UIImage(named: "s.hikarinomori")
    let photo4 = UIImage(named: "s.tasaki")
    let photo5 = UIImage(named: "s.arao")
    let photo6 = UIImage(named: "s.kamoto")
    let photo7 = UIImage(named: "s.ariake")
    let photo8 = UIImage(named: "s.minamata")
    
    let images1 = UIImageView()
    let images2 = UIImageView()
    let images3 = UIImageView()
    let images4 = UIImageView()
    let images5 = UIImageView()
    let images6 = UIImageView()
    let images7 = UIImageView()
    let images8 = UIImageView()
    
    let shopView1 = UIView()
    let shopView2 = UIView()
    let shopView3 = UIView()
    let shopView4 = UIView()
    let shopView5 = UIView()
    let shopView6 = UIView()
    let shopView7 = UIView()
    let shopView8 = UIView()
    
    let globeButton = UIButton()
    let globeImage = UIImage(systemName: "globe")
    
    let mapButton = UIButton()
    let mapImage = UIImage(systemName: "map")
    let tellButton = UIButton()
    let tellImage = UIImage(systemName: "phone")
    
    let tellNumber = NSURL(string: "tel:096-288-2357")!
    
    let latitude = "32.713664"
    let longitude = "130.675932"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "店舗情報"
        
        
        scrollView.frame = CGRect(x: 0, y: 0, width: width, height: height )
        self.view.addSubview(scrollView)
        
        images.frame = CGRect(x: 0, y: 0, width: width, height: height / 2.5)
        images.image = image
        self.scrollView.addSubview(images)
        
        label1.frame = CGRect(x: 0, y: images.frame.height + 10, width: width, height: 10)
        label1.text = "トミアイテン"
        label1.textAlignment = NSTextAlignment.center
        label1.font = UIFont.systemFont(ofSize: 10)
        self.scrollView.addSubview(label1)
        
        label2.frame = CGRect(x: 0, y: label1.layer.position.y + 15, width: width, height: 15)
        label2.text = "富合店"
        label2.textAlignment = NSTextAlignment.center
        label2.font = UIFont.systemFont(ofSize: 15)
        self.scrollView.addSubview(label2)
        
        contentsView.frame = CGRect(x: 5, y: label2.layer.position.y + 10, width: width - 10, height: 170)
        contentsView.backgroundColor = .systemGray3
        contentsView.layer.cornerRadius = 5
        self.scrollView.addSubview(contentsView)
        
        
        conLabel1.frame = CGRect(x: 5, y: 3, width: width - 15, height: 13)
        conLabel1.text = "住所"
        conLabel1.textAlignment = NSTextAlignment.left
        conLabel1.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel1)
        
        conLabel2.frame = CGRect(x: 5, y: 18, width: width - 15, height: 13)
        conLabel2.text = "熊本市南区富合町志々水49-1"
        conLabel2.textAlignment = NSTextAlignment.left
        conLabel2.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel2)
        
        conView1.frame = CGRect(x: 5, y: 32, width: width - 15, height: 1)
        conView1.backgroundColor = .black
        self.contentsView.addSubview(conView1)
        
        conLabel3.frame = CGRect(x: 5, y: 35, width: width - 15, height: 13)
        conLabel3.text = "電話"
        conLabel3.textAlignment = NSTextAlignment.left
        conLabel3.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel3)
        
        conLabel4.frame = CGRect(x: 5, y: 50, width: width - 15, height: 13)
        conLabel4.text = "096-288-2357"
        conLabel4.font = UIFont.systemFont(ofSize: 11)
        conLabel4.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel4)
        
        conView2.frame = CGRect(x: 5, y: 64, width: width - 15, height: 1)
        conView2.backgroundColor = .black
        self.contentsView.addSubview(conView2)
        
        conLabel5.frame = CGRect(x: 5, y: 66, width: width - 15, height: 13)
        conLabel5.text = "禁煙/喫煙"
        conLabel5.textAlignment = NSTextAlignment.left
        conLabel5.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel5)
        
        conLabel6.frame = CGRect(x: 5, y: 78, width: width - 15, height: 13)
        conLabel6.text = "店内全て禁煙です"
        conLabel6.textAlignment = NSTextAlignment.left
        conLabel6.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel6)
        
        conView3.frame = CGRect(x: 5, y: 91, width: width - 15, height: 1)
        conView3.backgroundColor = .black
        self.contentsView.addSubview(conView3)
        
        conLabel7.frame = CGRect(x: 5, y: 92, width: width - 15, height: 13)
        conLabel7.text = "定休日"
        conLabel7.textAlignment = NSTextAlignment.left
        conLabel7.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel7)
        
        conLabel8.frame = CGRect(x: 5, y: 107, width: width - 15, height: 13)
        conLabel8.text = "※元日のみ休業"
        conLabel8.font = UIFont.systemFont(ofSize: 11)
        conLabel8.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel8)
        
        conLabel9.frame = CGRect(x: 5, y: 120, width: width - 15, height: 13)
        conLabel9.text = "その他、機材メンテナンスのため臨時休業の場合有"
        conLabel9.textAlignment = NSTextAlignment.left
        conLabel9.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel9)
        
        conView4.frame = CGRect(x: 5, y: 133, width: width - 15, height: 1)
        conView4.backgroundColor = .black
        self.contentsView.addSubview(conView4)
        
        
        conLabel10.frame = CGRect(x: 5, y: 135, width: width - 15, height: 13)
        conLabel10.text = "営業時間"
        conLabel10.textAlignment = NSTextAlignment.left
        conLabel10.font = UIFont.systemFont(ofSize: 11)
        self.contentsView.addSubview(conLabel10)
        
        conLabel11.frame = CGRect(x: 5, y: 148, width: width - 15, height: 13)
        conLabel11.text = "11:00 〜 22:00"
        conLabel11.font = UIFont.systemFont(ofSize: 11)
        conLabel11.textAlignment = NSTextAlignment.left
        self.contentsView.addSubview(conLabel11)
        
        conView5.frame = CGRect(x: 5, y: 161, width: width - 15, height: 1)
        conView5.backgroundColor = .black
        self.contentsView.addSubview(conView5)
        
        
        map.frame = CGRect(x: 5, y: contentsView.layer.position.y + contentsView.frame.height - 80, width: width - 10, height: height / 2.3)
        map.layer.cornerRadius = 5
        let center = CLLocationCoordinate2DMake(32.713664, 130.675932)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let pin = MKPointAnnotation()
        pin.coordinate = center
        let region = MKCoordinateRegion(center: center, span: span)
        map.setRegion(region, animated: true)
        map.addAnnotation(pin)
        self.scrollView.addSubview(map)
        
        
        images1.frame = CGRect(x: 5, y: map.layer.position.y + 150, width: 35, height: 20)
        images1.contentMode = UIView.ContentMode.scaleAspectFill
        images1.image = photo1
        self.scrollView.addSubview(images1)
        
        shopButton1.frame = CGRect(x: 40, y: images1.layer.position.y, width: width - 50, height: 20)
        shopButton1.setTitle("本店", for: .normal)
        shopButton1.setTitleColor(.black, for: .normal)
        shopButton1.addTarget(self, action: #selector(tap1), for: .touchUpInside)
        self.scrollView.addSubview(shopButton1)
        
        shopView1.frame = CGRect(x: 5, y: images1.layer.position.y + 20, width: width - 10, height: 1)
        shopView1.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView1)
        
        images2.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 40, width: 35, height: 20)
        images2.contentMode = UIView.ContentMode.scaleAspectFill
        images2.image = photo2
        self.scrollView.addSubview(images2)
        
        shopButton2.frame = CGRect(x: 40, y: images2.layer.position.y, width: width - 50, height: 20)
        shopButton2.setTitle("東バイパス店", for: .normal)
        shopButton2.setTitleColor(.black, for: .normal)
        shopButton2.addTarget(self, action: #selector(tap2), for: .touchUpInside)
        self.scrollView.addSubview(shopButton2)
        
        shopView2.frame = CGRect(x: 5, y: images2.layer.position.y + 20, width: width - 10, height: 1)
        shopView2.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView2)
        
        images3.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 80, width: 35, height: 20)
        images3.contentMode = UIView.ContentMode.scaleAspectFill
        images3.image = photo3
        self.scrollView.addSubview(images3)
        
        shopButton3.frame = CGRect(x: 40, y: images3.layer.position.y, width: width - 50, height: 20)
        shopButton3.setTitle("光の森店", for: .normal)
        shopButton3.setTitleColor(.black, for: .normal)
        shopButton3.addTarget(self, action: #selector(tap3), for: .touchUpInside)
        self.scrollView.addSubview(shopButton3)
        
        shopView3.frame = CGRect(x: 5, y: images3.layer.position.y + 20, width: width - 10, height: 1)
        shopView3.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView3)
        
        images4.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 120, width: 35, height: 20)
        images4.contentMode = UIView.ContentMode.scaleAspectFill
        images4.image = photo4
        self.scrollView.addSubview(images4)
        
        shopButton4.frame = CGRect(x: 40, y: images4.layer.position.y, width: width - 50, height: 20)
        shopButton4.setTitle("イオンタウン田崎店", for: .normal)
        shopButton4.setTitleColor(.black, for: .normal)
        shopButton4.addTarget(self, action: #selector(tap4), for: .touchUpInside)
        self.scrollView.addSubview(shopButton4)
        
        shopView4.frame = CGRect(x: 5, y: images4.layer.position.y + 20, width: width - 10, height: 1)
        shopView4.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView4)
        
        images5.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 160, width: 35, height: 20)
        images5.contentMode = UIView.ContentMode.scaleAspectFill
        images5.image = photo5
        self.scrollView.addSubview(images5)
        
        shopButton5.frame = CGRect(x: 40, y: images5.layer.position.y, width: width - 50, height: 20)
        shopButton5.setTitle("荒尾グリーンランド前店", for: .normal)
        shopButton5.setTitleColor(.black, for: .normal)
        shopButton5.addTarget(self, action: #selector(tap5), for: .touchUpInside)
        self.scrollView.addSubview(shopButton5)
        
        shopView5.frame = CGRect(x: 5, y: images5.layer.position.y + 20, width: width - 10, height: 1)
        shopView5.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView5)
        
        images6.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 200, width: 35, height: 20)
        images6.contentMode = UIView.ContentMode.scaleAspectFill
        images6.image = photo6
        self.scrollView.addSubview(images6)
        
        shopButton6.frame = CGRect(x: 40, y: images6.layer.position.y, width: width - 50, height: 20)
        shopButton6.setTitle("鹿本店", for: .normal)
        shopButton6.setTitleColor(.black, for: .normal)
        shopButton6.addTarget(self, action: #selector(tap6), for: .touchUpInside)
        self.scrollView.addSubview(shopButton6)
        
        shopView6.frame = CGRect(x: 5, y: images6.layer.position.y + 20, width: width - 10, height: 1)
        shopView6.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView6)
        
        images7.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 240, width: 35, height: 20)
        images7.contentMode = UIView.ContentMode.scaleAspectFill
        images7.image = photo7
        self.scrollView.addSubview(images7)
        
        shopButton7.frame = CGRect(x: 40, y: images7.layer.position.y, width: width - 50, height: 20)
        shopButton7.setTitle("有明店", for: .normal)
        shopButton7.setTitleColor(.black, for: .normal)
        shopButton7.addTarget(self, action: #selector(tap7), for: .touchUpInside)
        self.scrollView.addSubview(shopButton7)
        
        shopView7.frame = CGRect(x: 5, y: images7.layer.position.y + 20, width: width - 10, height: 1)
        shopView7.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView7)
        
        images8.frame = CGRect(x: 5, y: map.layer.position.y + 150 + 280, width: 35, height: 20)
        images8.contentMode = UIView.ContentMode.scaleAspectFill
        images8.image = photo8
        self.scrollView.addSubview(images8)
        
        shopButton8.frame = CGRect(x: 40, y: images8.layer.position.y, width: width - 50, height: 20)
        shopButton8.setTitle("水俣店", for: .normal)
        shopButton8.setTitleColor(.black, for: .normal)
        shopButton8.addTarget(self, action: #selector(tap8), for: .touchUpInside)
        self.scrollView.addSubview(shopButton8)
        
        shopView8.frame = CGRect(x: 5, y: images8.layer.position.y + 20, width: width - 10, height: 1)
        shopView8.backgroundColor = .systemGray3
        self.scrollView.addSubview(shopView8)
        
        globeImage!.withTintColor(.white)
        globeButton.frame = CGRect(x: width / 2 - 5, y: shopView8.layer.position.y + 10, width: 10, height: 10)
        globeButton.setImage(globeImage, for: .normal)
        globeButton.backgroundColor = .black
        globeButton.addTarget(self, action: #selector(globeTap), for: .touchUpInside)
        self.scrollView.addSubview(globeButton)
        
        mapButton.frame = CGRect(x: width - 50, y: height / 2 + 160, width: 40, height: 40)
        mapButton.setImage(mapImage, for: .normal)
        mapButton.backgroundColor = .red
        mapButton.tintColor = .white
        mapButton.layer.cornerRadius = mapButton.frame.width / 2
        mapButton.addTarget(self, action: #selector(mapTap), for: .touchUpInside)
        self.view.addSubview(mapButton)
        
        tellButton.frame = CGRect(x: width - 50, y: height / 2 + 210, width: 40, height: 40)
        tellButton.setImage(tellImage, for: .normal)
        tellButton.backgroundColor = .red
        tellButton.tintColor = .white
        tellButton.layer.cornerRadius = tellButton.frame.width / 2
        tellButton.addTarget(self, action: #selector(tellTap), for: .touchUpInside)
        self.view.addSubview(tellButton)
        
        scrollView.contentSize = CGSize(width: 0, height: globeButton.frame.height + globeButton.layer.position.y + 50)
    }
    @objc func tap1(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "shop") as! shopViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap2(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "higasibypas") as! higasibypasViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap3(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "hikarinomori") as! hikarinomoriViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap4(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tasaki") as! tasakiViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap5(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "arao") as! araoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap6(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "kamoto") as! kamotoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap7(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ariake") as! ariakeViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    @objc func tap8(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "minamata") as! minamataViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @objc func globeTap(){
        
    }
    @objc func mapTap(){
        let urlString: String!
        
        if UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!) {
            urlString = "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=walking&zoom=14"
            }
        else {
            urlString = "http://maps.apple.com/?daddr=\(latitude),\(longitude)&dirflg=w"
            }
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
            }
        
    }
    @objc func tellTap(){
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(tellNumber as URL)
        } else {
            UIApplication.shared.openURL(tellNumber as URL)
        }
        
    }
    
    
    
}
