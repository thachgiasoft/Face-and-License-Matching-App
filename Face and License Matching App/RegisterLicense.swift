//
//  RegisterLicense.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/26.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct ThirdInfo: View {
        
    var body: some View {
        NavigationView{
            VStack{
                Text("（仮）顔認証度の測定アプリ")
                    .padding(.top, 90)
                    .padding(.bottom, 90)
                    .font(.headline)
                    .lineLimit(1)
                
                HStack{
                    Image("id.png")
                    Image("person.png")
                }.padding(90)
                
                Spacer()
                
                }
            }
        }}

struct RegisterLicense_Previews: PreviewProvider {
    static var previews: some View {
        ThirdInfo()
    }
}
