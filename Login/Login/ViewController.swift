//
//  ViewController.swift
//  Login
//
//  Created by Jayakumar Jayaraman on 03/02/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import UIKit
import Firebase

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
        
        self.login()
    }
    
    
    
    @IBAction func registerUser(_ sender: UIButton) {
        uName = userName.text!
        pass = password.text!
        
        self.createUser()
        
        
    }
    
    
    // Login validation using Firebase
    func login() {
        
        FIRAuth.auth()?.signIn(withEmail: uName, password: pass, completion: {
            user, error in
            
            if error != nil {
                
                self.status.text = "Invalid credentials"
                self.status.backgroundColor = UIColor.red
                
                print("Invalid credentials supplied. Error \(error)")
                
            }
            else {
                
                self.status.text = "`logged in"
                self.status.backgroundColor = UIColor.green
                print("Logged succefully..")
            }
            
        })
        
    }
    
    // Create new user account
    func createUser() {
        FIRAuth.auth()?.createUser(withEmail: uName, password: pass, completion:  {
            user , error in
            
            if error != nil {
                print("Error creeating new user")
                self.status.text = "Try again"
                self.status.backgroundColor = UIColor.red
                
            }
            else {
                print("New user created")
                
                self.status.text = "New user registered"
                self.status.backgroundColor = UIColor.green
            }
        })
        
    }
}

