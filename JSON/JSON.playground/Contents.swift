//: Playground - noun: a place where people can play

import UIKit

//var path = "https://api.github.com/users/mralexgray/repos"

//var myUrl = URL(fileURLWithPath: jsonUrl)
//
//var task = URLSession.shared.dataTask(with: myUrl) { (data, response, error) in
//    if error != nil {
//        print("error")
//    }
//    else{
//        print(data as Any)
//    }
//}
//
//task.resume()

//let path = "http://api.geonames.org/postalCodeLookupJSON?postalcode=6600&country=AT&username=demo"

//let path = "postalCodeLookupJSON.json"

let path = "http://www.learnswiftonline.com/Samples/subway.json"

print(path)

let url = URL(string: path)

//let url = URL(fileURLWithPath: path)
let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    if error != nil {
        print("error : \(error)")
    }
    else {
        //var data in myData {
        let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)
        print("Data : \(json)")
        
        //}
    }
}


task.resume()
