//
//  ViewController.swift
//  Login
//
//  Created by Jayakumar Jayaraman on 03/02/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var uName = ""
    var pass = ""
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var status: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginTapped(_ sender: UIButton) {
        
        uName = userName.text!
        pass = password.text!
        
        if uName == "admin" && pass == "admin" {
            status.text = "Success"
            status.backgroundColor = UIColor.green;
        }
        else {
            status.text = "Invalid credentials."
            status.backgroundColor = UIColor.red;
        }
    }
    
    
}

