//
//  DetailView.swift
//  ToDoListApp
//
//  Created by Nicoletta Cholaky on 07/07/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            Text("You are a Swifty legend!")
                .font(.largeTitle)
            
            Spacer()
            Button("Get Back"){
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
      
    }
}


#Preview {
    DetailView()
}
