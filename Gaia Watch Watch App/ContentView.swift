//
//  ContentView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var status: CloudKitUserBootcampViewModel
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    var body: some View {
        NavigationView {
            HomeView()
                .environmentObject(CloudKitUserBootcampViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
