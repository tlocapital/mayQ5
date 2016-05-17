//
//  ViewController.swift
//  mayQ5
//
//  Created by Ted on 5/17/16.
//  Copyright © 2016 ted.company. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var thisTableView: UITableView!
    var currentTableCell: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentTableCell
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellThis", forIndexPath: indexPath) as! TableViewCell
//        let nextVC = self.presentingViewController as! CameraViewController
//        if nextVC.imageHere.image != nil {
//            cell.cellImage.image = nextVC.imageHere.image
//        }
//        if nextVC.textHere.text != nil {
//            cell.cellLabel.text = nextVC.textHere.text
//        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toCamera" {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

