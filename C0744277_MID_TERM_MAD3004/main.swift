//
//  main.swift
//  C0744277_MID_TERM_MAD3004
//
//  Created by Giselle Tavares on 13/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// 2) Create five product objects which can be used in Order.
var product1 = Product(manufacturer_id: "M001", manufacturer_name: "Manu", product_id: "P001", product_name: "Hard Drive", product_price: 120.00, product_quantity: 10)
var product2 = Product(manufacturer_id: "M001", manufacturer_name: "Manu", product_id: "P002", product_name: "Zip Drive", product_price: 90.00, product_quantity: 5)
var product3 = Product(manufacturer_id: "M001", manufacturer_name: "Manu", product_id: "P003", product_name: "Floppy Disk", product_price: 50.00, product_quantity: 7)
var product4 = Product(manufacturer_id: "M001", manufacturer_name: "Manu", product_id: "P004", product_name: "Monitor", product_price: 300.00, product_quantity: 11)
var product5 = Product(manufacturer_id: "M001", manufacturer_name: "Manu", product_id: "P005", product_name: "iPhone 7 Plus", product_price: 1200.00, product_quantity: 1)


// 3) Create at least three objects of Order Class.
// 4) Each order contains three to five products with appropriate total with respective of product price.
var order1 = Order(manufacturer_id: "M001", manufacturer_name: "Manu", order_id: "O001", products: [product1, product2, product3])
var order2 = Order(manufacturer_id: "M001", manufacturer_name: "Manu", order_id: "O002", products: [product1, product4, product3])
var order3 = Order(manufacturer_id: "M001", manufacturer_name: "Manu", order_id: "O003", products: [product1, product2, product3, product4, product5])

//order1.display()
//order2.display()
//order3.display()

// 5) Store all orders in dictionary having order id as keys
var orderDictionary = [String: Order]()
orderDictionary = [order1.order_id!: order1]
orderDictionary.merge([order2.order_id!: order2], uniquingKeysWith: {(current, _) in current })
orderDictionary.merge([order3.order_id!: order3], uniquingKeysWith: {(current, _) in current })

print("Printing by Dictionary: ")
orderDictionary[order1.order_id!]?.display()

//getOrderById(order_id: "P001", orderDictionary: orderDictionary)





