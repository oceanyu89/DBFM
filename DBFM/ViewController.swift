//
//  ViewController.swift
//  DBFM
//
//  Created by ocean.yu on 16/4/17.
//  Copyright © 2016年 ocean.yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var backgroudview: UIImageView!
    
    @IBOutlet weak var tableviewmusic: UITableView!
    
    @IBOutlet weak var headerimage: BroudImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.headerimage.cirlrouds()
        
        
        //处理模糊效果
        let blureffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blureview = UIVisualEffectView(effect: blureffect)
        
        blureview.frame.size = CGSize(width: self.view.frame.width, height: view.frame.height)
        
        //加入视图
        
        backgroudview.addSubview(blureview)
        
        tableviewmusic.dataSource = self
        tableviewmusic.delegate = self
        
        
    }
    
    //设置单元格行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //设置单元格数据
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("douban", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = "标题：\(indexPath.row)"
        cell.detailTextLabel?.text = "子标题\(indexPath.row)"
        cell.imageView?.image = UIImage(named: "temp1")
        
        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

