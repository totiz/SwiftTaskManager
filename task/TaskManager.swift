//
//  TaskManager.swift
//  task
//
//  Created by Nattapon Nimakul on 6/7/2557 BE.
//  Copyright (c) 2557 Nattapon Nimakul. All rights reserved.
//

import UIKit

var glTask: TaskManager = TaskManager()

struct Task {
    var name: String
    var desc: String
}

class TaskManager: NSObject {
    var tasks = Task[]()
    
    func newTask(name: String, desc: String) {
//        tasks += Task(name: name, desc: desc)
        tasks += Task(name: name, desc: desc)
    }
    
}
