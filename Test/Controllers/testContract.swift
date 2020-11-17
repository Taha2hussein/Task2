//
//  testContract.swift
//  Test
//
//  Created by A on 11/17/20.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewtestProtocol {
   
    func showLoader()
    func hideLoader()
    func sucessToGetData()
    func failedToGetData()
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresentertestProtocol {
    
    var view: PresenterToViewtestProtocol? { get set }
    var interactor: PresenterToInteractortestProtocol? { get set }
    var router: PresenterToRoutertestProtocol? { get set }
    func getDataFromServer(_ end:String)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractortestProtocol {
    func getDataFromServer(_ end:String)
    var presenter: InteractorToPresentertestProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresentertestProtocol {
    func getDataResponseStatus(_ status : Bool)
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRoutertestProtocol {
    
}
