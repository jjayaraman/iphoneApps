//
//  ViewController.swift
//  JsonBasics
//
//  Created by Jayakumar Jayaraman on 10/02/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UIViewController {
    
    //    let path = "http://api.geonames.org/postalCodeLookupJSON?postalcode=6600&country=AT&username=demo"
    
    static let path = "http://www.learnswiftonline.com/Samples/subway.json"
    let url = URL(string: path)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Example Json parsing in swift3
        //self.parseJsonSwift3()
        self.parseJsonWithSwiftyJson()
    }
    
    
    
    // Parse a JSON in Swift3
    func parseJsonSwift3() {
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("error : \(error)")
            }
            else {
                print("data : \(data)")
                //      if data is data {
                if let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [[String:Any]] {
                    
                    //      print(json)
                    if let stations = json?[0]["stations"] as? [String:Any] {
                        
                        print("data : \(stations)")
                    }
                    
                }
                
            }
        }
        print("end....")
        task.resume()
        
    }
    
    
    // SwiftyJSON example
    func parseJsonWithSwiftyJson() {
        
        // Reads the JSON data from network
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("error : \(error)")
            }
            else {
                let json = JSON(data as Any)

                // Get all elements under root
                let list : [JSON]  = json["stations"].arrayValue
                
                // Iterates all data
                for record in list {
                    print("Build year is : \(record["buildYear"])")
                    print("Stations name is \(record["stationName"])")
                }
                
                 // Read a particular value
                if let results = json["stations"][0]["buildYear"].string {
                    print("Reads a single data : \(results)")
                }
                
            }
        }
        
        task.resume()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

