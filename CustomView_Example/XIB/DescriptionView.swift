//
//  DescriptionView.swift
//  CustomView_Example
//
//  Created by gbmobile on 29/06/16.
//  Copyright © 2016 example. All rights reserved.
// inpired from https://guides.codepath.com/ios/Custom-Views-Quickstart#creating-a-custom-view

import UIKit

class DescriptionView: UIView {
    @IBOutlet var container: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var subtitleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var barLbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DescriptionView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        container.frame = bounds
        addSubview(container)
            
            // custom initialization logic
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
