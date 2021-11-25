//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 11/23/21.
//

import SwiftUI

struct ContentView: View {
    //  MARK:-  Property
    
    @State private var notes: [Note] = [Note]()
        
    @State private var text: String = ""
    
    // MARK:-   Function
        
    //  MARK:   - BODY
    
    var body: some View {
        
        
        VStack {
            Text("Hello, World!")
                .padding()
        } //: VSTACK
        .navigationTitle("Notes")
    }
}

//  MARK:   - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
