//
//  OralSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-28.
//

import SwiftUI

struct OralSheet: View {
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
                        Text("Disorders in the Oral Phase")
                            .font(.headline)
                            .padding()
                        
                        Text("""
Disorders affecting the Oral Phase may result from:

Impaired control of the lips, tongue, jaw or soft palate, insufficient salivation, or from poor dentition and include difficulties with:

Containing a bolus in the oral cavity: may result in spillage out through the lips or premature spillage into the unprepared pharynnx with the airway open and unprotected.

Chewing solid food: may cause large chunks of food to enter the pharynx and risk getting tsuck or falling into the airway. (e.g. Choking)

Forming a moist and cohesive bolus: is necessary for successfully transporting the bolus into and through pharynx.

Clearing the residues from the oral cavity (e.g. Pocketing)
""")
                     .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Image ("Anatomy1")
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

struct OralSheet_Previews: PreviewProvider {
    static var previews: some View {
        OralSheet()
    }
}
