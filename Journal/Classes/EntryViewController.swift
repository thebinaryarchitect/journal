//
//  EntryViewController.swift
//  Journal
//
//  Copyright (C) 2015 Xiao Yao. All Rights Reserved.
//  See LICENSE.txt for more information.
//

import Foundation
import UIKit

class EntryViewController : UIViewController {
    // The text view
    let textView: UITextView
    
    // The entry
    let entry: Entry
    
    // Initialize with an entry
    init(entry: Entry) {
        self.entry = entry
        self.textView = UITextView.init()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.bounds = self.view.bounds
        self.textView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.textView.font = UIFont.systemFontOfSize(17.0)
        self.textView.text = self.entry.text
    }
}