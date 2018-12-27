//
//  NetworkManager.swift
//  SwiftNetworkDemo
//
//  Created by Yi Zhang on 27/12/18.
//  Copyright © 2018 Yi Zhang. All rights reserved.
//

import UIKit
import Alamofire

class NetworkManager: NSObject
{
    weak var delegate: NetworkCallBackDelegate?
    
    public func loadData() {
        let request = Alamofire.request(requestURL(), method: requestHttpMethod(), parameters: requestParameters(), encoding: URLEncoding.default, headers: requestHeaders())
        request.responseJSON(queue: DispatchQueue.global(qos: .utility), options: JSONSerialization.ReadingOptions.allowFragments) { (response) in
            switch response.result {
            case .success(let data):
                self.delegate?.managerCallBackSuccess(data: data)
            case .failure(let error):
                self.delegate?.managerCallBackFailure(error: error)
            }
        }
    }
    
    public func requestHttpMethod() -> HTTPMethod {
        return .get
    }
    
    public func requestURL() -> String {
        return ""
    }
    
    public func requestParameters() -> [String: Any]? {
        return nil
    }
    
    public func requestHeaders() -> HTTPHeaders {
        return ["Accept": "application/json"]
    }
}

protocol NetworkCallBackDelegate: NSObjectProtocol
{
    func managerCallBackSuccess(data: Any)
    func managerCallBackFailure(error: Error)
}

