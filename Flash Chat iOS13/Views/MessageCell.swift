//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Khanh Son on 10/30/22.
//  
//

import UIKit

class MessageCell: UITableViewCell {
// MARK: - IBOutlets
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
// MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 4
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
