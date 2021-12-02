//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 12/2/21.
//

import SwiftUI

struct DetailView: View {
    //  MARK:   - PROPERTY
    
    let note:Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HeaderView(title: "")
            
            // CONTENT
            ScrollView(.vertical){
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack{
                Image(systemName: "gear")
                    .imageScale(.large)
                Spacer()
                Text( "\(index) / \(count)" )
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            } //: HSTACK
            .foregroundColor(.secondary)
            
        } //: VSTACK
        .padding(3)
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleNote: Note = Note(id: UUID(), text: "Hello World")
    
    static var previews: some View {
        DetailView(note: sampleNote, count: 5, index: 1)
    }
}
