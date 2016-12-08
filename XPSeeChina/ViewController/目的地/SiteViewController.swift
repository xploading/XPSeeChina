//
//  SiteViewController.swift
//  XPSeeChina
//
//  Created by qianfeng on 2016/12/6.
//  Copyright © 2016年 耿晓鹏. All rights reserved.
//

import UIKit

class SiteViewController: BasicViewController {
    var page = 1
    var cityId = "1"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
        
    }
    
    func loadData(){
        let str = "https://api.108tian.com/mobile/v3/SceneDetail"
        
        //55ed14b10cf288ee424a4bd9
        let pare = ["id":"55ed14b10cf288ee424a4bd9"]
        
        BasicRequest.PostRequestWithPare(str: str, pare: pare) {
            (data) in
            
//            let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
//            print(json)
        
        
        }
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
