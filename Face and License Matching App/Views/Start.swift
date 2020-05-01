//
//  ContentView.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/23.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct Start: View {
    
    var body: some View {

        NavigationView{
            VStack{
                Text("（仮）顔認証度の測定アプリ")
                    .padding(.top, 120)
                    .font(.headline)
                    .lineLimit(1)
                
                Spacer()
                
                HStack{
                    Image("id")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 50,height: 50)
                }
                
                Spacer()
                
                NavigationLink(destination: FirstInfo()){
                    ZStack{
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:200, height: 50)
                            .cornerRadius(20)
                        Text("すすむ")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                }
                
                Spacer()
                    .frame(height: 60)
            }
        }
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}

//struct Start_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
