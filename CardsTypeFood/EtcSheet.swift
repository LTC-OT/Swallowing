//
//  etcSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct EtcSheet: View {
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
                    Text("Easy to Chew")
                        .font(.headline)
                        .padding()
                    
                    Text("""
For people with some difficulty  with chewing

Foods are soft, tender, moist or meltable. Can be mashed with the back of spoon. Pieces should be no more than  1/2  x. 1/2 inches (size of a dime). e.g. moist, slow cooked meats, soft fruits, well cooked vegetables, Meltable snacks such as pop corn twists or cheese puffs may be suitable.
""")
                    .frameStyle()
                    
                }
                
                
                VStack {
                    Image ("ETC")
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

struct EtcSheet_Previews: PreviewProvider {
    static var previews: some View {
        EtcSheet()
            
    }
}
