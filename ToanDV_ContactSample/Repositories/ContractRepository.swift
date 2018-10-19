//
//  ContractRepository.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import Foundation
class ConstractRepository: ContractDataSource{
    var localDataSource: ContractDataSource
    
    init(localDataSource: ContractDataSource) {
        self.localDataSource = localDataSource
    }
    
    func getContracts() -> [Contract] {
        return localDataSource.getContracts()
    }
    
}
