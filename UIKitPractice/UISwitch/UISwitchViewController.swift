//
//  UISwitchViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 20/7/21.
//

import UIKit

class UISwitchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 180, y: 250, width: 50, height: 50)
        let mySwitch = UISwitch(frame: rect)
        view.addSubview(mySwitch)
        
        // 改圓球顏色
        mySwitch.thumbTintColor = UIColor.blue
        // 改開關顏色
        mySwitch.onTintColor = UIColor.red
        let mySwitchStatus = mySwitch.isOn
        mySwitch.isOn = true
        
        mySwitch.setOn(true, animated: true)
        
    }
    @IBAction func switchDidChange(_sender: UISwitch) {

        print(_sender.isOn)
    }
    
}
