//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Closures: Example - 03
//

import Foundation

var array = [1, 2, 3, 4]

let newArray = array.filter( {
    return $0 % 2 == 0
})

print(newArray)

let sortArray = array.sorted(by: {
    return $0 < $1
})

print(sortArray)
