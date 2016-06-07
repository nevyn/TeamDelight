//
//  BuddyCell.swift
//  TeamDelight
//
//  Created by nevyn Bengtsson on 2016-06-7.
//  Copyright © 2016 ThirdCog. All rights reserved.
//

import Cocoa

class BuddyCell: NSCollectionViewItem {

    @IBOutlet weak var remoteCameraView: NSImageView!
    @IBOutlet weak var buddyNameLabel: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
