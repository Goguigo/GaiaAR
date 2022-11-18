//
//  AvatarHomeView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 31/10/22.
//

import SwiftUI

struct AvatarHomeView: View {
    var body: some View {
        TabView {
            AvatarView()
                .tabItem {
                    Label("Avatar", systemImage: "person.fill")
                }
            ActionView()
                .tabItem {
                    Label("Ações", systemImage: "house.fill")
                }
        }
    }
}

struct AvatarHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHomeView()
    }
}
