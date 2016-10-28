//
//  ArtCell.swift
//  Color Me A Mentor
//
//  Created by Priya Xavier on 10/28/16.
//  Copyright © 2016 Melissa Phillips Design. All rights reserved.
//

import UIKit

class ArtCell: UITableViewCell {
    
    @IBOutlet weak var picThumbnail: UIImageView!
    @IBOutlet weak var artTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   

    
}
