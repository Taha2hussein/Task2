//
//  testViewController.swift
//  Test
//
//  Created by A on 11/17/20.
//  
//

import UIKit

class testViewController: UIViewController {
    
    
    // MARK: - Properties
    var presenter: ViewToPresentertestProtocol?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
        
        getData()
    }
    func getData(){
        self.presenter?.getDataFromServer("users/1")
    }
   
}

extension testViewController: PresenterToViewtestProtocol{
    func showLoader() {
        // show Loader
    }
    
    func hideLoader() {
        // hide Loader
    }
    
    func sucessToGetData() {
        // when success to get data
    }
    
    func failedToGetData() {
        // show error when failed to get Data
    }
    
    // TODO: Implement View Output Methods
}
