//
//  ViewController.swift
//  TableVIew
//
//  Created by Jayakumar Jayaraman on 14/02/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var fruits = ["Apple","Grapes","Pappaya","Orange","Pomogranate"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let fruit = fruits[indexPath.row]
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = fruit
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

