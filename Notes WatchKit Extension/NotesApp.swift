//
//  NotesApp.swift
//  Notes WatchKit Extension
//
//  Created by Daniel Beatty on 11/23/21.
//

import SwiftUI

@main
struct NotesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
