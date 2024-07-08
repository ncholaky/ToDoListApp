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
    //this value will come from the ToDoList
    var passedValue: String
    
    var body: some View {
        List {
            TextField("Enter To Do here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
            
            Toggle("Set Reminder", isOn: $reminderIsOn )
        }
        .listStyle(.plain)
    }
}


#Preview {
    DetailView(passedValue: "Item1")
}
