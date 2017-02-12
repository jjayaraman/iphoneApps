//
//  postalCode.swift
//  JsonBasics
//
//  Created by Jayakumar Jayaraman on 11/02/2017.
//  Copyright © 2017 jay. All rights reserved.
//

import Foundation

public struct postalCode {
  
    var placeName: String
    var postalCode: Int
    var countryCode: String
    
    init(placeName:String, postalCode:Int, countryCode:String) {
        self.placeName = placeName
        self.countryCode = countryCode
        self.postalCode = postalCode
    }
    
}
