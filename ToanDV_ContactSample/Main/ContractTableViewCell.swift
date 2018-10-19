//
//  ContractTableViewCell.swift
//  ToanDV_ContactSample
//
//  Created by le.huu.dung on 10/19/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class ContractTableViewCell: UITableViewCell {

    @IBOutlet weak var lableAge: UILabel!
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var imageAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindView(contact : Contract) {
        lableName.text = contact.name
        lableAge.text = "\(contact.age)"
    }
    
}
