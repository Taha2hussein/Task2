//
//  testPresenter.swift
//  Test
//
//  Created by A on 11/17/20.
//  
//

import Foundation

class testPresenter: ViewToPresentertestProtocol {
    func getDataFromServer(_ end:String) {
        interactor?.getDataFromServer(end)
    }
    

    // MARK: Properties
    var view: PresenterToViewtestProtocol?
    var interactor: PresenterToInteractortestProtocol?
    var router: PresenterToRoutertestProtocol?
}

extension testPresenter: InteractorToPresentertestProtocol {
    func getDataResponseStatus(_ status: Bool) {
        // hide Loader
        if status{
            view?.sucessToGetData()
        }
        else{
            view?.failedToGetData()
        }
        print("Status" , status)
    }
    
    
}
