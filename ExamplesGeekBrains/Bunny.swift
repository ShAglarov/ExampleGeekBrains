//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Delegate: Example - 01
//
import Foundation

protocol BunnyDeadDelegate {
    func isDeadBunny()
}

class Bunny {
    
    let name: String
    
    var delegateEndLifeBunny: BunnyDeadDelegate?
    
    var yearBirthBunny: UInt {
        willSet {
            age += 1
        }
    }
    
    var age: Int {
        willSet {
            hp -= Int.random(in: 100...150)
        }
    }
    
    var hp: Int {
        willSet {
            if deadBunny() {
                delegateEndLifeBunny?.isDeadBunny()
            }
        }
    }
    
    init(name: String, yearBirthBunny: UInt) {
        self.name = name
        self.yearBirthBunny = yearBirthBunny
        age = 0
        hp = Int.random(in: 600...1500)
    }
    
    func deadBunny() -> Bool {
        guard hp <= 0 else { return false }
        return true
    }
}
