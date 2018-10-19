//
//  ViewController.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class MainController: UIViewController, MainView, UITableViewDelegate {
    
    @IBOutlet weak var tableContract: UITableView!
    
    var mainDataSource: MainDataSource?
    var repository: ConstractRepository?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        tableContract.register(UINib.init(nibName: "ContractTableViewCell", bundle: nil),
                               forCellReuseIdentifier: "ContractTableViewCell")
        let localDataSource = ContractLocalDataSource()
        repository = ConstractRepository(localDataSource: localDataSource)
        onGetContractSuccess(contracts: (repository?.getContracts())!)
        self.tableContract.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func onGetContractSuccess(contracts: [Contract]) {
        mainDataSource = MainDataSource(contracts: contracts)
        self.tableContract.dataSource = mainDataSource
        self.tableContract.delegate = self
    }
    
    func onGetContractFailure(exeption: NSException) {
        
    }
    

}

