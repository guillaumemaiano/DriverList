//
//  DriverStoreViewModel.swift
//  DriverList
//
//  Created by guillaume MAIANO on 21/12/2020.
//

import Foundation

class DriverStoreViewModel {
    var driverStore = DriverStore()
    
    func requestRefresh() {
        driverStore.refreshData()
    }
}
