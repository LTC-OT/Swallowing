//
//  SignsCard2View.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsCard2View: View {
    var signs2: signs2
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
//        ZStack {
//            VStack(spacing: 20) {
//                
//                Image(signs2.image)
//                    .resizable()
//                    .scaledToFit()
//                    .clipShape(Circle())
//                    .padding()
//              
//                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.60), radius: 8, x : 6, y : 8)
//                    .scaleEffect(isAnimating ? 1.0 : 0.6)
//                
//                Text(signs2.problem)
//                    .foregroundColor(.white)
//                    .font(.headline)
//                    .fontWeight(.regular)
//                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.6), radius: 2, x : 2, y : 2)
//                
//                 
//                
//            }
//        }
//        
//        .onAppear {
//            withAnimation(.easeOut(duration: 0.5)) {
//                isAnimating = true
//            }
//        }
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//        
//        .background(LinearGradient(gradient : Gradient(colors : [Color(.lightGray), Color(.gray)]), startPoint : .bottom, endPoint : .top))
//        
//        
//
//        .cornerRadius(20)
//        .padding(.horizontal, 5)
//    }
//}

struct SignsCard2View_Previews: PreviewProvider {
    static var previews: some View {
        SignsCard2View(signs2: signsData2[0])
            .previewLayout(.fixed(width: 300, height: 640))
            
            .previewDevice("iPhone 11")
        
    }
}
