//
//  Coffee.swift
//  Face and License Matching App
//
//  Created by Akira Kawai on 2020/04/30.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import Foundation

// Base structure
struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
}


// Functional structure
extension Coffee {
    
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuuccino", imageURL: "Cuppuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresso", price: 2.1),
            Coffee(name: "Regular", imageURL: "Regular", price: 1.0)
        ]
        
        
        
    }
}
