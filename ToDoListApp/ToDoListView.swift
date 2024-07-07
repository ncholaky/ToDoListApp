//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Nicoletta Cholaky on 07/07/24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        
        NavigationStack{
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
            //navigationTitle must be added inside a NavigationStack, NOT BELOW IT
            .navigationTitle("School Year")
            //This is the default, just to know it can be changed
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .listStyle(.plain
            )
            }
        }
    }


#Preview {
    ToDoListView()
}

