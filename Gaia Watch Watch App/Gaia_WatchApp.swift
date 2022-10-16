//
//  Gaia_WatchApp.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 16/10/22.
//

import SwiftUI

@main
struct Gaia_Watch_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CloudKitUserBootcampViewModel())
        }
    }
}
