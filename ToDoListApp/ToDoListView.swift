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
                Section {
                    NavigationLink {
                        DetailView()
                    } label: {
                        Text("Winter")
                    }
                    Text("Summer")
                } header: {
                    Text("Breaks")
                }
                Section {
                    Text("Spring")
                    Text("Fall")
                } header: {
                    Text("Semesters")
                }
            
                }
            }
        }
    }


#Preview {
    ToDoListView()
}

