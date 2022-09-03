//
//  SignsRow2View.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsRow2View: View {
    var signs2: signs2
    
    var body: some View {
//        VStack (alignment: .leading) {
        HStack{
            
            Image(signs2.image)
               
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 3, x: 2, y: 2)
//                .padding()
            

                Text(signs2.problem)
                .font(.caption2)
                    .fontWeight(.black)
//                    .padding()
                
          

            
        }
        .padding()
    }
}
struct SignsRow2View_Previews: PreviewProvider {
    static var previews: some View {
        SignsRow2View(signs2: signsData2[0])
            
            .previewLayout(.sizeThatFits)
           .padding()
            
            .previewDevice("iPhone 11")
        
    }
}
