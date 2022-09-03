//
//  DrySheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-26.
//

import SwiftUI

struct DrySheet: View {
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
                        Text("Dry/crumbly foods:")
                            .font(.headline)
                            .padding()
                        
                        Text("Foods that crumble and fall all over the mouth. Examples include rice, hard commercial cookies/crackers, popcorn, dry granola bars.")
                            .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Image ("Dry")
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
                
            }//SCROLLVIEW
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

struct DrySheet_Previews: PreviewProvider {
    static var previews: some View {
        DrySheet()
    }
}
