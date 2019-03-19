//
//  TestModel.swift
//  RecordVoice
//
//  Created by huatu on 2019/3/12.
//  Copyright © 2019 huatu. All rights reserved.
//

import UIKit

class TestModel: NSObject {

    private var dataSource = [String]()
    
    var name: String? // 姓名
    
    var email: String? // 邮箱
    
    class func shareInstance() -> TestModel {
        let t = TestModel()
        return t
    }
}
