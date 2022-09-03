//
//  SignsRowView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsRowView: View {
    var signs: signs
    
    var body: some View {
        
        HStack {
            
            Image(signs.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 9, x: 9, y: 5)
            
            
            Text(signs.problem)
                .font(.caption2)
                .fontWeight(.black)
                .multilineTextAlignment(.leading)
            
        }
        .padding()
    }
}

struct SignsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SignsRowView(signs: signsData[9])
        
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDevice("iPhone 11")
        
    }
    
}
