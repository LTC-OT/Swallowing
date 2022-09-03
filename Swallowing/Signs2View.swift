//
//  Signs2View.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct Signs2View: View {
    
    @State var signs2: [signs2] = signsData2
    let sortedArray = signsData2.sorted(by: { $0.problem < $1.effect })
    @State private var searchText  =  ""
    @State var oral1 = signsData2
    
    var body: some View {
        
        NavigationView  {
            List {
                ForEach(signs2) { item in
                    
                    NavigationLink(
                        destination: SignsDetail2View(signs2: item)) {
                            SignsRow2View(signs2: item)
                            
                    }
                }
            }
            
            .navigationBarTitle("Pharyngeal Phase Signs", displayMode: .inline)
            .font(.title)
            
        }//Navigation
        .font(.subheadline)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic)) {
            
        }
        .onChange(of: searchText) { searchText in
            if !searchText.isEmpty {
                signs2 = oral1.filter {$0.problem.contains(searchText)}
            } else {
                signs2 = oral1
            }
        }
    }
}

struct Signs2View_Previews: PreviewProvider {
    static var previews: some View {
        Signs2View(signs2: signsData2.sorted(by: { $0.problem < $1.effect }))
        
            .previewDevice("iPhone 11")
    }
}
