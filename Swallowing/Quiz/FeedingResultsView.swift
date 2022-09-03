//
//  FeedingResultsView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-10-12.
//

import SwiftUI

struct FeedingResultsView: View {
    
    @ObservedObject var choice1 = quizQuestions2()
    
    @State var correct: Int = 0
    @State var incorrect: Int = 0
    @State var correctPercentage: Int = 0
    @State var incorrectPercentage: Int = 0
    
    @State var totalPercentage: Double = 0.0
    
    @State var count : Int = 0
    var body: some View {
        NavigationView {
            
            Form {
                
                Section(header: Text("Feeding Results")) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Question 1:")
                            Text(questionCero())
                            
                        }
                        HStack {
                            Text("Question 2:")
                            Text(questionOne())
                        }
                        
                        HStack {
                            Text("Question 3:")
                            Text(questionTwo())
                        }
                        
                        HStack {
                            Text("Question 4:")
                            Text(questionThree())
                        }
                        
                        HStack {
                            Text("Question 5:")
                            Text(questionFour())
                        }
                        
                        HStack {
                            Text("Question 6:")
                            Text(questionFive())
                        }
                        
                        HStack {
                            Text("Question 7:")
                            Text(questionSix())
                        }
                        
                        HStack {
                            Text("Question 8:")
                            Text(questionSeven())
                        }
                        
                        HStack {
                            Text("Question 9:")
                            Text(questionEight())
                        }
                        HStack {
                            Text("Question 10:")
                            Text(questionNine())
                        }
                    }
                    .frameStyle()
                    
                }
                
                Section(header: Text("Percentage of correct answers")) {
                    
                    VStack {
                        Section {
                            let totalPercentage = (questionCount() * 10 )
                            Text("\(totalPercentage, specifier: "%.0f") %")
                        }
                        Spacer()
                        Divider()
                        
                        Section {
                            Text(studentReward())
                            
                        }
                    }
                    .frameStyle()
                }
            }
            .navigationTitle("Feeding Results")
        }
        
    }
    
    
    
    
    
    
    func studentReward() -> String {
        var student = ""
        if questionCount() == 10 {student = "Good Job!"}
        else {student =  "You can do better, try again!"}
        return  (student)
    }
    
    
    func questionCount() -> Double {
        
        var count = 0.0
        if choice1.student0 == 3 { count += 1}
        if choice1.student1 == 3 { count += 1}
        if choice1.student2 == 3 { count += 1}
        if choice1.student3 == 1 { count += 1}
        if choice1.student4 == 1 { count += 1}
        if choice1.student5 == 2 { count += 1}
        if choice1.student6 == 3 { count += 1}
        if choice1.student7 == 2 { count += 1}
        if choice1.student8 == 1 { count += 1}
        if choice1.student9 == 2 { count += 1}
        return (count)
        
    }
    
    
    func questionCero() -> String {
        var  optionCero = ""
        if choice1.student0 == 3 {
            optionCero = " Correct"}
        else if choice1.student0 == 2 || choice1.student0 == 1 {optionCero = "Incorrect"}
        return (optionCero)
    }
    
    func questionOne() -> String {
        var  optionOne = ""
        if choice1.student1 == 3 {optionOne = " Correct"}
        else if choice1.student1 == 2 || choice1.student1 == 1 {optionOne = "Incorrect"}
        return (optionOne)
    }
    
    
    func questionTwo() -> String {
        var  optionTwo = ""
        if choice1.student2 == 3 {optionTwo = " Correct"}
        else if choice1.student2 == 2 || choice1.student2 == 1 {optionTwo = "Incorrect"}
        return (optionTwo)
    }
    
    func questionThree() -> String {
        var  optionThree = ""
        if choice1.student3 == 1 {optionThree = " Correct"}
        else if choice1.student3 == 2 || choice1.student3 == 3 {optionThree = "Incorrect"}
        return (optionThree)
    }
    
    func questionFour() -> String {
        var  optionFour = ""
        if choice1.student4 == 1 {optionFour = " Correct"}
        else if choice1.student4 == 2 || choice1.student4 == 3 {optionFour = "Incorrect"}
        return (optionFour)
    }
    
    func questionFive() -> String {
        var  optionFive = ""
        if choice1.student5 == 2 {optionFive = " Correct"}
        else if choice1.student5 == 3 || choice1.student5 == 1 {optionFive = "Incorrect"}
        return (optionFive)
    }
    
    func questionSix() -> String {
        var  optionSix = ""
        if choice1.student6 == 3 {optionSix = " Correct"}
        else if choice1.student6 == 2 || choice1.student6 == 1 {optionSix = "Incorrect"}
        return (optionSix)
    }
    
    func questionSeven() -> String {
        var  optionSeven = ""
        if choice1.student7 == 2 {optionSeven = " Correct"}
        else if choice1.student7 == 3 || choice1.student7 == 1 {optionSeven = "Incorrect"}
        return (optionSeven)
    }
    
    func questionEight() -> String {
        var  optionEight = ""
        if choice1.student8 == 1 {optionEight = " Correct"}
        else if choice1.student8 == 3 || choice1.student8 == 2 {optionEight = "Incorrect"}
        return (optionEight)
    }
    
    func questionNine() -> String {
        var  optionNine = ""
        if choice1.student9 == 2 {optionNine = " Correct"}
        else if choice1.student9 == 2 || choice1.student9 == 3 {optionNine = "Incorrect"}
        return (optionNine)
    }

}


struct FeedingResultsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedingResultsView()
    }
}
