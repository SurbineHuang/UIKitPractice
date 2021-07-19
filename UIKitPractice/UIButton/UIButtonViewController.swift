//
//  UIButtonViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 19/7/21.
//

import UIKit

// 寫法 01 - 在 viewDidLoad 創造一個 button 並將它加到 view 上
class UIButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 50, y: 250, width: 100, height: 100)
        let myButton = UIButton(frame: rect)
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("Hello", for: .normal)
        myButton.setTitle("Hello!!", for: .highlighted)
        myButton.setTitleColor(UIColor.yellow, for: .normal)
        myButton.setTitleColor(UIColor.green, for: .highlighted)
        // target 是 self，代表 VC 自己，action 代表要執行 VC 裡的動作
        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        self.view.addSubview(myButton)
    }

    @objc func buttonTapped() {
        print("點了按鈕")
    }
}



//// 寫法 02 - 利用 function 去創建一個按鈕
//class UIButtonViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let button = self.createButton()
//        self.view.addSubview(button)
//    }
//
//    func createButton() -> UIButton {
//        let rect = CGRect(x: 50, y: 250, width: 100, height: 100)
//        let myButton = UIButton(frame: rect)
//        myButton.backgroundColor = UIColor.red
//        myButton.setTitle("Hello", for: .normal)
//        myButton.setTitle("Hello!!", for: .highlighted)
//        myButton.setTitleColor(UIColor.yellow, for: .normal)
//        myButton.setTitleColor(UIColor.green, for: .highlighted)
//        // target 是 self，代表 VC 自己，action 代表要執行 VC 裡的動作
//        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//
//        return myButton
//    }
//
//    @objc func buttonTapped() {
//        print("點了按鈕")
//    }
//}



//// 寫法 03 - lazy property
//class UIButtonViewController: UIViewController {
//
//    // 需要用到時, 才會去初始化這個 lazy property
//    lazy var myButton: UIButton = {
//        let rect = CGRect(x: 50, y: 250, width: 100, height: 100)
//        let btn = UIButton(frame: rect)
//        btn.backgroundColor = UIColor.red
//        btn.setTitle("Hello", for: .normal)
//        btn.setTitle("Hello!!", for: .highlighted)
//        btn.setTitleColor(UIColor.yellow, for: .normal)
//        btn.setTitleColor(UIColor.green, for: .highlighted)
//        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//        return btn
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.view.addSubview(self.myButton)
//    }
//
//    @objc func buttonTapped() {
//        print("點了按鈕")
//    }
//}
