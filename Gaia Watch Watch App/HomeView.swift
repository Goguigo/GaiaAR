//
//  HomeView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 30/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: ListView()) {
                        HStack {
                            Label("Textos", systemImage: "bookmark.fill")
                                .foregroundColor(.mint)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination: AvatarHomeView()) {
                        HStack {
                            Label("Avatares", systemImage: "person.fill")
                                .foregroundColor(.pink)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination: ControlView()) {
                        HStack {
                            Label("Controles", systemImage: "dpad.fill")
                                .foregroundColor(.yellow)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination: StatusView()
                        .environmentObject(CloudKitUserBootcampViewModel())
                    ) {
                        HStack {
                            Label("iCloud", systemImage: "cloud.fill")
                                .foregroundColor(.blue)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination: DonationView()) {
                        HStack {
                            Label("Doações", systemImage: "dollarsign.square.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    }
                .navigationTitle("GaiaAR")
                .listStyle(.carousel)
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
