////
////  AddCoffeeOrderViewModel.swift
////  Face and License Matching App
////
////  Created by Akira Kawai on 2020/05/01.
////  Copyright © 2020 Akira Kawai. All rights reserved.
////
//
//import Foundation
//
//class AddCoffeeOrderViewModel: ObservableObject{
//
//    var name: String = ""
//    @Published var size: String = "Medium"
//    @Published var coffeeName: String = ""
//
//    private var webservice: Webservice
//
//    init() {
//        self.webservice = Webservice()
//    }
//
//    var coffeeList: [CoffeeViewModel] {
//        return Coffee.all().map(CoffeeViewModel.init)
//    }
//
//    private func calculateTotalPrice() -> Double{
//        let coffeeVM = coffeeList.first {$0.name == coffeeName}
//       if let coffeeVM = coffeeVM {
//            return coffeeVM.price * priceForSize()
//        } else {
//            return 0.0
//        }
//    }
//}
