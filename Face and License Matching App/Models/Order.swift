//
//  Order.swift
//  Face and License Matching App
//
//  Created by Akira Kawai on 2020/04/30.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import Foundation


struct Order: Codable{
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
}
