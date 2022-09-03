//
//  SwallowingDisorderSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-06-09.
//

import SwiftUI

struct SwallowingDisorderSheet: View {
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
                        Text("General Information")
                            .font(.headline)
                            .padding()
                        
                        Text("""
                Swallowing disorders are common, especially in the elderly, and may cause dehydration, weight loss, aspiration pneumonia and airway obstruction. These disorders may affect the oral preparatory, oral propulsive, pharyngeal and/or esophageal phases of swallowing.
                
                Impaired swallowing, or dysphagia, may occur because of a wide variety of structural or functional conditions, including stroke, cancer, neurological disease and gastroesophageal reflux disease.
                
                A thorough history and a careful physical examination are important in the diagnosis and treatment of swallowing disorders. The physical examination should include the neck, mouth, oropharynx and larynx, and a neurologic examination should also be performed.
                
                Supplemental studies are usually required. A videofluorographic swallowing study is particularly useful for identifying the pathophysiology of a swallowing disorder and for empirically testing therapeutic and compensatory techniques. Manometry and endoscopy may also be necessary.
                
                Disorders of oral and pharyngeal swallowing are usually amenable to rehabilitative measures, which may include dietary modification and training in specific swallowing techniques.
                
                Surgery is rarely indicated. In patients with severe disorders, it may be necessary to bypass the oral cavity and pharynx entirely and provide enteral or parenteral nutrition.
                
                Impaired swallowing, or dysphagia, can cause significant morbidity and mortality. Swallowing disorders are especially common in the elderly.
                
                The consequences of dysphagia include dehydration, starvation, aspiration pneumonia and airway obstruction.
                
                Dysphagia may result from or complicate disorders such as stroke, Parkinson's disease and cancer.
                
                Indeed, aspiration pneumonia is a common cause of death in hospitalized patients.
""")
                        .frameStyle()
                        
                    }
                    
                    
                    VStack {
                        Text("Anatomy of the structures of swallowing")
                            .font(.headline)
                        
                        Image("Anatomy2")
                            .resizable()
                            .scaledToFit()
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

struct SwallowingDisorderSheet_Previews: PreviewProvider {
    static var previews: some View {
        SwallowingDisorderSheet()
    }
}
