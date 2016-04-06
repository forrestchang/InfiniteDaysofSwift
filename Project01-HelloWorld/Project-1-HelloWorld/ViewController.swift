//
//  ViewController.swift
//  Project-1-HelloWorld
//
//  Created by 张佳圆 on 4/6/16.
//  Copyright © 2016 Tisoga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickButton1(sender: AnyObject) {
        // Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "Action Sheet", message: "Swifty now! Choose an option!", preferredStyle: .ActionSheet)
        
        // Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: { action -> Void in })
        actionSheetController.addAction(cancelAction)
        
        // Create and add first option action
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Take Picture", style: .Default, handler: { action -> Void in })
        actionSheetController.addAction(takePictureAction)
        
        // Create and add the second option action
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "Choose from Camera", style: .Default, handler: { action -> Void in })
        actionSheetController.addAction(choosePictureAction)
        
        // Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }

    @IBAction func clickButton2(sender: AnyObject) {
        // Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "Alert Sheet", message: "Swifty now! Choose an option!", preferredStyle: .Alert)
        
        // Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: { action -> Void in })
        actionSheetController.addAction(cancelAction)
        
        // Create and add an option action
        let nextAction: UIAlertAction = UIAlertAction(title: "Next", style: .Default, handler: { action -> Void in })
        actionSheetController.addAction(nextAction)
        
        // Add a text field
        actionSheetController.addTextFieldWithConfigurationHandler({ textField -> Void in
            textField.textColor = UIColor.blueColor()
        })
        
        // Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }

}

