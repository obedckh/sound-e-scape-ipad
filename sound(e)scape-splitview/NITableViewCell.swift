//
//  NITableViewCell.swift
//  sound(e)scape-splitview
//
//  Created by Obed Cheung on 30/11/2017.
//  Copyright © 2017 obedcheung. All rights reserved.
//

import UIKit

class NITableViewCell: UITableViewCell {

    @IBOutlet weak var NIview: UIView!
    @IBOutlet weak var NIImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
