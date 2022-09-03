//
//  HardToChewSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-26.
//

import SwiftUI

struct HardToChewSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showMainView = false
    @State var angle: Double = 360
    @State var scale:  CGFloat = 1
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            ScrollView {
                Spacer(minLength: 40)
                VStack (alignment: .center, spacing: 20){
                    VStack {
                        Text("Hard to Chew foods:")
                            .font(.headline)
                            .padding()
                        Text("Foods that don’t break down with a lot of chewing and can present a choking risk, Examples include fruits and vegetables with tough skins, nuts, hot dogs or tough meats.")
                            .frameStyle()
                    }
                    VStack {
                        Image ("Hard")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 260, height: 200)
                            .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 5, z: 0))
                            .scaleEffect(scale)
                            .padding(.top, 10)
                    }
                    .frameStyle()
                }
                
                .onAppear {
                    withAnimation(.linear(duration: 2)) {
                        self.angle = 0.5
                        self.scale = 1.5 }
                    
                    withAnimation(Animation.linear.delay(1.75)){
                        self.showMainView = true }
                }
            }
            .onAppear {
                withAnimation(.linear(duration: 2)) {
                    self.angle = 0.5
                    self.scale = 1.5 }
                
                withAnimation(Animation.linear.delay(1.75)){
                    self.showMainView = true }
            }
            
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
                
            })
            
        }//ZSTACK
    }
}

struct HardToChewSheet_Previews: PreviewProvider {
    static var previews: some View {
        HardToChewSheet()
    }
}
