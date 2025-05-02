//
//  main.swift
//  ex5
//
//  Created by Guest User on 02/05/2025.
//

import Foundation

//3.5 coxinha
//15.5 cerveja

let coxinha = 3.5
let cerveja = 15.5
let service = 0.10

func mybill(a: Double, b: Double){
    let co = coxinha * a
    let ce = cerveja * b
    let per = service * 100
    let bill = co + ce
    let ser = bill * service
    let formatted = String(format: "%.2f", ser)
    
    print("\(a)x Coxinha R$\(coxinha) | Total R$ \(co)")
    print("\(b)x Cerveka R$\(coxinha) | Total R$ \(ce)")
    print("---------------------------")
    print("Service \(per)%              R$ \(formatted)")
    print("---------------------------")
    
    let final = bill + ser
    let formFinal = String(format: "%.2f", final)
    print("My bill is $\(formFinal)")
}

mybill(a:3, b:2)
