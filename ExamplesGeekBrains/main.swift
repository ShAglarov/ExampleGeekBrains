//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Generics: Example - 01
//
import Foundation

struct Storage<T> {
    var elements: [String: T] = [:]
    
    mutating func setElement(_ element: T, for key: String) {
        elements[key] = element
    }
    
    mutating func getElement(for key: String) -> T? {
        return elements[key]
    }
}

var storage = Storage<Int>()

storage.setElement(33, for: "Shamil")
storage.setElement(30, for: "Kurban")

print(storage.getElement(for: "Shamil"))
print(storage.getElement(for: "Kurban"))
