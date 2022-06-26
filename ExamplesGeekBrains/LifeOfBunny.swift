//
//  LifeOfBunny.swift
//  ExamplesGeekBrains
//
//  Created by Shamil Aglarov on 25.06.2022.
//

import Foundation

class LifeOfBunny {
    
    var endOfLifeBunny = false
    
    var bunny: Bunny?
    
    func createBunny() -> Bunny {
        let bunny = Bunny(name: "Bugs Bunny", yearBirthBunny: 2022)
        return bunny
    }
    
    func startLifeBunny() {
        bunny = createBunny()
        bunny?.delegateEndLifeBunny = self
        
        guard let bunny = bunny else { return }
        
        print("Родился \(bunny.yearBirthBunny) году\n\(bunny.name) прыгает и веселится")
        
        while !endOfLifeBunny {
            bunny.yearBirthBunny += 1
            print("год \(bunny.yearBirthBunny)")
            readLine()
        }
        print("\(bunny.name) погиб в \(bunny.yearBirthBunny) году")
        print("прожив \(bunny.age) лет")
    }
}

extension LifeOfBunny: BunnyDeadDelegate {
    func isDeadBunny() {
        endOfLifeBunny = true
    }
}
