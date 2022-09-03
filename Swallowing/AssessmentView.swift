//
//  AssessmentView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-06-22.
//

import SwiftUI

class  EnterData: ObservableObject {
    @Published var lipSeal: Int = 0
    @Published var antSpillage: Int = 0
    @Published var prologChewTime: Int = 0
    @Published var decreasedRotatoryMov: Int = 0
    @Published var residuesOralCavity: Int =  0
    @Published var mouthAperture: Int = 0
    @Published var delaySwallow: Int = 0
    @Published var hyoidElevation: Int = 0
    @Published var effortfullSwallow: Int = 0
    @Published var coughingWithFood: Int = 0
    @Published var coughingWithFluid: Int = 0
    @Published var coughingWithMixedTexture : Int = 0
    @Published var decreasedVoiceQuality: Int = 0
    @Published var dentitionT: Int = 0
    
    @Published var studentRec1: String = ""
    @Published var studentRec2: String = ""
    @Published var studentRec3: String = ""
    
    @Published var currentDiet: String = ""
    
}

struct AssessmentView: View {
    
    @ObservedObject  var clients = EnterData()
    
    var dentitionTA = ["Natural", "Full","Partial", "No Dentures"]
    var lipSealA = ["Intact", "Mild Impaired", "Severe Impaired"]
    var antSpillageA = ["No", "Mild Impaired", "Severe Impaired"]
    var prologChewTimeA = ["No", "Mild Presence", "Severe Presence"]
    var decreasedRotatoryMovA = ["No", "Mild Presence", "Severe Presence"]
    var residuesOralCavityA = ["No", "Mild Presence", "Severe Presence"]
    var mouthApertureA = ["Intact", "Mild Impaired", "Severe Impaired"]
    var delaySwallowA = ["No", "Yes"]
    var hyoidElevationA = ["Maximal", "Incomplete"]
    var effortfullSwallowA = ["No", "Mild Presence", "Severe Presence"]
    var coughingWithFoodA = ["No", "Ocassional", "Frequent", "Immediate"]
    var coughingWithFluidA = ["No", "Ocassional", "Frequent", "Immediate"]
    var coughingWithMixedTextureA = ["No","Ocassional", "Frequent", "Immediate"]
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            NavigationView {
                Form {
                    
                    Section(header: Text("Client's diet") .fontWeight(.heavy)) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Record diet here")
                            
                            HStack {
                                
                                TextField("Fill section with diet details" , text: $clients.currentDiet )
                            }
                        }
                    }
                    
                    Section(header: Text("Oral Stage Status").fontWeight(.heavy)) {
                        VStack (alignment: .leading) {
                            
                            Section(header: Text("Dentition")) {
                                VStack {
                                    HStack {
                                        Picker("Dentition", selection: $clients.dentitionT){
                                            ForEach(0..<dentitionTA.count, id: \.self){
                                                Text(self.dentitionTA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Mouth Aperture")) {
                                VStack {
                                    HStack {
                                        Picker("Mouth Aperture", selection: $clients.mouthAperture){
                                            ForEach(0..<mouthApertureA.count, id: \.self){
                                                Text(self.mouthApertureA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            
                            Section(header: Text("Lip Seal")) {
                                VStack {
                                    HStack {
                                        Picker("Lip Seal", selection: $clients.lipSeal){
                                            ForEach(0..<lipSealA.count, id: \.self) {
                                                Text(self.lipSealA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            
                            Section(header: Text("Anterior Spillage")) {
                                VStack {
                                    HStack {
                                        Picker("Anteriror Spillage", selection: $clients.antSpillage){
                                            ForEach(0..<antSpillageA.count, id: \.self){
                                                Text(self.antSpillageA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Prolonged Chewing Time")) {
                                VStack {
                                    HStack {
                                        Picker("Lip Seal", selection: $clients.prologChewTime){
                                            ForEach(0..<prologChewTimeA.count, id: \.self){
                                                Text(self.prologChewTimeA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Decreased Rotatory Movements")) {
                                VStack {
                                    HStack {
                                        Picker("Decreased Rotatory Movements", selection: $clients.decreasedRotatoryMov){
                                            ForEach(0..<decreasedRotatoryMovA.count, id: \.self){
                                                Text(self.decreasedRotatoryMovA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Residues in Oral Cavity")) {
                                VStack {
                                    HStack {
                                        Picker("Residues in Oral Cavity", selection: $clients.residuesOralCavity){
                                            ForEach(0..<residuesOralCavityA.count, id: \.self){
                                                Text(self.residuesOralCavityA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    Section(header: Text("Pharyngeal Stage Status").fontWeight(.heavy)) {
                        VStack (alignment: .leading) {
                            Section(header: Text("Delayed Swallowing")) {
                                VStack {
                                    HStack {
                                        Picker("Deleyed Swallowing", selection: $clients.delaySwallow){
                                            ForEach(0..<delaySwallowA.count, id: \.self){
                                                Text(self.delaySwallowA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Hyoid Elevation")) {
                                VStack {
                                    HStack {
                                        Picker("Hyoid Elevation", selection: $clients.hyoidElevation){
                                            ForEach(0..<hyoidElevationA.count, id: \.self){
                                                Text(self.hyoidElevationA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Effortful Swallow")) {
                                VStack {
                                    HStack {
                                        Picker("Effortfull Swallow", selection: $clients.effortfullSwallow){
                                            ForEach(0..<effortfullSwallowA.count, id: \.self){
                                                Text(self.effortfullSwallowA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Coughing with food")) {
                                VStack {
                                    HStack {
                                        Picker("Coughing with food", selection: $clients.coughingWithFood){
                                            ForEach(0..<coughingWithFoodA.count, id: \.self){
                                                Text(self.coughingWithFoodA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Coughing with fluid")) {
                                VStack {
                                    HStack {
                                        Picker("Coughing with fluid", selection: $clients.coughingWithFluid){
                                            ForEach(0..<coughingWithFluidA.count, id: \.self){
                                                Text(self.coughingWithFluidA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                            Section(header: Text("Coughing with mixed texture")) {
                                VStack {
                                    HStack {
                                        Picker("Coughing with mixed texture", selection: $clients.coughingWithMixedTexture){
                                            ForEach(0..<coughingWithMixedTextureA.count, id: \.self){
                                                Text(self.coughingWithMixedTextureA[$0]).tag($0)}
                                        }.pickerStyle(SegmentedPickerStyle())
                                    }
                                }
                            }
                        }
                        
                    }//Section Pharyngeal
                    
                    Section(header: Text("Student Section") .fontWeight(.heavy)) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Write your recommendations ")
                            
                            HStack {
                                
                                TextField("Fluids consistency" , text: $clients.studentRec1 )
                            }
                            
                            HStack {
                                
                                TextField("Food texture" , text: $clients.studentRec2 )
                            }
                            HStack {
                                
                                TextField("Based on" , text: $clients.studentRec3 )
                            }
                        }
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    }
                    Section(header: Text("Diet Recommended")
                        .fontWeight(.heavy)){
                            
                            NavigationLink(destination: OralrecView(clients: clients)) {
                                
                                HStack {
                                    Image(systemName: "fork.knife.circle")
                                    Text("Press to see diet")
                                }
                            }
                        }
                    
                    Section(header: Text("To Clear Data") .fontWeight(.heavy)) {
                        Button(action: {
                            clearAll()
                        }, label: {
                            HStack {
                                Image(systemName: "slider.horizontal.below.square.filled.and.square")
                                Text("Press Here").foregroundColor(.primary)}
                        })
                    }
                    
                }.navigationBarTitle("Swallowing Assessment", displayMode: .inline)
            }//Navigation View
        }
    }
    
    
    func clearAll() {
        clients.lipSeal = 0
        clients.antSpillage = 0
        clients.dentitionT = 0
        clients.mouthAperture = 0
        clients.prologChewTime = 0
        clients.decreasedRotatoryMov = 0
        clients.residuesOralCavity = 0
        clients.delaySwallow = 0
        clients.hyoidElevation = 0
        clients.effortfullSwallow = 0
        clients.coughingWithFood = 0
        clients.coughingWithFluid = 0
        clients.coughingWithMixedTexture = 0
        clients.studentRec1 = ""
        clients.studentRec2 = ""
        clients.studentRec3 = ""
        clients.currentDiet = ""
    }
    
}


struct AssessmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentView()
        
    }
}
