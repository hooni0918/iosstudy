//
//  HomeMainTableViewCell.swift
//  Rest_Api_GangNam
//
//  Created by 이지훈 on 2023/01/27.
//

import UIKit

class HomeMainTableViewCell: UITableViewCell {

    @IBOutlet weak var colorIndex: UIView!
    
    @IBOutlet weak var toDoName: UILabel!
    
    @IBOutlet var TodoBolt: [UIButton]!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
