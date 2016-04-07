//
//  ViewController.swift
//  Project02-TableView
//
//  Created by 张佳圆 on 4/6/16.
//  Copyright © 2016 Tisoga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var appleDeviceNames = ["iPhone 1", "iPhone 2", "iPhone 3", "iPhone 4", "iPhone 5", "iPhone 5s", "iPhone 6", "iPhone 6s", "iPhone 6s Plus", "iPhone SE"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleDeviceNames.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identityString = "Cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identityString)
        cell.textLabel?.text = appleDeviceNames[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let message = appleDeviceNames[indexPath.row]
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: message, preferredStyle: .Alert)
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: { action -> Void in })
        actionSheetController.addAction(cancelAction)
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }


}

