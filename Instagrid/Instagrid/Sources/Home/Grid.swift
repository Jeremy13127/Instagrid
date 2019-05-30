//
//  Grid.swift
//  Instagrid
//
//  Created by Jeremy Juan on 30/05/2019.
//  Copyright © 2019 Jeremy Juan. All rights reserved.
//

import UIKit

class Grid: UIView { // With a .xib file
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with color: UIColor) {
        backgroundColor = color
    }
}
