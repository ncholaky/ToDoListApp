//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Nicoletta Cholaky on 07/07/24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    var body: some View {
        var toDos = ["Learn Swift", "Build Apps", "Save the World", "Bring the Awesome", "Take a Vacation"]
        
        NavigationStack{
            List {
                ForEach(toDos, id:\.self){
                    toDo in
                    NavigationLink{
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
            }
            //navigationTitle must be added inside a NavigationStack, NOT BELOW IT
            .navigationTitle("To Do List")
            //This is the default, just to know it can be changed
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .sheet(isPresented: $sheetIsPresented) {NavigationStack {
                DetailView(passedValue: "")
            }
            }
        }
    }
}


#Preview {
    ToDoListView()
}

