//
//  FirstViewController.swift
//  task
//
//  Created by Nattapon Nimakul on 6/7/2557 BE.
//  Copyright (c) 2557 Nattapon Nimakul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
                            
    @IBOutlet var tbTable : UITableView

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool)  {
        tbTable.reloadData()
    }

    // Tableview Delegate
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return glTask.tasks.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")
        
        cell.text = glTask.tasks[indexPath.row].name
        cell.detailTextLabel.text = glTask.tasks[indexPath.row].desc
        
        return cell
    }

    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            glTask.tasks.removeAtIndex(indexPath.row)
            tbTable.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
}

