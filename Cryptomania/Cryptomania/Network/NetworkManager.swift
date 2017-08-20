//
//  NetworkManager.swift
//  Cryptomania
//
//  Created by Aleix on 20/8/17.
//  Copyright © 2017 Aleix Cos. All rights reserved.
//

import Foundation
import Alamofire

typealias CompletionHandler = (_ json:[String:Any]?, _ error: Error?) -> Void

class NetworkManager{
    static let shared = NetworkManager()
    
    func getCoinList(_ handler : @escaping CompletionHandler){
        _ = [self.request("https://www.cryptocompare.com/api/data/coinlist/"){ json, error in
            handler(json, error)
        }]
    }
    
    fileprivate func request(_ req: String, handler: @escaping CompletionHandler){
        Alamofire.request(req).validate().responseJSON { response in
            switch response.result{
                case .success:
                    if let JSON = response.result.value as? [String: Any]{
                        print(JSON)
                        handler(JSON, nil)
                    }
                
                case .failure(let error):
                    handler(nil, error)
            }
    
        }
    }
}
