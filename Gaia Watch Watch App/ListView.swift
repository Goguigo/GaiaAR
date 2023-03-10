//
//  ListView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 16/10/22.
//

import SwiftUI

struct ListView: View {
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Label("Recentes", systemImage: "clock.arrow.circlepath")
                    .foregroundColor(.blue)
                List {
                    ForEach(vm.items, id: \.self) { fruit in
                        
                        Text(fruit.name)

                    }
                    Button {
                        vm.fetchItems()
                    } label: {
                        Label("Atualizar", systemImage: "cloud.fill")
                    }
                }
                .navigationTitle("Textos")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
