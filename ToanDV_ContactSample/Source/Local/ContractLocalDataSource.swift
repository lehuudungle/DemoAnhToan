//
//  ContractLocalDataSource.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import Foundation
class ContractLocalDataSource:ContractDataSource{
    struct Const {
        static let DEFAULT_IMAGE_URL = "https://www.google.com.vn/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiDwq6mnpLeAhXIyrwKHc0MDZkQjRx6BAgBEAU&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fflowers%2F&psig=AOvVaw0rLJ4dXdPiG1zfURm2tib6&ust=1540029285279018"
    }
    
    func getContracts() -> [Contract] {
        var result = [Contract]()
        for i in 0...100 {
            result.append(Contract(name: "Phan Van Da", age: 21, imageUrl: Const.DEFAULT_IMAGE_URL))
            result.append(Contract(name: "Doan Van Toan", age: 21, imageUrl: Const.DEFAULT_IMAGE_URL))
            result.append(Contract(name: "Le Huu Dung", age: 21, imageUrl: Const.DEFAULT_IMAGE_URL))
        }
        return result
    }
    
}
