//
//  SwallowingDisorderHeader.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-06-09.
//

import SwiftUI

struct SwallowingDisorderHeader: View {
    @State var showSheet: Bool = false
    var body: some View {
        Button(action: {
            showSheet.toggle()
            
        }, label: {
            
            
            Text("Swallowing Disorders")
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
            SwallowingDisorderSheet()
        })
        
    }
}


struct SwallowingDisorderHeader_Previews: PreviewProvider {
    static var previews: some View {
        SwallowingDisorderHeader()
    }
}
