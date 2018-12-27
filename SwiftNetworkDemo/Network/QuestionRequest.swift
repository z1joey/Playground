//
//  APEUniNetwork.swift
//  SwiftNetworkDemo
//
//  Created by Yi Zhang on 27/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

import UIKit

class QuestionRequest: NetworkManager
{
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    override func requestURL() -> String {
        return "https://devil.apeuni.com/api/v1/questions"
    }
    
    override func requestParameters() -> [String : Any]? {
        return ["model": model]
    }
}
