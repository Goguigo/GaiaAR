//
//  NewHomeView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 21/07/22.
//

import SwiftUI

struct NewHomeView: View {
    
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Coleções")) {
                        NavigationLink(destination: Novos()) {
                            Label("Novos", systemImage: "sparkles")
                        }
                        NavigationLink(destination: Tudo()) {
                            Label("Tudo", systemImage: "tray.2.fill")
                        }
                    }
                    Section(header: Text("Categorias")) {
                        NavigationLink(destination: Educação()) {
                            Label("Educação", systemImage: "graduationcap.fill")
                        }
                        NavigationLink(destination: Jogos()) {
                            Label("Jogos", systemImage: "gamecontroller.fill")
                        }
                        NavigationLink(destination: Ciencia()) {
                            Label("Ciências", systemImage: "globe.americas.fill")
                        }
                    }
                    Section(header: Text("Apps")) {
                        NavigationLink(destination: Aplicativos()) {
                            Label("Criatividade", systemImage: "paintbrush.fill")
                        }
                    }
                    Section(header: Text("Outros")) {
                        NavigationLink(destination: DocumentationView()) {
                            Label("Documentação", systemImage: "book.fill")
                        }
                    }
                }
            }
            .navigationTitle("GaiaAR")
            Tudo()
        }
    }
}


struct NewHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NewHomeView()
            .environmentObject(Potato())
    }
}
