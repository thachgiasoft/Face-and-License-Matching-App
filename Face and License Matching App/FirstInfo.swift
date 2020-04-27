//
//  RegisterView.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/24.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct FirstInfo: View {
    
    @State private var userName = "1"
    @State private var userAge = "2"
    @State private var userGender = "3"
        
    var body: some View {
        
            VStack{
                
                Spacer()
                    .frame(height: 150)
                                
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                        .frame(width: 30)
                    Text("名前")
                        .foregroundColor(Color.gray)
                        .padding(20)
                    TextField("", text: $userName)
                        .padding()
                        .foregroundColor(Color.gray)
                }

                HStack{
                    Spacer()
                        .frame(width: 30)
                    Text("年齢")
                        .foregroundColor(Color.gray)
                        .padding(20)
                    TextField("", text: $userAge)
                        .padding()
                        .foregroundColor(Color.gray)
                }
                
                HStack{
                    Spacer()
                        .frame(width: 30)
                    Text("性別")
                        .foregroundColor(Color.gray)
                        .padding(20)
                    TextField("", text: $userGender)
                        .padding()
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                
                    if (userName == "" || userAge == "" || userGender == ""){
                        ZStack{
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width:200, height: 50)
                                .cornerRadius(20)
                            Text("すすむ")
                                .font(.title)
                                .foregroundColor(Color.white)
                        }
                    }else{
                        NavigationLink(destination: SecondInfo()){
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
                    }
                Spacer()
                    .frame(height: 60)
            }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        FirstInfo()
    }
}
