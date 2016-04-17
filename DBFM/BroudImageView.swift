//
//  BroudImageView.swift
//  DBFM
//
//  Created by ocean.yu on 16/4/17.
//  Copyright © 2016年 ocean.yu. All rights reserved.
//

import UIKit

class BroudImageView: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        //设置圆角
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
        
        
        //描边
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.7).CGColor
        
        
        
    }
    
    //旋转
    func cirlrouds(){
        //动画实例关键字
        let cirlrouds = CABasicAnimation(keyPath: "transform.rotation")
        //初始值
        
        cirlrouds.fromValue = 0.0
        cirlrouds.toValue = M_PI * 2.0
        
        //动画执行时间
        cirlrouds.duration = 20

        
        //动画重复次数
        cirlrouds.repeatCount = 10000
        
        self.layer.addAnimation(cirlrouds, forKey: nil)
        
    }
    

}
