//
//  mincedSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct MincedSheet: View {
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
                        Text("Minced Texture")
                            .font(.headline)
                            .padding()
                        
                        Text("""
Most Minced

For people with moderate difficulty with chewing or someone who has no teeth

Foods are moist, small pieces  1/4. X 1/4 inches (size of a small pea) that can be easily smashed with the back of a spoon. Most foods can be minced using a blender or food processor and pulsing it until pieces are small. The food is moistened with dressings, sauces, or gravies to hold it together , e.g. moist minced meats, creamy, scrambled eggs, mashed fruits and vegetable.

Fine Moist Minced

For people with limited chewing

Foods are moist, small pieces  1/8 X 1/8 inches (size of a  crumb) and hold together with dressings, sauces, gravies. All foods should be processed using blender or food processor. e.g. finely minced meats, creamy oatmeal, minced fruits and vegetables.
""")
                        .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Image ("Minced")
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


struct MincedSheet_Previews: PreviewProvider {
    static var previews: some View {
        MincedSheet()
    }
}
