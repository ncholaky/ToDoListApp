//
//  DetailView.swift
//  ToDoListApp
//
//  Created by Nicoletta Cholaky on 07/07/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var toDo = ""
    @State private var reminderIsOn = false
    //the Date type keeps track of day and time combined, we set it at one day from now (in seconds)
    @State private var dueDate = Date.now + (60*60*24)
    @State private var notes = ""
    @State private var isCompleted = false

    //this value will come from the ToDoList
    var passedValue: String
    
    var body: some View {
            List {
                TextField("Enter To Do here", text: $toDo)
                    .font(.title)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                    .listRowSeparator(.hidden)
                    .padding(.bottom)
                
                Toggle("Set Reminder", isOn: $reminderIsOn )
                    .padding(.top)
                DatePicker("Date", selection: $dueDate )
                    .listRowSeparator(.hidden)
                    .padding(.bottom)
                //Disable the datePicker if the set reminder is not set
                //pass in the opposite of what the toggle shows
                    .disabled(!reminderIsOn)
                
                Text("Notes")
                    .padding(.top)
                
                // The TextField will expand vertically as needed
                TextField("Notes", text: $notes, axis: .vertical )
                    .textFieldStyle(.roundedBorder)
                    .listRowSeparator(.hidden)
                
                Toggle("Completed", isOn: $isCompleted)
                    .padding(.top)
                    .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        //TODO: Add save code here
                    }
                }
            }
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }


#Preview {
    DetailView(passedValue: "Item1")
}
