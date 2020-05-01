//
//  Result.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/27.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct Result: View {
    
    @State private var resultRate = 70
    
    var body: some View {
        
        VStack{
        
            Spacer()
            Text("照合度は")
                .padding(.top, 20)
                .font(.body)
                .lineLimit(1)

//            HStack{
//                Text(rateResult)
//                Text(systemName("persent"))
//            }

                
            Spacer()
                    
                ZStack{
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width:200, height: 50)
                        .cornerRadius(20)
                    Text("トップへ戻る")
                        .font(.title)
                        .foregroundColor(Color.white)
                }
            Spacer()
                .frame(height: 60)
            
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
