//
//  DescriptionView.swift
//  CustomView_Example
//
//  Created by gbmobile on 29/06/16.
//  Copyright © 2016 example. All rights reserved.
// inpired from https://guides.codepath.com/ios/Custom-Views-Quickstart#creating-a-custom-view

import UIKit

@IBDesignable class DescriptionView: UIView {
    let nibName = "DescriptionView"
    @IBOutlet var container: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var subtitleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var barLbl: UILabel!
    
    @IBInspectable var icon: UIImage!{
        didSet{imageView.image = icon}
    }
    
    @IBInspectable var viewTitle: String = "The title" {
        didSet{titleLbl.text = viewTitle}
    }
    
    @IBInspectable var viewSubtitle: String = "Subtitle" {
        didSet{ subtitleLbl.text = viewSubtitle}
    }
    
    @IBInspectable var viewDesc: String = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa" {
        didSet{descLbl.text = viewDesc}
    }
    
    @IBInspectable var barColor: UIColor = UIColor.blueColor() {
        didSet{barLbl.backgroundColor = barColor}
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            container.layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            container.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            container.layer.cornerRadius = cornerRadius
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    func initSubviews() {
        //loadViewFromNib
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing )
        addSubview(view)
    }

    func setUp() {
        //standard initialization logic
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        nib.instantiateWithOwner(self, options: nil)
        // use bounds not frame or it'll be offset
        container.frame = bounds
        // Adding custom subview on top of our view (over any custom drawing)
        addSubview(container)
        
    }
}
