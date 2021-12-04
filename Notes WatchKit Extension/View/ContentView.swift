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
    
    
    @AppStorage("lineCount") var lineCount : Int = 1
    
    // MARK:-   Function
    
    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    
    func save() {
        //dump(notes)
        
        do{
            //  1.  Convert the notes array to data using JSONEncoder
            let data = try JSONEncoder().encode(notes)
            //  2.  Create a new URL to save the file using the getDocumentDirectory.
            
            let url = getDocumentDirectory().appendingPathComponent("notes")
                      
            
            //  3.  Write the data to the given URL
            try data.write(to: url)
            
        } catch {
            print("Saving data has failed!")
        }
         
    }
    
    func load() {
        DispatchQueue.main.async {
            
            do{
                //  1.  Get the notes URL path
                let url = getDocumentDirectory().appendingPathComponent("notes")
                
                //  2.  Create the new property for the data
                
                let data = try Data(contentsOf: url)
                
                
                //  3.  Decode the data
                
                try notes = JSONDecoder().decode([Note].self, from: data)
                
                
            } catch {
                // Do nothing?
                print("Did not load the file properly!")
            }
        }
    }
    
    func delete(offsets: IndexSet) {
        withAnimation{
            notes.remove(atOffsets: offsets)
            save()
        }
    }
    
    //  MARK:   - BODY
    
    var body: some View {
        
        
        VStack {
            HStack(alignment:/*@START_MENU_TOKEN@*/ .center /*@END_MENU_TOKEN@*/, spacing: 6) {
                TextField("Add New Note ", text: $text)
                
                Button {
                    // ACTION
                    // 1. Only run the button's action when the text field is not empty.
                    guard text.isEmpty == false else { return }
                            
                            
                    // 2.  Create a new note item and initialize it with the text value.
                    
                    let note = Note(id: UUID(), text: text)
                    
                    //  3.  Add the new note to the notes array with the append method.
                    notes.append(note)
                    
                    //  4.  Make the text field empty
                    text = ""
                    
                    //  5.  Save the notes (function)
                    save()
                    
                    
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
                
                
            }   //: HSTACK
            Spacer()
            
            if notes.count >= 1{
                List {
                    ForEach(0..<notes.count , id: \.self ) {i in
                        NavigationLink(destination: DetailView(note: notes[i], count: notes.count, index: i)) {
                            HStack {
                                Capsule()
                                    .frame(width: 4)
                                    .foregroundColor(.accentColor)
                                Text(notes[i].text)
                                    .lineLimit(lineCount)
                                    .padding(.leading, 5)
                                
                            }
                        } //: HSTACK
                    } //: Loop
                    .onDelete(perform: delete)
                    
                }
            } else {
                Spacer()
                Image(systemName: "note.text")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .opacity(0.25)
                    .padding(25)
                Spacer()
                
            } //: List
        } //: VSTACK
        .navigationTitle("Notes")
        .onAppear(perform: {
            load()
        })
    }
}

//  MARK:   - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
