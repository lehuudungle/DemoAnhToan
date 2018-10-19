//
//  MainView.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import Foundation
protocol MainView {
    func onGetContractSuccess(contracts : [Contract])
    
    func onGetContractFailure(exeption: NSException)
}
