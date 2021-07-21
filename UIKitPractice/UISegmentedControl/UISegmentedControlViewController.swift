//
//  UISegmentedControlViewController.swift
//  UIKitPractice
//
//  Created by SurbineHuang on 20/7/21.
//

import UIKit

class UISegmentedControlViewController: UIViewController {
    
    let items = ["貓", "狗", "海豚"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 100, y: 200, width: 200, height: 30)
        let mySegmentedControl = UISegmentedControl(items: items)
        mySegmentedControl.frame = rect
        
        // 偵測的行為是 valueChanged -> 當選到不同的 segment item 時, 會呼叫 selector
        mySegmentedControl.addTarget(self, action: #selector(didValueChanged(_:)), for: .valueChanged)
        
        // 設定目前選擇區段是哪個
        mySegmentedControl.selectedSegmentIndex = 0
        // 設定選種顏色
        mySegmentedControl.selectedSegmentTintColor = .brown
        // 設定背景顏色
        mySegmentedControl.backgroundColor = .clear
        
        view.addSubview(mySegmentedControl)
    }
    
    @objc func didValueChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        print("Selected index: \(index)")
        // 取得相對應的標題文字
        if let title = sender.titleForSegment(at: index) {
            print("使用者 使用了 \(title)")
        }
    }
}
