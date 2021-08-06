//
//  PostTableViewCell.swift
//  CloneApp
//
//  Created by Nuriddin Musojonov on 01/08/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var imgPost1: UIImageView!
    @IBOutlet weak var imgPost2: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
