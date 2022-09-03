//
//  AspirationSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct AspirationSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showMainView = false
    @State var angle: Double = 360
    @State var scale:  CGFloat = 1
    var body: some View {
        ZStack (alignment: .topLeading) {
            ScrollView {
                Spacer(minLength: 40)
                VStack (alignment: .center, spacing: 10){
                    VStack {
                        Text("Aspiration")
                            .font(.headline)
                            .padding()
                        
                        Text("""
Aspiration:

When material (food, liquid, saliva, tube feed formula) enters the airway past the level of the vocal cords, it is called ASPIRATION.

Aspiration of large solid chunks may lead to total blockage of the airway (CHOKING)

Aspiration of smaller food particles, liquid , or bacteria from the mouth into the trachea and lungs puts the patient at significant risk of developing ASPIRATION PNEUMONIA
""")
                        .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Image ("Dysphagia Symptoms")
                            .resizable()
                            .frame(width: 350, height: 350)
                            .cornerRadius(30)
                            .padding()
                    }
                    
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
            
        }//ZSTACK
    }
}
struct AspirationSheet_Previews: PreviewProvider {
    static var previews: some View {
        AspirationSheet()
    }
}
