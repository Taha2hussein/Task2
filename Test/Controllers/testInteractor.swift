//
//  testInteractor.swift
//  Test
//
//  Created by A on 11/17/20.
//  
//

import Foundation

class testInteractor: PresenterToInteractortestProtocol {
    func getDataFromServer(_ end:String) {
        // Calling rest webservice here
        userService.callingUserService(urlString:end, parameter: nil)
        {[weak self] (isSuccess, user, errorString) in
            if isSuccess {
                /// You get the user message here
                self?.presenter?.getDataResponseStatus(true)
                print(user?.address)
            }
            else
            {
                self?.presenter?.getDataResponseStatus(false)
                // Log error here or you can show alert
            }
        }
    }
    
    let userService = UserApiManager()
    // MARK: Properties
    var presenter: InteractorToPresentertestProtocol?
}
