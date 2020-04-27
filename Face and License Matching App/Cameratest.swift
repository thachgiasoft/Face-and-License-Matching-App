//
//  Cameratest.swift
//  Face and License Matching App
//
//  Created by 川井 輝 on 2020/04/27.
//  Copyright © 2020 Akira Kawai. All rights reserved.
//

import SwiftUI

struct ActivateCameraLicense: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        
        
        
        VStack {
            image?.resizable()
                .scaledToFit()
            
            Button("すすむ") {
                self.showImagePicker = true
            }.padding()
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width:200, height: 50)
                .cornerRadius(15)
                .background(Color.blue)
                .foregroundColor(Color.white)
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}


struct Cameratest_Previews: PreviewProvider {
    static var previews: some View {
        ActivateCameraLicense()
    }
}
