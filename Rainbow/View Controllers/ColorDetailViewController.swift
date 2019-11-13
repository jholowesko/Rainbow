//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by John Holowesko on 11/13/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateviews()
    }

    func updateviews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
    
}
