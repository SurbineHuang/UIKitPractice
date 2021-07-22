//
//  UIStepperViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 22/7/21.
//

import UIKit

class UIStepperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 150, y: 250, width: 100, height: 30)
        let myStepper = UIStepper(frame: rect)
        
        myStepper.addTarget(self, action: #selector(didValueChange(_:)), for: .valueChanged)
        
        view.addSubview(myStepper)
    }
    @objc func didValueChange(_ sender: UIStepper) {
        
        let value = sender.value
        print("目前數值為\(value)")
    }

     

}
