//
//  RegisterLicense.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/26.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct ThirdInfo: View {
        
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {

        VStack{
            if (image == nil){
                Spacer()
                HStack{
                    Image("id")
                        .resizable()
                        .frame(width: 70, height: 70)
                }
                Text("明るい場所へ移動してください")
                    .padding(.top, 20)
                    .font(.body)
                    .lineLimit(1)
                Text("顔写真の撮影に移ります")
                    .padding(.top, 20)
                    .font(.body)
                    .lineLimit(1)

                Spacer()
                Button("カメラを起動") {
                    self.showImagePicker = true
                }
                .padding()
                .font(.title)
                .lineLimit(1)
                .frame(width:200, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(20)

                ZStack{
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width:200, height: 50)
                        .cornerRadius(20)
                    Text("すすむ")
                        .font(.title)
                        .foregroundColor(Color.white)
                }

                Spacer()
                    .frame(height: 60)

            } else {

                Spacer()

                image?
                    .resizable()
                    .scaledToFit()

                Text("こちらの画像でよろしいでしょうか？")
                    .padding(.top, 20)
                    .font(.body)
                    .lineLimit(1)

                Spacer()
                
                Button("再び撮影する") {
                    self.showImagePicker = true
                }
                .padding()
                .font(.title)
                .lineLimit(1)
                .frame(width:200, height: 50)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                
                NavigationLink(destination: Result()){
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
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

struct RegisterLicense_Previews: PreviewProvider {
    static var previews: some View {
        ThirdInfo()
    }
}
