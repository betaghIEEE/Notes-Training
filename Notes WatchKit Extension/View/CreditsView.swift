//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 12/2/21.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber : Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3){
            //  Profile Image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // Header
            
            HeaderView(title: "Credits")
            // CONTENT
            Text("Daniel Beatty")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }   //: VStack
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
