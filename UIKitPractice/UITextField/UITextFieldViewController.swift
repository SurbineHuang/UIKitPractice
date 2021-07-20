//
//  UITextFieldViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 20/7/21.
//

import UIKit

class UITextFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       let rect = CGRect(x: 100, y: 200, width: 200, height: 50)
        let myTextField = UITextField(frame: rect)
        myTextField.borderStyle = .roundedRect
        
//        let text = myTextField.text
//        myTextField.text = "Hello World"
        
        myTextField.placeholder = "測試測試"
        
        myTextField.isSecureTextEntry = true
        
        myTextField.keyboardType = .numberPad
        
        view.addSubview(myTextField)
        view.endEditing(true)
    }
    

}
