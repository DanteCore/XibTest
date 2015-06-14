//
//  CustomPersonView.swift
//  xib_test
//
//  Created by Macbook on 6/14/15.
//  Copyright (c) 2015 Ciklum. All rights reserved.
//

import UIKit

class CustomPersonView: UIView {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var personTextView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required  init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInit()
    }

    func customInit() {
        let nib = UINib(nibName: "View", bundle: nil)
        
        nib.instantiateWithOwner(self, options: nil)
        addSubview(contentView)
        contentView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let dict = ["contentView": contentView]
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: dict))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView]|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: dict))
    }
    
}
