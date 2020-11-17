//
//  UserApiManager.swift
//  NetworkLayerURLSession
//
//  Created by A on 11/17/20.
//  
//

import UIKit

typealias userCompletionBlock = (_ isSuccess:Bool,_ value:User?,_ error:String?) -> Void


class UserApiManager {
    
    var apiManager:ApiManager = ApiManager.sharedInstance
    
    //  User Service call
    func callingUserService(urlString:String,parameter:String?,completionHandler:@escaping userCompletionBlock)  {
        
        apiManager.apiGetRequerst(urlString:urlString, parameter: nil) { (response) in
            
            switch response {
            case.responseData(let userJson):
                 let user = User(data: userJson)
                completionHandler(true, user, nil)
            case .error(let error):
                completionHandler(false, nil, error.localizedDescription)
         
        }
    }

}

}
