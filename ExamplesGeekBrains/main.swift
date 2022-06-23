//
//  Developer -> main.swift
//  Created by Shamil Aglarov on 24.06.2022.
//  Theme Closures: Example - 01
//

import Foundation

func sendRequest(complition: (Bool) -> Void) {
    let isSuccess = Bool.random()
    complition(isSuccess)
}

let didEndRequest: (Bool) -> Void = {
    print($0)
}

sendRequest(complition: didEndRequest)
