//
//  main.swift
//  exstructstock
//
//  Created by Guest User on 02/05/2025.
//

import Foundation
//create a collection with stocks
struct Stock {

    var name: String
    var code: String
    var value: Double
    var variation: Double
    var volume: String
    var suffix: String?
    
    
}
//present code, value, variation
var apple = Stock(name: "Apple", code: "AAPL", value: 160.00, variation: 1.45, volume: "4B")

var renner = Stock(name: "Renner", code: "LREN3", value: 32.01, variation: -0.77, volume: "200B")

var bmwag = Stock(name: "BMW AG", code: "BMW", value: 88.35, variation: 0.79, volume: "327M")

var sintex = Stock(name: "Sintex", code: "SINTEX", value: 26.95, variation: 1.45, volume: "2M")

//add the suffix to the code

renner.suffix = "SA"
bmwag.suffix = "F"
sintex.suffix = "BO"

/*
     name
     code
     value
     variation
     volume
     string
     suffice
     */
print(sintex)





//add the % and up or down
