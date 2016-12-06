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
       // #define HomeUrl @"https://api.108tian.com/mobile/v3/RecommendDetailList?channel=&page=%d&step=2&cityId=%@"
        
        let pare = ["channel":"","page":"\(self.page)","step":"2","cityId":self.cityId]
        BasicRequest.PostRequestWithPare(str: Tools.HomeURL, pare: pare) {
            (data) in
            
            let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print(json)
            
            
            
        }
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
