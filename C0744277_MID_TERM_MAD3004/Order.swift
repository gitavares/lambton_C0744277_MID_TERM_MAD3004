//
//  Order.swift
//  C0744277_MID_TERM_MAD3004
//
//  Created by Giselle Tavares on 13/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Order: Manufacturer {
    var order_id: String?
    var order_date: Date = Date()
    var products: [Product]?
    var order_total: Double?
    
    override init() {
        super.init()
        self.order_id = "1"
        self.products = [Product]()
        self.order_total = 0
    }
    
    init(manufacturer_id: String, manufacturer_name: String, order_id: String, products: [Product]) {
        super.init(manufacturer_id: manufacturer_id, manufacturer_name: manufacturer_name)
        self.order_id = order_id
        self.products = products
        self.order_total = calculateOrderTotal(products: products)
    }
    
    func calculateOrderTotal(products: [Product]) -> Double{
        var total = 0.0
        for product in products {
            total += product.product_price!
        }
        self.order_total = total
        return order_total!
    }
    
    // 6) Search order by its id (Add getOrderById() function in Order class)
    func getOrderById(order_id: String, orderDictionary: [String: Order]) {
        let orderById: Order?
        let orders = orderDictionary
        if (orders.index(forKey: order_id) != nil) {
            orderById = orders[order_id]
            print("Order found: ")
            orderById?.display()
        } else {
            print("Order not found... (getOrderById)")
        }
    }
    
    override func display() {
        // temp... it should be displayed by the dictionary
        print("\n--------- ORDER ---------")
        super.display()
        print("Order ID: \(self.order_id!) - Date: \(self.order_date)")
        for product in products! {
            product.display()
        }
        print("Order Total: $", self.order_total!)
    }
    
    
    
}
