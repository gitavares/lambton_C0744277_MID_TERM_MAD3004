//
//  Product.swift
//  C0744277_MID_TERM_MAD3004
//
//  Created by Giselle Tavares on 13/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Product: Manufacturer {
    var product_id: String?
    var product_name: String?
    var product_price: Double?
    var product_quantity: Int?
    
    override init(){
        super.init()
        self.product_id = "1"
        self.product_name = ""
        self.product_price = 0
        self.product_quantity = 0
    }
    
    init(manufacturer_id: String, manufacturer_name: String, product_id: String, product_name: String, product_price: Double, product_quantity: Int) {
        super.init(manufacturer_id: manufacturer_id, manufacturer_name: manufacturer_name)
        self.product_id = product_id
        self.product_name = product_name
        self.product_price = product_price
        self.product_quantity = product_quantity
    }
    
    func updateQuantitity(newQuantity: Int) {
        self.product_quantity = self.product_quantity! + newQuantity
    }
    
    override func display() {
        super.display()
        print("PRODUCTS")
        print("ID: \(self.product_id!) | Name: \(self.product_name!) | $ \(self.product_price!) | Qty: \(self.product_quantity!)")
    }
    
    
    
}
