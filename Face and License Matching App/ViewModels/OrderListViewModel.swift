////
////  OrderListViewModel.swift
////  Face and License Matching App
////
////  Created by Akira Kawai on 2020/04/30.
////  Copyright © 2020 Akira Kawai. All rights reserved.
////
//
//import Foundation
//
//class OrderListViewModel: ObservableObject {
//    
//    @Published var orders = [OrderViewModel]()
//    
//    init() {
//        fetchOrders()
//    }
//    
//    func fetchOrders() {
//        
//        Webservice().getAllOrders{ orders in
//            if  let  orders = orders {
//                self.orders = orders.map(OrderViewModel.init)
//            }
//        }
//    }
//}
//
//class OrderViewModel {
//    
//    let id = UUID()
//    var order:  Order
//    
//    init(order: Order){
//        self.order = order
//    }
//    
//    var name: String {
//        return self.order.name
//    }
//    var size : String {
//        return self.order.size
//    }
//    var coffeeName: String {
//        return self.order.coffeeName
//    }
//    var total: Double {
//        return self.order.total
//    }
//    
//    
//    
//}
//
