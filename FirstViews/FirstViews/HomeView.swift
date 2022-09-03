//
//  HomeView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showMainView = false
    @State var angle: Double = 340
    @State var opacity: Double = 1
    @State var scale:  CGFloat = 1
    
    var body: some View {
        
        Group {
            
            ZStack {
                Color.white.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                    .overlay(
                        VStack {
                            Text("Swallowing")
                                .fontWeight(.bold)
                            Text("Assessment ")
                                .fontWeight(.bold)
                        }
                            .foregroundColor(.accentColor)
                            .font(.title)
                            .font(.largeTitle)
                            .padding(.top, 90)
                        
                        , alignment: .top)
                
                VStack {
                    Spacer()
                    Image("Swallow Aware Logo White")
                        .resizable()
                        .colorMultiply(.primary)
                        .shadow(color: .black.opacity(0.2), radius: 0.1, x: 3, y: -3)
                        .frame(width: 160, height: 200)
                        .rotation3DEffect(.degrees(angle), axis: (x: 5, y: 5, z: 0))
                        .scaleEffect(scale)
                        .padding(.top, 100)
                    Spacer()
                    
                    Text("Application for")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.accentColor)
                    Text("OT Students")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.accentColor)
                    
                    
                    Text("in LTC")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 150)
                    
                }
                
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                self.angle = 0.5
                self.scale = 1.5 }
            
            withAnimation(Animation.linear.delay(1.75)){
                self.showMainView = true }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")

    }
}
