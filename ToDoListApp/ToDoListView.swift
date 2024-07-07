//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Nicoletta Cholaky on 07/07/24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        
        NavigationStack {
            List {
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Winter")
                }

                
                Text("Summer")
                Text("Spring")
                Text("Fall")
            }
        }
       
    }
}

#Preview {
    ToDoListView()
}

