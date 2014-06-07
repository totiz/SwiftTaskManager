//
//  SecondViewController.swift
//  task
//
//  Created by Nattapon Nimakul on 6/7/2557 BE.
//  Copyright (c) 2557 Nattapon Nimakul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var txtName : UITextField
    @IBOutlet var txtDesc : UITextField
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)  {
        self.view.endEditing(true)
    }

    @IBAction func hitAdd(sender : UIButton) {
        glTask.newTask(txtName.text, desc: txtDesc.text)
        txtName.text = ""
        txtDesc.text = ""
        self.view.endEditing(true)
        self.tabBarController.selectedIndex = 0
    }
    
    // UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {

        textField.resignFirstResponder()
        return true
    }
}

