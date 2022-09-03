//
//  PharyngealSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct PharyngealSheet: View {
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
                        Text("Disorders in the Pharyngeal Phase")
                            .font(.headline)
                            .padding()
                        
                        Text("""
Disorders affecting the Pharyngeal Phase may result from:

Difficulty initiating the swallow, which creates swallow delay and risk of aspiration before the swallow reflex is triggered.

Failure to protect the airway from entry of food or liquid during the swallow.

Difficulty transporting all or part of the bolus into the esophagus, which can lead to food and or fluid residue in the pharynx, creating a risk for aspiration after the swallow is complete.
""")
                        .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Image ("Anatomy2")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 260, height: 260)
                            .padding()
                    }
                    .frameStyle()
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

struct PharyngealSheet_Previews: PreviewProvider {
    static var previews: some View {
        PharyngealSheet()
    }
}
