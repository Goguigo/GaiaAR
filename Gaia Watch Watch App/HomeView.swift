//
//  HomeView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 30/10/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var storeManager = StoreManager()
    @State var isIAPVisible = false
    let productIDs = [
   "com.gaiaar.52",
   "com.gaiaar.102",
   "com.gaiaar.252",
   "com.gaiaar.502",
   "com.gaiaar.1002"
    ]
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
                    NavigationLink(destination: StatusView()
                        .environmentObject(CloudKitUserBootcampViewModel()
                                          )
                    ) {
                        HStack {
                            Label("iCloud", systemImage: "cloud.fill")
                                .foregroundColor(.blue)
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
        HomeView(storeManager: StoreManager())
    }
}
