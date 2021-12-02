//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 12/2/21.
//

import SwiftUI

struct SettingsView: View {
    //  MARK:   - PROPERTY
    
    @AppStorage("lineCount") var lineCount : Int = 1
    
    
    //  MARK:   - BODY
    
    var body: some View {
        VStack(spacing: 8){
            // HEADER
            HeaderView(title: "Settings")
            // ACTUAL LINE COUNT
            
            // Slider
        } //: VSTACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
