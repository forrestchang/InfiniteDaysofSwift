//
//  ViewController.swift
//  Project02-iPhoneFamily
//
//  Created by 张佳圆 on 4/7/16.
//  Copyright © 2016 Tisoga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var iphoneFamilyName = ["iPhone 1", "iPhone 3G", "iPhone 3GS", "iPhone 4", "iPhone 4s", "iPhone 5", "iPhone 5c", "iPhone 5s", "iPhone 6", "iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus", "iPhone SE"]
    
    var iphoneFamilyImageName = ["iphone_1.png", "iphone_3g.png", "iphone_3gs.png", "iphone_4.png", "iphone_4s.png", "iphone_5.png", "iphone_5c.png", "iphone_5s.png", "iphone_6.png", "iphone_6plus.png", "iphone_6s.png", "iphone_6splus.png", "iphone_se.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iphoneFamilyName.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identityString = "Cell"
        let imageName = iphoneFamilyImageName[indexPath.row]
        let cell = UITableViewCell(style: .Default, reuseIdentifier: identityString)
        cell.textLabel?.text = iphoneFamilyName[indexPath.row]
        cell.imageView?.image = UIImage(named: imageName)
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let actionSheetController = UIAlertController(title: nil, message: iphoneFamilyName[indexPath.row], preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .Cancel, handler: { action -> Void in })
        actionSheetController.addAction(cancelAction)
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }


}

