//
//  LoginViewController.swift
//  RecordVoice
//
//  Created by huatu on 2019/3/11.
//  Copyright © 2019 huatu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, MyFirstSwiftTableViewCellDelegate{
    
    // 按钮点击事件的代理方法
    func btnBeClicke(cell: MyFirstSwiftTableViewCell, indexPath: NSIndexPath) {
    
        print(indexPath)
        
    }
    
    
    // 定义一个属性，后面要添加一个问号
    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = UIColor.cyan
        
        let person = Person();
        
        person.name = "风无极"
        
        
        tableView = UITableView(frame: UIScreen.main.bounds)
        self.view.addSubview(tableView!)
        tableView?.delegate = self
        tableView?.dataSource = self
        
        // 注册监听通知
        let notificationName = Notification.Name(rawValue: "OneSwiftNoti")
        NotificationCenter.default.addObserver(self,selector:#selector(downloadImage(notification:)), name: notificationName, object: nil)
    }
    
    // MARK:-通知的回调
    @objc func downloadImage(notification: Notification) {
        
        print("receive noti!!!")
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews();
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
}


// MARK:- tableView代理
extension LoginViewController : UITableViewDelegate, UITableViewDataSource {
    
    // tableView代理方法
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MyFirstSwiftTableViewCell.cellWithTableView(tableView)
        cell.indexPath = indexPath as NSIndexPath
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
