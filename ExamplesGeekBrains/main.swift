//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Subscript: Example - 01
//
import Foundation

protocol StorageIdentifiable {
    var id: String { get }
}

struct Storage<T: StorageIdentifiable> {
    var elements: [String: T] = [:]
    
    mutating func setElement(_ element: T) {
        elements[element.id] = element
    }
    
    mutating func getElement(by id: String) -> T? {
        return elements[id]
    }
    
    subscript(id: String) -> T? {
        get {
            return  elements[id]
        }
        set {
            elements[id] = newValue
        }
    }
}

struct Book: StorageIdentifiable {
    let id: String
    let title: String
}

let book = Book(id: "1", title: "Книга Усова Swift")
var storage = Storage<Book>()

storage["1"] = book

let someObj = storage["1"]

print(someObj)

