//
//  MainDataSource.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import Foundation
import UIKit

class MainDataSource: NSObject, UITableViewDataSource{
    var contracts: [Contract]
    
    init(contracts: [Contract]) {
        self.contracts = contracts
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contracts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContractTableViewCell") as! ContractTableViewCell
        cell.bindView(contact: getContractByIndex(index: indexPath.row))
        return cell
    }
    
    func getContractByIndex(index: Int) -> Contract {
        return contracts[index]
    }
    
}
