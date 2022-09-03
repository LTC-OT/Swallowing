//
//  AspirationHeader.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct AspirationHeader: View {
    @State var showSheet: Bool = false
    var body: some View {
        Button(action: {
            showSheet.toggle()
            
        }, label: {
            
            
            Text("Aspiration")
                .frame(width: 280, height: 75)
                .foregroundColor(.black)
                .font(.headline)
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.gray, radius: 4, x: 3, y: 3)
            
                .overlay(
                    Image(systemName: "brain.head.profile")
                        .resizable()
                        .offset (y: 30)
                        .frame (width: 30, height: 30, alignment: .leading)
                )
   
        })
        .fullScreenCover(isPresented: $showSheet, content: {
            AspirationSheet()
        })
        
    }
}


struct AspirationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AspirationHeader()
    }
}
