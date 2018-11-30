//
//  CumstomItemCell.swift
//  QRcodePractice_3
//
//  Created by 马胖 on 29/11/18.
//  Copyright © 2018 macong. All rights reserved.
//

import UIKit

class CumstomItemCell: UITableViewCell{
    var imageview :UIImageView!
    var namelabel:UILabel!
    var linelabel:UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        imageview = UIImageView(frame: CGRect(x: 20, y: 40, width: 30, height: 39.5))
        imageview.image = UIImage.init()
        self.contentView.addSubview(self.imageview)
        
        
        
        namelabel = UILabel(frame: CGRect(x: 69, y: 20, width: 291, height: 80))
        namelabel.textColor = UIColor.white
        //namelabel.text = "Food!!!!!!!!!!!!!"
        self.contentView.addSubview(self.namelabel)
        
        linelabel = UILabel(frame: CGRect(x: 60, y: 20, width: 1, height: 79.5))
        linelabel.backgroundColor = UIColor.white
        self.contentView.addSubview(self.linelabel)
        
        
        
      
        self.backgroundColor = UIColor.orange
    }
    
    
    
    
    

    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
       super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
