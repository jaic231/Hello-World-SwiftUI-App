//
//  ContentView.swift
//  Hello World
//
//  Created by Jai Chawla on 1/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    @State var notes: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your notes", text: $text)
                    .padding()
                
                Button(action: {
                    notes.append(text)
                }, label: {
                    Text("Add to notes")
                })
                    .padding()
                
                NavigationLink(destination: NotesView(notes: self.$notes),
                label: {
                    Text("Go to Notes")
                })
                    .padding()
            }
            .navigationTitle("My Notes App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
