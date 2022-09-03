//
//  SwallowingQuizView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-10-12.
//

import SwiftUI
class quizQuestions: ObservableObject {
    
    @Published var student0 = 0
    @Published var student1 = 0
    @Published var student2 = 0
    @Published var student3 = 0
    @Published var student4 = 0
    @Published var student5 = 0
    @Published var student6 = 0
    @Published var student7 = 0
    @Published var student8 = 0
    @Published var student9 = 0
    
}


struct SwallowingQuizView: View {
    @ObservedObject var choice = quizQuestions()
    
      var alternatives = ["","a","b","c"]
      
      var body: some View {
          
    NavigationView {
              
        Form {
            Section {
                Text("Questions")
          
                  
                Text("""
                1. What is Dysphagia.
                a) Failure to swallow Fluids.
                b) Failure to swallow food.
                c) All of the above.
                """)
                  
            VStack {
                HStack {
                    Picker("Answer", selection: $choice.student0){
                        
//                        ForEach (0..<alternatives.count)
                        ForEach (0..<4)
                        { index in
                                      Text(self.alternatives[index]).tag(index)
                                                }
                                             }
                                         }
                                     }
                  
                  Text("""
                                      2. What are signs of dysphagia.
                                      a) Coughing, Pocketing food, prologed chewing.
                                      b) Choking with food or fluid.
                                      c) All of the above.
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student1){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                  
                  Text("""
                                      3. What are the complications of dysphagia.
                                      a) Aspiration pneumonia.
                                      b) Malnutrition.
                                      c) all of the above.
                                      """)
                      
                VStack {
                    HStack {
                              Picker("Answer", selection: $choice.student2){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                  
                  Text("""
                                        4. Which is a disorder of the oral phase.
                                        a) Poor bolus control.
                                        b) GERD.
                                        c) Delayed A-P propulsion.
                                        """)
                      
                VStack {
                    HStack {
                              Picker("Answer", selection: $choice.student3){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                  }// section one
                  
                Section {
                      Text("""
                                      5. Which is a disorder of the oral phase.

                                      a) Oral residues.
                                      b) Absent swallow.
                                      c) Reduced laryngeal elevation.
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student4){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                      
                      Text("""
                                      6. Which is a disorder of the pharyngeal phase.

                                      a) Reduced rotatory movements.
                                      b) Delayed swallow trigger.
                                      c) Prolonged/absent of mastication
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student5){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                      
                      
                      Text("""
                                      7. Which is a disorder of the pharyngeal phase.

                                      a) Poor lip closure.
                                      b) Decreased oral sensation
                                      c) Dysfunctional epiglottis
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student6){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                      
                      Text("""
                                      8. Which is a disorder of the esophageal phase.

                                      a) Constipation.
                                      b) GERD.
                                      c) Cervical osteophyte
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student7){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                  }
                  
                  Section {
                      
                      Text("""
                                      9. Pocketing is due to
                                      a) Reduced cheek tension, reduced oral sensation, decreased tongue movements and coordination
                                      b) Reduced coordination during preparation swallow
                                      c) Food remains on top of larynx
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student8){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                      
                      Text("""
                                      10. Decreased dentition may affect

                                      a) Triggering swallowing reflex
                                      b) The efficiency of the oral preparation phase
                                      c) Esophagus peristaltic movements
                                      """)
                      
                      VStack {
                          HStack {
                              Picker("Answer", selection: $choice.student9){
//                                  ForEach (0..<alternatives.count)
                                  ForEach (0..<4){
                                      index in
                                      Text(self.alternatives[index]).tag(index)
                                  }
                                             }
                                         }
                                     }
                      
                      
                      
                  } //section two
                  
                  NavigationLink(destination: SwallowingResultsView(choice: choice)) {
                      HStack {
                          Image(systemName: "takeoutbag.and.cup.and.straw")
                          Text("swallowing quiz answers")
                          
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
            
            
              }//form
              .multilineTextAlignment(.leading)
              .navigationBarTitle("Swallowing Quiz", displayMode: .inline)
              .font(.system(size: 14))
              //.foregroundColor(Color.black)
              
              
             
                  
              }// Navigation View bracket
          }
    func clearAll() {
        
        choice.student0 = 0
        choice.student1 = 0
        choice.student2 = 0
        choice.student3 = 0
        choice.student4 = 0
        choice.student5 = 0
        choice.student6 = 0
        choice.student7 = 0
        choice.student8 = 0
        choice.student9 = 0    }
    
}


struct SwallowingQuizView_Previews: PreviewProvider {
    static var previews: some View {
        SwallowingQuizView()
    }
}
