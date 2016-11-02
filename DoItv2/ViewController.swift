//
//  ViewController.swift
//  DoItv2
//
//  Created by Dominick Dayton Finetti on 11/1/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        }else{
            
            cell.textLabel?.text = task.name
        }
            return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Feed Zoe Kai"
        task1.important = true
        
        let task2 = Task()
        task2.name = "E-mail boss"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Take out the trash"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
}

