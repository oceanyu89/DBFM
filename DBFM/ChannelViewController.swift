//
//  ChannelViewController.swift
//  DBFM
//
//  Created by ocean.yu on 16/4/17.
//  Copyright © 2016年 ocean.yu. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var channeltableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        channeltableview.dataSource = self
        channeltableview.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("channel", forIndexPath: indexPath)as! UITableViewCell
        cell.textLabel?.text = "频道\(indexPath.row)"
        cell.imageView?.image = UIImage(named: "temp1")
        
        return cell
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
