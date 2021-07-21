//
//  UISliderViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 22/7/21.
//

import UIKit

class UISliderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 100, y: 250, width: 200, height: 50)
        let mySlider = UISlider(frame: rect)
        
        mySlider.minimumValue = 0
        mySlider.maximumValue = 2
        
        let value = mySlider.value
        mySlider.value = 2
        mySlider.setValue(2, animated: true)
        mySlider.minimumTrackTintColor = .red
        mySlider.maximumTrackTintColor = .green
        mySlider.thumbTintColor = .brown
        
        mySlider.addTarget(self, action: #selector(didValueChange(_:)), for: .valueChanged)
        view.addSubview(mySlider)
    }
    
    @objc func didValueChange(_ sender: UISlider) {
        let value = sender.value
        print("使用者目前使用的數值是\(value)")
        
    }

}
