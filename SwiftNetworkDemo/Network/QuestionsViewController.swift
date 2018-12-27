//
//  QuestionsViewController.swift
//  SwiftNetworkDemo
//
//  Created by Yi Zhang on 27/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController
{
    let questionRequest = QuestionRequest(model: "ro")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionRequest.loadData()
        questionRequest.delegate = self
    }
}

// MARK: 网络回调协议
extension QuestionsViewController: NetworkCallBackDelegate
{
    func managerCallBackSuccess(data: Any) {
        print(data)
    }
    
    func managerCallBackFailure(error: Error) {
        print(error)
    }
}

