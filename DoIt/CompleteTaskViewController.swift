//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Luke Newsome on 1/27/19.
//  Copyright © 2019 Zappy Code. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    @IBOutlet weak var taskLabel: UILabel!
    
    
    var task = Task()
    var previousVC = TasksViewController()
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name}
        

}
}

