//
//  HomeController.swift
//  XPSeeChina
//
//  Created by qianfeng on 2016/12/6.
//  Copyright © 2016年 耿晓鹏. All rights reserved.
//

import UIKit

class HomeController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.creatViewController()
    }
    
    
    func creatViewController(){
        let proStr = "XPSeeChina."
        let nameArr = ["SiteViewController"]
        var vcs = [UINavigationController]()
        
        for i in 0..<nameArr.count{
            let className = proStr + nameArr[i]
            let classType = NSClassFromString(className) as! UIViewController.Type
            let vc = classType.init()
            vc.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
            let nav = UINavigationController.init(rootViewController: vc)
            vcs.append(nav)
            
        }
        self.viewControllers = vcs
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
