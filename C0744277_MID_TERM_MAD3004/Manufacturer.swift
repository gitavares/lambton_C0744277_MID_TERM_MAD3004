//
//  Manufacturer.swift
//  C0744277_MID_TERM_MAD3004
//
//  Created by Giselle Tavares on 13/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Manufacturer: IDisplay {
    var manufacturer_id: String?
    var manufacturer_name: String?
    
    init() {
        self.manufacturer_id = "1"
        self.manufacturer_name = ""
    }
    
    init(manufacturer_id: String, manufacturer_name: String){
        self.manufacturer_id = manufacturer_id
        self.manufacturer_name = manufacturer_name
    }
    
    func display() {
        print("Manufacturer Id: \(self.manufacturer_id!)")
        print("Manufacturer Name: \(self.manufacturer_name!)")
    }
    
    
    
}
