//
//  SignsView.swift
//  Swallowing
//
//  Created by James on 2021-01-14.
//

import SwiftUI

struct SignsView: View {
    
    @State var signs: [signs] = signsData
    let sortedArray = signsData.sorted(by: { $0.problem < $1.effect })
    @State private var searchText  =  ""
    @State var oral = signsData
    
    var body: some View {
        
        NavigationView  {
            List {
                ForEach(signs) { item in
                    
                    NavigationLink(
                        destination: SignsDetailView(signs: item)) {
                            SignsRowView(signs: item)
                            
                        }
                }
            }
            .navigationBarTitle("Oral Phase Signs" , displayMode: .inline)
            .font(.title)
        }//Navigation
        .font(.subheadline)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic)) {
        }
        .onChange(of: searchText) { searchText in
            if !searchText.isEmpty {
                signs = oral.filter {$0.problem.contains(searchText)}
            } else {
                signs = oral
            }
        }
    }
}


struct SignsView_Previews: PreviewProvider {
    static var previews: some View {
        SignsView(signs: signsData.sorted(by: { $0.problem < $1.effect }))
            .previewDevice("iPhone 11")
    }
}
