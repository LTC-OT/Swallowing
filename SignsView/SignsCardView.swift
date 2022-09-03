//
//  SignsCardView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsCardView: View {
    var signs: signs
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                
                Image(signs.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.45), radius: 8, x : 6, y : 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(signs.problem)
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.regular)
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 2, x : 2, y : 2)
                
                 
                
            }
        }
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        
        .background(LinearGradient(gradient : Gradient(colors : [Color(.lightGray), Color(.gray)]), startPoint : .bottom, endPoint : .top))
        
        

        .cornerRadius(10)
        .padding(5)
    }
}

struct SignsCardView_Previews: PreviewProvider {
    static var previews: some View {
        SignsCardView(signs: signsData[0])
            .previewLayout(.fixed(width: 300, height: 640))
            
            .previewDevice("iPhone 11")
        
    }
}
