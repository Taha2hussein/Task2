//
//  testRouter.swift
//  Test
//
//  Created by A on 11/17/20.
//  
//

import Foundation
import UIKit

class testRouter: PresenterToRoutertestProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "testViewController")as! testViewController
        
        let presenter: ViewToPresentertestProtocol & InteractorToPresentertestProtocol = testPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = testRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = testInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
