//
//  moistMincedSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct PureedSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showMainView = false
    @State var angle: Double = 360
    @State var scale:  CGFloat = 1
    var body: some View {
        ZStack (alignment: .topLeading) {
        ScrollView {
            Spacer(minLength: 30)
            VStack (alignment: .center, spacing: 0){
                VStack {
                    Text("People with swallowing   difficulties often require their food to be specially prepared to allow them to swallow more safely").font(.headline)
                        .padding()
                    Text("Pureed Texture")
                        .font(.headline)
                        .padding()
                    
                    Text("""
Puree

For people with poor chewing ability

Foods are smooth, moist and require no chewing. When processed , will hold shape when scooped, cannot be poured and can be eaten with a fork e.g. commercial pudding.

Thin Puree

For people with poor chewing and swallowing ability

Foods are smooth, moist and require no chewing. When processed , can be poured and needs to eaten with a spoon. e.g. apple sauce.
""")
                    .frameStyle()
                    
                }
                
                
                VStack {
                    Image ("Pureed")
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
        Button(action: {
            presentationMode.wrappedValue.dismiss()
            
        }, label: {
            Image(systemName: "xmark")
                .foregroundColor(.primary)
                .font(.headline)
                .padding(20)
                
        })
        }
    }
}


struct PureedSheet_Previews: PreviewProvider {
    static var previews: some View {
        PureedSheet()
           
    }
}
