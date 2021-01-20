

//page2ViewControllerと作りが同じ

import UIKit

class pageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.isTranslucent = false
        
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.navigationItem.title = "メニュー"
        self.dataSource = self
    }
    //基本の関数
    func getFirst() -> menu1ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "menu1") as! menu1ViewController
    }
    func getSecond() -> menu2ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "menu2") as! menu2ViewController
    }
    
    func getThird() -> menu3ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "menu3") as! menu3ViewController
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
extension pageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController is (menu3ViewController) {
            // 3 -> 2
            return getSecond()
        } else if viewController is (menu2ViewController) {
            // 2 -> 1
            return getFirst()
        } else {
            // 1 -> end of the road
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if viewController is (menu1ViewController) {
            // 1から2
            return getSecond()
        } else if viewController is (menu2ViewController) {
            // 2から3
            return getThird()
        } else {
            // 3から1
            return nil
        }
    }
}
