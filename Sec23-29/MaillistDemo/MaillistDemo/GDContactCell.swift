//
//  GDContactCell.swift
//  MaillistDemo
//
//  Created by 熊笑明 on 2017/10/22.
//  Copyright © 2017年 Lavie. All rights reserved.
//

import UIKit

class GDContactCell: UITableViewCell {

    
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.contactIcon.layer.cornerRadius = self.contactIcon.bounds.width / 2
        self.contactIcon.layer.masksToBounds = true
    }

    var contactModel:GDContactModel? {
        didSet{
            guard let contactModel = contactModel else {
                return
            }
            self.contactName.text = contactModel.name
            self.contactIcon.image = UIImage(named: contactModel.headPortraitStr)
        }
    }
    
    
}
