//
//  Journal.swift
//  Journal
//
//  Copyright (C) 2015 Xiao Yao. All Rights Reserved.
//  See LICENSE.txt for more information.
//

import Foundation

// An entry in a journal.
class Entry : NSObject {
    // The date created
    let dateCreated: NSDate
    
    // The date modified
    var dateModified: NSDate?
    
    // The text
    var text = ""
    
    // Initialize with a creation date.
    init(dateCreated: NSDate) {
        self.dateCreated = dateCreated
        super.init()
    }
    
    // Initialized with creation date, modified date and text.
    init(dateCreated: NSDate, dateModified: NSDate, text: String) {
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.text = text
        super.init()
    }
}

// A journal.
class Journal: NSObject {
    // The title
    let title: String
    
    // The entries
    let entries: [Entry]
    
    // Initialize with a title.
    init(title: String) {
        self.title = title
        self.entries = []
        super.init()
    }
    
    init(title: String, entries: [Entry]) {
        self.title = title
        self.entries = entries
        super.init()
    }
}