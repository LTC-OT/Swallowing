//
//  SwallowingAppView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SwallowingAppView: View {
    

    var body: some View {
        
        TabView {
            
            HomeView()
            .tabItem {
            Image(systemName: "filemenu.and.cursorarrow")
                   Text("Home")
                }
                .tag(0)
            
           AssessmentView()
            .tabItem {
            Image(systemName: "person.fill")
                   Text("Assessment")
                }
                .tag(1)
           
            
            SignsView(signs: signsData.sorted(by: { $0.problem < $1.effect }))
            .tabItem {
            Image(systemName: "doc.text")
                Text("Oral Signs")
                  
                }
                .tag(2)
            
            Signs2View(signs2: signsData2.sorted(by: { $0.problem < $1.effect }))
            .tabItem {
            Image(systemName: "doc.text")
                Text("Pharyngeal Signs")
                  
                }
                .tag(3)
            
            SwallowingDisordersView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Swallowing Disorders")
                 }
                 .tag(4)
            
            DietTextureView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Diets & Food")
                 }
                 .tag(5)
            
            SwallowingQuizView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Swallowing Quiz")
                 }
                 .tag(6)
            
            FeedingQuizView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Feeding Quiz")
                 }
                 .tag(7)
            
            
        }
        
    }
    
}


struct SwallowingAppView_Previews: PreviewProvider {
    static var previews: some View {
        SwallowingAppView()
                        .previewDevice("iPhone 13")

        
    }
}
