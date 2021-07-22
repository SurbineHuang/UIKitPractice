//
//  UIImageViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 22/7/21.
//

import UIKit

class UIImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 150, y: 200, width: 100, height: 100)
        let myImageView = UIImageView(frame: rect)
        
        let dogImage = UIImage(named: "dog")
        myImageView.image = dogImage
        myImageView.contentMode = .scaleAspectFit
        
        view.addSubview(myImageView)
    }
    

    
    

}
