//
//  DriverStoreViewModel.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import Foundation

class DriverStoreViewModel: ViewModel {
    var items: DLObservable<[DriverInformation]>
    
    private var driverStore = DriverStore()
    private var executeAction: (([DriverInformation]) -> Void)?;
    
    func bindAction(action: @escaping (([DriverInformation]) -> Void)) {
        executeAction = action
    }
    
    init() {
        items = driverStore.drivers
        driverStore.drivers.observe({
            driversInfoArray in
            self.executeAction?(driversInfoArray)
        })
    }
    
    func requestRefresh() {
        driverStore.refreshData()
    }
}

protocol ViewModelActions {
    func requestRefresh()
}

protocol ViewModelDataAccess {
    var items: DLObservable<[DriverInformation]> { get }
}

protocol ViewModel: ViewModelActions, ViewModelDataAccess {}
