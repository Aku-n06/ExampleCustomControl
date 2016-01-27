//
//  CustomControl.swift
//
//
//  Created by alberto.scampini on 26/01/2016.
//  Copyright © 2016 Alberto Scampini. All rights reserved.
//

import UIKit


class CustomControl: UIView {
    
    var mainView : UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.mainViewInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.mainViewInit()
    }

    func mainViewInit() {
        self.backgroundColor = UIColor.redColor()
        //load mainView from xib
        let subviewArray = NSBundle.mainBundle().loadNibNamed("mainView", owner: self, options: nil)
        self.mainView = subviewArray.first as! UIView
        self.addSubview(mainView)
        //add layout to mainView
        mainView.translatesAutoresizingMaskIntoConstraints = false
        let selfTop = NSLayoutConstraint(item: mainView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self,
            attribute: .Top,
            multiplier: 1,
            constant: 0)
        let selfBottom = NSLayoutConstraint(item: mainView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: self,
            attribute: .Bottom,
            multiplier: 1,
            constant: 0)
        let selfLeft = NSLayoutConstraint(item: mainView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: self,
            attribute: .Left,
            multiplier: 1,
            constant: 0)
        let selfRight = NSLayoutConstraint(item: mainView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: self,
            attribute: .Right,
            multiplier: 1,
            constant: 0)
        self.addConstraints([selfTop, selfBottom, selfLeft, selfRight])
    }

}