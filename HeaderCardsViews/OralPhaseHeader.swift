//
//  OralPhaseHeader.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct OralPhaseHeader: View {
    @State var showSheet: Bool = false
    var body: some View {
        Button(action: {
            showSheet.toggle()
            
        }, label: {
            
            
            Text("Disorders Oral Phase ")
                .frame(width: 100, height: 80)
                .foregroundColor(.black)
                .font(.headline)
                .padding(40)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.gray, radius: 4, x: 3, y: 3)
            
                .overlay(
                    Image(systemName: "brain.head.profile")
                        .resizable()
                        .offset (y: 50)
                        .frame (width: 30, height: 30, alignment: .center)
                )
   
        })
        .fullScreenCover(isPresented: $showSheet, content: {
            OralSheet()
        })
        
    }
}

struct OralPhaseHeader_Previews: PreviewProvider {
    static var previews: some View {
        OralPhaseHeader()
    }
}
