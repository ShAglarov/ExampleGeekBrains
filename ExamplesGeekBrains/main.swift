//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Delegate: Example - 02
//

import Foundation

protocol ElevatorDelegate {
    func cookFood(_ order: String) -> Bool
}

class Waiter {
    
    func getOrder() -> String {
        print("Что вы будете сэр")
        return readLine() ?? ""
    }
    
    var delegate: ElevatorDelegate = cook
}

class Cook: ElevatorDelegate {
    
    func cookFood(_ order: String) -> Bool {
        print("Я приготовил \(order)")
        return true
    }
}

let cook = Cook()

let waiter = Waiter()

waiter.delegate.cookFood(waiter.getOrder())
