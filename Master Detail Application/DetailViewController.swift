//
//  DetailViewController.swift
//  Master Detail Application
//
//  Created by Dao Hoang Son on 11/29/14.
//  Copyright (c) 2014 Dao Hoang Son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Configure the button to return to Master
        if splitViewController != nil {
            if splitViewController!.respondsToSelector(Selector("displayModeButtonItem")) {
                navigationItem.leftBarButtonItem = splitViewController!.displayModeButtonItem()
                navigationItem.leftItemsSupplementBackButton = true
            }
        }
        
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

