//
//  ViewController.swift
//  SLButtonDemoSwift
//
//  Created by SL🐰鱼子酱 on 15/6/30.
//  Copyright © 2015年 SL🐰鱼子酱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = SLButton(type: SLButtonType.TitleIsUnderImage)
        btn.frame = CGRectMake(100, 100, 200, 200)
        btn.backgroundColor = UIColor.redColor()
        btn.setTitle("dasdaad", forState: UIControlState.Normal)
        btn.setImage(UIImage(named: "Icon-60@2x"), forState: UIControlState.Normal)
        view.addSubview(btn)
  
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

