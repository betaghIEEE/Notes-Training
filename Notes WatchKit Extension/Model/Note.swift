//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 11/24/21.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String 
}
