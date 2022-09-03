//
//  CustomModifiers.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-08-16.
//

import SwiftUI

struct Marco: ViewModifier {
    
    func body (content: Content) -> some View {
        content
            .padding()
            .frame( maxWidth: .infinity , maxHeight: .infinity, alignment: .leading)
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3)
            .padding()
    }
    
}

extension View {
  public  func frameStyle() -> some View {
        modifier(Marco())
    }
}

struct Oral: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.title3)
            .padding()
            .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .border(.gray)
            .padding()
    }
}

extension View {
  public  func oralStyle() -> some View {
        modifier(Oral())
    }
}
