//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Closures: Example - 02
//

import Foundation

func sendRequest(complition: (Bool) -> Void) {
    let isSuccess = Bool.random()
    complition(isSuccess)
}

sendRequest(complition: {
    print($0)
})
