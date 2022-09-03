//
//  SwallowingDisordersView.swift
//  Swallowing
//
//  Created by James on 2021-01-15.
//

import SwiftUI

struct SwallowingDisordersView: View {
    var body: some View {
        ZStack {
            Color.primary.opacity(0.04)
                .ignoresSafeArea()
            NavigationView {
                ScrollView {
         
                    VStack{
                        Text ("General Concepts")
                            .font(.title2)
                            .bold()
                            .padding()
                        SwallowingDisorderHeader()
                            .padding(.bottom, 20)
                        Text("Abnormal Swallow Details")
                            .font(.title2)
                            .bold()
                            .padding(.top, 50)
                        HStack {
                            OralPhaseHeader()
                            PharyngealPhaseHeader()
                           
                        }.padding()
                        AspirationHeader()
                    }.padding()
                }
                
                .navigationBarTitle("Swallowing ", displayMode: .inline)
            }
        }
    }
}

struct SwallowingDisordersView_Previews: PreviewProvider {
    static var previews: some View {
        SwallowingDisordersView()
            .previewDevice("iPhone 11")
    }
}
