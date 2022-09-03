//
//  QuizView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-10-09.
//

import SwiftUI

class quizQuestions2: ObservableObject {
    
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

struct FeedingQuizView: View {
    
    @ObservedObject var choice1 = quizQuestions2()
    
    var alternatives = ["","a","b","c"]
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section {
                    Text("Questions")
                    
                    
                    Text("""
                1. What is NOT the responsability of care aids and RA who assist with feeding.
                a) Checking the care plan.
                b) Making sure resident is seated in an upright position.
                c) Recommending a change in diet texture.
                """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student0){
                                //                        ForEach (0..<alternatives.count)
                                ForEach (0..<4){ index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                      2. Resident cough a lot right after swallowing a large  gulp of water. What is the most likely explanation.
                                      a) Aspiration.
                                      b) Cronich cough.
                                      c) Choking.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student1){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                      3. When preparing to feed a resident it is important to make sure.
                                      a) The meal is the correct diet texture and check for specific safe swallowing strategies.
                                      b) Resident has dentures, hearing aids, glasses on if needed.
                                      c) all of the above.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student2){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                        4. What is the ideal position for the person assisting with feeding.
                                        a) Seated at eye level beside the resident.
                                        b) Standing beside the resident with good eye contact.
                                        c) Seated slightly behind the resident to avoid being coughed on.
                                        """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student3){
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
                                      5. What should you do if resident starts gasping and has difficulty breathing when you are assisting with feeding.
                                      
                                      a) Stop feeding and call a Nurse.
                                      b) Stop feeding and rubbing the back.
                                      c) Add some thickener to fluids for extra safety.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student4){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                      6. How to make a feeding experience more pleasant.
                                      
                                      a) Mix all of the foods together, so the flavours blend.
                                      b) Take an interest in the resident asking questions about them.
                                      c) Make jokes about taste of the food
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student5){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    
                    Text("""
                                      7. What is the MOST important action to take before assisting in feeding.
                                      
                                      a) Ensure resident is wearing dentures.
                                      b) Ensure resident is fully upright.
                                      c) Ensure that the resident is fully alert before feeding
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student6){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                      8. Which is a proper position for resident when is feeding.
                                      
                                      a) Seating upright with 90 degrees of flexion on hips and knees.
                                      b) Sitting with head slightly flexed and chin down which reduces the risk of choking.
                                      c) Sitting upright with pillows to prevent leaning to the sides.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student7){
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
                                      9. What is MOST important action to take after feeding resident.
                                      a) check the resident’s mouth for any food debris to prevent aspiration
                                      b) Ensure resident remain sitting in an upright position for at least 20-30 minutes.
                                      c) Remove the utensils, apron and serviettes.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student8){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                      10. What is a safe action to take  when assisting during feeding
                                      
                                      a) Large portions at the time before resident become tired to ensure adequate amount of intake.
                                      b) During the feeding process, don’t give too much food or give too fast at one time.
                                      c) Encourage resident to maintain mouth aperture.
                                      """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice1.student9){
                                //                                  ForEach (0..<alternatives.count)
                                ForEach (0..<4){
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    
                    
                } //section two
                
                NavigationLink(destination: FeedingResultsView(choice1: choice1)) {
                    HStack {
                        Image(systemName: "cup.and.saucer")
                        Text("Feeding quiz answers")}}
                
                Section(header: Text("To Clear Data") .fontWeight(.heavy)) {
                    Button(action: {
                        clearAll()
                    }, label: {
                        HStack {
                            Image(systemName: "slider.horizontal.below.square.filled.and.square")
                            Text("Press Here").foregroundColor(.primary)}
                    })
                }
            }
            .multilineTextAlignment(.leading)
            
            
            
            .navigationBarTitle("Feeding Quiz", displayMode: .inline)
            .font(.system(size: 14))
            
            
            
            
            
        }// Navigation View bracket
    }
    func clearAll() {
        
        choice1.student0 = 0
        choice1.student1 = 0
        choice1.student2 = 0
        choice1.student3 = 0
        choice1.student4 = 0
        choice1.student5 = 0
        choice1.student6 = 0
        choice1.student7 = 0
        choice1.student8 = 0
        choice1.student9 = 0    }
    
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        FeedingQuizView()
    }
}
