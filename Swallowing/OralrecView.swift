//
//  OralrecView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-08-19.
//

import SwiftUI

struct OralrecView: View {
    
    @ObservedObject  var clients = EnterData()
    
    var body: some View {
        
        Group {
            ScrollView(showsIndicators: false) {
                
                
                ScrollView {
                    
                    VStack (alignment: .leading) {
                        Text("Current Diet:")
                        Text("\(clients.currentDiet)")
                    }
                    .oralStyle()
                    
                    
                    Section (header: Text("Student's Recommendations")
                        .oralStyle()
                      

                    ) {
                            
                            StudentView(clients: clients)
                        }
                    
                    VStack {
                        
                        Text("Recomendations based on")
                            .font(.title2)
                            .padding()
                            .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .border(.gray)
                            .padding()
                        
                    }
                    
                    Section (header: Text("Oral Phase Deficits")
                        .oralStyle()
                    ) {
                      
                            
                            VStack (alignment: .leading,spacing: 10) {
                                Text(swallowRec())
                                Text(swallowRec1())
                                Text(swallowRec2())
                                Text(swallowRec3())

                            }
                            .frameStyle()
                        }

                        .padding(.top)
                    
                    Section (header: Text("Oral Motor Deficits")
                        .oralStyle()
                    ) {
                            VStack (alignment: .leading, spacing: 10){
                                Text(swallowRec7())
                                Text(swallowRec8())
                                Text(swallowRec9())
                                Text(swallowRec10())
                                Text(swallowRec11())
                                Text(swallowRec12())
                            }
                            .frameStyle()
                        }
//                    .padding()
                        .padding(.top)
                    
                    Section (header: Text("Pharyngeal Phase Deficits")
                        .oralStyle()
                    ) {
                            VStack(alignment: .leading, spacing: 10){
                                Text(swallowRec4())
                                Text(swallowRec5())
                                Text(swallowRec6())
                                
                            }
                            .frameStyle()
                        }

                        .padding(.top)
                }
            }
        }
        .padding()
    }
    
    func swallowRec7() -> String {
        var recom7 = ""
        if clients.dentitionT == 1 {
            recom7 = oralRec[16]}
        else if clients.dentitionT == 2 {
            recom7 = oralRec[17]}
        else if clients.dentitionT == 3 {
            recom7 = oralRec[18]}
        else if clients.dentitionT == 4 {
            recom7 = oralRec[19]}
        else if clients.dentitionT == 0 {
            recom7 = ""
        }
        return (recom7)
    }
    func swallowRec8() -> String {
        var recom8 = ""
        if clients.lipSeal == 1 || clients.lipSeal == 2  {
            recom8 = oralRec[19]}
        else if clients.lipSeal == 0 {
            recom8 = ""
        }
        return (recom8)
    }
    func swallowRec9() -> String {
        var recom9 = ""
        if clients.mouthAperture == 1 || clients.mouthAperture == 2 {
            recom9 = oralRec[20]}
        else if clients.mouthAperture == 0 {
            recom9 = ""
        }
        return (recom9)
    }
    
    func swallowRec() -> String {
        var recom = ""
        if clients.antSpillage == 1 {
            recom = oralRec[0]}
        else if clients.antSpillage == 2 {
            recom = oralRec[1]}
        else if clients.antSpillage == 0 {
            recom = ""
        }
        return (recom)
    }
    
    func swallowRec1() -> String {
        var recom1 = ""
        if clients.decreasedRotatoryMov == 1 {
            recom1 = oralRec[2]}
        else if clients.decreasedRotatoryMov == 2 {
            recom1 = oralRec[3]}
        else if clients.decreasedRotatoryMov == 0 {
            recom1 = ""
        }
        return (recom1)
    }
    
    func swallowRec2() -> String {
        var recom2 = ""
        if clients.prologChewTime == 1 {
            recom2 = oralRec[4]}
        else if clients.prologChewTime == 2 {
            recom2 = oralRec[5]}
        else if clients.prologChewTime == 0 {
            recom2 = ""
        }
        return (recom2)
    }
    func swallowRec3() -> String {
        var recom3 = ""
        if clients.residuesOralCavity == 1 {
            recom3 = oralRec[6]}
        else if clients.residuesOralCavity == 2 {
            recom3 = oralRec[7]}
        else if clients.residuesOralCavity == 0 {
            recom3 = ""
        }
        return (recom3)
    }
    func swallowRec4() -> String {
        var recom4 = ""
        if clients.coughingWithFood == 1 {
            recom4 = oralRec[8]}
        else if clients.coughingWithFood == 2 {
            recom4 = oralRec[9]}
        else if clients.coughingWithFood == 3 {
            recom4 = oralRec[10]}
        else if clients.coughingWithFood == 0 {
            recom4 = ""
        }
        return (recom4)
    }
    func swallowRec5() -> String {
        var recom5 = ""
        if clients.coughingWithFluid == 1 {
            recom5 = oralRec[11]}
        else if clients.coughingWithFluid == 2 || clients.coughingWithFluid == 3 {recom5 = oralRec[12]}
        else if clients.coughingWithFluid == 0 {
            recom5 = ""
        }
        return (recom5)
    }
    
    func swallowRec6() -> String {
        var recom6 = ""
        if clients.coughingWithMixedTexture == 1 {
            recom6 = oralRec[13]}
        else if clients.coughingWithMixedTexture == 2 {
            recom6 = oralRec[14]}
        else if clients.coughingWithMixedTexture == 3 {
            recom6 = oralRec[15]}
        else if clients.coughingWithMixedTexture == 0 {
            recom6 = ""
        }
        return (recom6)
    }
    
    func swallowRec10() -> String {
        var recom10 = ""
        if clients.delaySwallow == 1 {
            recom10 = oralRec[21]}
        else if clients.delaySwallow == 0 {
            recom10 = ""
        }
        return (recom10)
    }
    
    func swallowRec11() -> String {
        var recom11 = ""
        if clients.hyoidElevation == 1 {
            recom11 = oralRec[22]}
        else if clients.hyoidElevation == 0 {
            recom11 = ""
        }
        return (recom11)
    }
    
    func swallowRec12() -> String {
        var recom12 = ""
        if clients.effortfullSwallow == 1  || clients.effortfullSwallow == 2 {
            recom12 = oralRec[23]}
        else if clients.effortfullSwallow == 0 {
            recom12 = ""
        }
        return (recom12)
    }
}

struct OralrecView_Previews: PreviewProvider {
    static var previews: some View {
        OralrecView()
        
    }
}
