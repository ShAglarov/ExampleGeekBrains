//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Subscript: Example - 02
//
import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        if index < 0 || index > count - 1 {
            return nil
        }
        return self[index]
    }
}

let elements = [1,2,3,4]

print(elements[safe: 3]!)
print(elements[safe: 4])
