//
//  MyFirstSwiftTableViewCell.swift
//  RecordVoice
//
//  Created by huatu on 2019/3/11.
//  Copyright © 2019 huatu. All rights reserved.
//

import UIKit

// MARK:- 定义一个代理方法
protocol MyFirstSwiftTableViewCellDelegate : class{
    func btnBeClicke(cell: MyFirstSwiftTableViewCell, indexPath: NSIndexPath);
}


class MyFirstSwiftTableViewCell: UITableViewCell {

    @IBOutlet weak var headImg: UIImageView!
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    
    var indexPath:NSIndexPath?
    
    weak var delegate: MyFirstSwiftTableViewCellDelegate?
    
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
    
    // MARK:- 初始化视图
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(rightPic)
        
        // 为按钮添加点击事件
        myBtn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        
    }

    @objc func btnClicked(btn : UIButton) {
        
       // print("按钮点击了")
        
        if let d = delegate {
            d.btnBeClicke(cell: self, indexPath: indexPath!)
        }
        
        // 发送通知
        NotificationCenter.default.post(name: NSNotification.Name("OneSwiftNoti"), object: nil)
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
}
