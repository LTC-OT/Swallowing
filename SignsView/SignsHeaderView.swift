//
//  SignsHeaderView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsHeaderView: View {
    @State private var isAnimatingImage: Bool = false
    
    var signs: signs
    
    var body: some View {
        ZStack {
            
            Image(signs.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 8, x: 6, y: 8)
            
                .padding()
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
              
            
        }
        .frame(width: 300, height: 250)
        .onAppear() {
            withAnimation(.spring(response: 1.5, dampingFraction: 0.3, blendDuration: 1.5)) {
                isAnimatingImage = true
                
            }
        }
        
    }
}

struct SignsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SignsHeaderView(signs: signsData[0])
//            .previewLayout(.fixed(width: 260, height: 250))
            
            .previewDevice("iPhone 11")
        
    }
}
