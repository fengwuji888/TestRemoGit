//
//  MyTabBarController.swift
//  BlindGuide
//
//  Created by huatu on 2019/3/8.
//  Copyright © 2019 huatu. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.red
        
        // 添加子控制器
        
        let oneVc = OneViewController()
        let twoVc = TwoViewController()
        let threeVc = ThreeViewController()
        let fourVc = FourViewController()
        
        oneVc.tabBarItem.title = "主页"
        
        twoVc.tabBarItem.title = "消息"
        
        threeVc.tabBarItem.title = "发现"
        
        fourVc.tabBarItem.title = "我的"
        
      //  self.ad
        
        self.addChild(oneVc)
        self.addChild(twoVc)
        self.addChild(threeVc)
        self.addChild(fourVc)
    }

}
