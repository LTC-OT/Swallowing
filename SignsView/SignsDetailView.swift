//
//  SignsDetailView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsDetailView: View {
    var signs: signs
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    SignsHeaderView(signs: signs)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(signs.problem)
                            .font(.headline)
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        
                        Text(signs.subTitle)
                            .font(.headline)
                            .padding(.leading)
                            .multilineTextAlignment(.leading)
                            
                        Text(signs.effect)
                            .padding(.leading)
                            .multilineTextAlignment(.leading)
                        
                        Text(signs.subTitle1)
                            .font(.headline)
                            .padding(.leading)
                            .multilineTextAlignment(.leading)
                        
                        Text(signs.nutritional)
                            .padding(.leading)
                            .multilineTextAlignment(.leading)
                            
                        
                       
                        
                    }
                    .frameStyle()
                }
                .navigationBarTitle(signs.problem, displayMode: .inline)
                .navigationBarHidden(true)
                
            }
            .edgesIgnoringSafeArea(.top)
        }
        .padding()
        
        
    }
}

struct SignsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SignsDetailView(signs: signsData[0])
            
            .previewDevice("iPhone 11")
    }
}
