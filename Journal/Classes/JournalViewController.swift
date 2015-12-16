//
//  JournalViewController.swift
//  Journal
//
//  Copyright (C) 2015 Xiao Yao. All Rights Reserved.
//  See LICENSE.txt for more information.
//

import Foundation
import UIKit

class JournalViewController : UIPageViewController, UIPageViewControllerDataSource {
    // The journal.
    var journal: Journal
    
    // Initialize with a journal.
    init(journal: Journal) {
        self.journal = journal
        super.init(transitionStyle: .PageCurl, navigationOrientation: .Horizontal, options: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
    }
    
    // MARK: UIPageViewControllerDataSource
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        return nil
    }
}