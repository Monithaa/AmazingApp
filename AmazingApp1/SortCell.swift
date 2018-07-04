//
//  SortCell.swift
//  AmazingApp1
//
//  Created by Anbu on 02/07/18.
//  Copyright © 2018 Anbu. All rights reserved.
//

import UIKit

class SortCell: UITableViewCell {

   // @IBOutlet weak var image1: UIButton!
    @IBOutlet weak var text1: UILabel!

    @IBOutlet weak var img1: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

