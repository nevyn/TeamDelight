//
//  ViewController.swift
//  TeamDelight
//
//  Created by nevyn Bengtsson on 2016-06-7.
//  Copyright © 2016 ThirdCog. All rights reserved.
//

import Cocoa

class BuddiesViewController: NSViewController, NSCollectionViewDelegate, NSCollectionViewDataSource {

    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.registerNib(NSNib.init(nibNamed: "BuddyCell", bundle: nil), forItemWithIdentifier: "BuddyCell")
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 3
    }
    
    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
    {
        let item = collectionView.makeItemWithIdentifier("BuddyCell", forIndexPath: indexPath) as! BuddyCell
        
        item.buddyNameLabel.stringValue = indexPath.description
        
        return item
    }


}

