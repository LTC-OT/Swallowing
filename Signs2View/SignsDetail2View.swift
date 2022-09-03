//
//  SignsDetail2View.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsDetail2View: View {
    var signs2: signs2
    
    var body: some View {
        
        ZStack {
            
            
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .center, spacing: 20) {
                        
                        SignsHeader2View(signs2: signs2)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text(signs2.problem)
                                .font(.headline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                            
                            Text(signs2.subTitle)
                                .font(.headline)
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                            
                            Text(signs2.effect)
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                            
                            Text(signs2.subTitle1)
                                .font(.headline)
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                            
                            
                            Text(signs2.nutritional)
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                                
                            
                           
                            
                        }
                        .frameStyle()
                    }
                    .navigationBarTitle(signs2.problem, displayMode: .inline)
                    .navigationBarHidden(true)
                    
                }
                .edgesIgnoringSafeArea(.top)
            }
            .padding()
        }
        
    }
}

struct SignsDetail2View_Previews: PreviewProvider {
    static var previews: some View {
        SignsDetail2View(signs2: signsData2[0])
            
            .previewDevice("iPhone 11")
    }
}
