//
//  TasksViewController.swift
//  DoIt
//
//  Created by Luke Newsome on 1/26/19.
//  Copyright © 2019 Zappy Code. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{

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
        return tasks.count
       
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
    cell.textLabel?.text = task.name}
        
        return cell
}
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
}
func makeTasks() -> [Task] {
    let task1 = Task()
    task1.name = "Walk the dog"
task1.important = false

    let task2 = Task()
    task2.name = "Buy Cheese"
    task2.important = true
    
    let task3 = Task()
    task3.name = "Mow the Lawn"
    task3.important = false

return [task1, task2, task3]





}
