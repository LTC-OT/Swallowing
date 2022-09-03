//
//  StudentView.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2021-10-11.
//

import SwiftUI


struct StudentView: View {
    @ObservedObject  var clients = EnterData()
    
    var body: some View {
        
       
        VStack(alignment: .leading,spacing: 10) {
          
           
            Text("Fluids: \(clients.studentRec1)")
            Text("Food: \(clients.studentRec2)")
            Text("Based on: \(clients.studentRec3)")
           }
        .frameStyle()
        
      
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView()
            .previewLayout(.sizeThatFits)
    }
}
