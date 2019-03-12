//
//  MyFirstSwiftTableViewCell.swift
//  RecordVoice
//
//  Created by huatu on 2019/3/11.
//  Copyright © 2019 huatu. All rights reserved.
//

import UIKit

class MyFirstSwiftTableViewCell: UITableViewCell {

    @IBOutlet weak var headImg: UIImageView!
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var desLabel: UILabel!
    
    // 懶加載一個視圖
    lazy var rightPic:UIImageView = {
        
        let img = UIImageView();
        
        img.backgroundColor = UIColor.cyan
        
        return img
        
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rightPic.frame = CGRect(x: self.bounds.width - 50, y: 0, width: 50, height: 50)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(rightPic)
        
    }

    func setModel(model:Person) {
        
        self.textLabel?.text = model.name
        
    }
    
    static func cellWithTableView(_ tableView: UITableView) -> MyFirstSwiftTableViewCell {
        
        let cellId = "swiftcellId"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        if cell == nil {
            
            // nibName指的是我们创建的Cell文件名
          //  let nib = UINib(nibName: "MyFirstSwiftTableViewCell", bundle: nil)

            
            cell = Bundle.main.loadNibNamed("MyFirstSwiftTableViewCell", owner: nil, options: nil)?.last as! MyFirstSwiftTableViewCell
        }
        
        return cell! as! MyFirstSwiftTableViewCell
    }
    
    
    
//    func cellWithTableView(tableView :UITableView) -> MyFirstSwiftTableViewCell {
//
//        let cellId = "cellId"
//
//        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
//
//        if cell == nil {
//            cell = Bundle.main.loadNibNamed(NSStringFromClass(MyFirstSwiftTableViewCell.classForCoder()), owner: nil, options: nil)?.last as! MyFirstSwiftTableViewCell
//        }
//
//        return cell! as! MyFirstSwiftTableViewCell
//    }
   
    
    
}
