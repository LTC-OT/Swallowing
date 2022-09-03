//
//  EtcHeader.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct EtcHeader: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        Button(action: {
            showSheet.toggle()
            
        }, label: {
            
            Text("ETC Texture")
            
                .frame(width: 85, height: 60)
                .foregroundColor(.black)
                .font(.headline)
                .padding(60)
                .background(Color.white)
                .cornerRadius(40)
                .shadow(color: Color.gray, radius: 4, x: 3, y: 3)
            
            
            
        })
        .fullScreenCover(isPresented: $showSheet, content: {
            EtcSheet()
        })
        
    }
}

struct EtcHeader_Previews: PreviewProvider {
    static var previews: some View {
        EtcHeader()
    }
}
