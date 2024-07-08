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
    //this value will come from the ToDoList
    var passedValue: String
    
    var body: some View {
        List {
            TextField("Enter To Do here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                .listRowSeparator(.hidden)
            
            Toggle("Set Reminder", isOn: $reminderIsOn )
                .padding(.top)
            DatePicker("Date", selection: $dueDate )
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}


#Preview {
    DetailView(passedValue: "Item1")
}
