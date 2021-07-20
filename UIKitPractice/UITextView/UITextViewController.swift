//
//  UITextViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 20/7/21.
//

import UIKit

class UITextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 100, y: 200, width: 200, height: 200)
        
        let myTextView = UITextView(frame: rect)
        myTextView.backgroundColor = UIColor.lightGray
        
        myTextView.isSelectable = false
        view.addSubview(myTextView)
       
    }

}
