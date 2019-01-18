//
//  ViewController.swift
//  IBDemo
//
//  Created by Yi Zhang on 18/1/19.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // UINib对象只加载一次xib文件，达到缓存的目的
    // bundle参数为nil时默认为main bundle
    let testViewNib = UINib.init(nibName: "TestView", bundle: Bundle.main)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let normalToolBar = ToolBar.toolBar(type: .normal)
        normalToolBar?.frame.origin = CGPoint(x: 0, y: 100)
        view.addSubview(normalToolBar!)

        let editToolBar = ToolBar.toolBar(type: .edit)
        editToolBar?.frame.origin = CGPoint(x: 0, y: 200)
        view.addSubview(editToolBar!)
        
        // 通过UINib对象加载
        let testView = testViewNib.instantiate(withOwner: nil, options: nil)[0] as! UIView
        testView.frame.origin = CGPoint(x: 0, y: 300)
        view.addSubview(testView)
    }
}

