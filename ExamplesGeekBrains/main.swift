//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme TryCatch: Example - 01
//
import Foundation

enum UserDataError: Error {
    case noName
    case inCorrectAge
    case ageLessThenZero
}

func enterName() throws -> String {
    print("Ввведите имя")
    let name = readLine()
    
    guard let name = name, !name.isEmpty else { throw UserDataError.noName }
    
    return name
}

func enterAge() throws -> Int {
    print("Введите возраст")
    let ageString = readLine()
    
    guard let ageString = ageString, let age = Int(ageString) else {
        throw UserDataError.ageLessThenZero
    }
    return age
}

do {
    _ = try enterName()
    _ = try enterAge()
    
    print("Данные корректны")
} catch(let dataError) {
    print("Данные не корректны \(dataError)")
}


