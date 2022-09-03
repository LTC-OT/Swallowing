//
//  DietTextureView.swift
//  Swallowing
//
//  Created by James on 2021-01-19.
//

import SwiftUI

struct DietTextureView: View {
    
    var body: some View {
        ZStack {
            Color.primary.opacity(0.04)
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                Group {
                    VStack {
                        HStack {
                            Text("Diets")
                                .font(.title2)
 
                            Image(systemName: "fork.knife.circle")
                                .resizable()
                                .frame (width: 30, height: 30, alignment: .leading)
                        }
                    
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack(spacing: 10) {
                                EtcHeader()
                                HeaderMinced()
                                HeaderPureed()
                            }.padding()
                        }.padding()
                        .padding(.horizontal)

                        VStack {
                            HStack {
                                Text("Food Terminology")
                                    .font(.title2)
                               
                                Image(systemName: "fork.knife.circle")
                                    .resizable()
                                    .frame (width: 30, height: 30, alignment: .leading)
                            }
                        
                            ScrollView (.horizontal, showsIndicators: false){
                                HStack(spacing: 10) {
                                    
                                    HeaderMixed()
                                    HeaderSticky()
                                    HeaderHard()
                                    HeaderDry()
                                    
                                }.padding()
                               
                            }.padding()
                                .padding(.horizontal)
    
                        }
                       
                        VStack {
                            
                                HStack {
                                    Text("Consistency of Fluids")
                                        .font(.title2)
                                    
                                    Image(systemName: "fork.knife.circle")
                                        .resizable()
                                        .frame (width: 30, height: 30, alignment: .leading)
                                }
                            }
                        
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack(spacing: 10) {
                            HeaderThickened()
                            }.padding()
                        }.padding()
                            .padding(.horizontal)

                    }//VSTACK
                
                }//GROUP
                
            }//SCROLLVIEW
            
        }//ZSTACK
   }
}

struct DietTextureView_Previews: PreviewProvider {
    static var previews: some View {
        DietTextureView()
            .previewDevice("iPhone 11")
//            .preferredColorScheme(.dark)
    }
}
