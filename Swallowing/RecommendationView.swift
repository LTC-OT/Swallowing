//
//  RecommendationView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-06-23.
//

import SwiftUI

struct RecommendationView: View {
    
    @ObservedObject  var clients = EnterData()
    
    var body: some View {
        
    ScrollView{
        Group {
        VStack (spacing: 4) {
       
        Text("Recomendations for Oralmotor deficits")
            .padding(.vertical, 20)
                .font(.headline)
        
        
        ScrollView  {
        
            
                VStack (spacing: 10){
                    
                    OralView(clients: clients)
                        
                    .multilineTextAlignment(.leading)
                    .padding()
                }
                  
                
            
                
        }
        
        .frame(width: 370, height: 500, alignment: .leading)
        .border(Color.black, width: 1)
            Spacer(minLength: 30)
            
        }
       
        Divider()
            
        VStack {
            Text("Recomendations for Pharyngeal deficits")
                .font(.headline)
        ScrollView  {
                VStack {

                        PharynView(clients: clients)
                            .multilineTextAlignment(.leading)
                    
                    }
                .multilineTextAlignment(.leading)
                
                            
                        }
        .frame(width: 370, height: 500, alignment: .leading)
        .border(Color.black, width: 1)
            
            
        
        
                    }
           
           Divider ()
           
           VStack {
               ScrollView  {
                   VStack {
                       
                       StudentView(clients: clients)
                       
                   }
                       .multilineTextAlignment(.leading)
                       
                                   
                               }
               .frame(width: 370, height: 500, alignment: .leading)
           .border(Color.black, width: 1)
                    }
       }
                }
            
            }
            
        }
    

struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView()
    }
}
