//
//  NotesView.swift
//  Hello World
//
//  Created by Jai Chawla on 1/27/22.
//

import SwiftUI

struct NotesView: View {
    @Binding var notes: [String]
    
    var body: some View {
        List {
            ForEach(notes, id: \.self) { note in
                Text(note)
                    .foregroundColor(.red)
            }
        }
    }
}
//
//struct NotesView_Previews: PreviewProvider {
//    static var previews: some View {
//        NotesView(notes: .constant(["My note"]))
//    }
//}
