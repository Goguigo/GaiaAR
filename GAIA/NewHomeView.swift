//
//  NewHomeView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 21/07/22.
//

import SwiftUI

struct NewHomeView: View {
    @StateObject var storeManager = StoreManager()
    @StateObject private var vm = CloudKitCrudBootcampViewModel()
    @EnvironmentObject var list: Potato
    @State var isIAPVisible = false
    let productIDs = [
   "com.gaiaar.52",
   "com.gaiaar.102",
   "com.gaiaar.252",
   "com.gaiaar.502",
   "com.gaiaar.1002"
    ]
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
#if !targetEnvironment(macCatalyst)
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Coleções")) {
                        NavigationLink(destination:
                                        Novos()
                        ) {
                            Label("Novos", systemImage: "sparkles")
                        }
                        NavigationLink(destination: Tudo()
                        ) {
                            Label("Tudo", systemImage: "tray.2.fill")
                        }
                    }
                    Section(header: Text("AR")) {
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
                            NavigationLink(destination: DonationsView(storeManager: storeManager)
                                .onAppear(perform: {
                                    if isIAPVisible == false {
                                        storeManager.getProducts(productIDs: productIDs)
                                        isIAPVisible.toggle()
                                    }
                                    })
                                        
                            ) {
                                Label("Doações", systemImage: "banknote.fill")
                            }
                        }
                }
            }
            .navigationTitle("GaiaAR")
            .navigationBarBackButtonHidden()
            Tudo()
        }
#else
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Apps")) {
                        NavigationLink(destination: Aplicativos()
                            .navigationTitle("Criatividade")
                        ) {
                            Label("Criatividade", systemImage: "paintbrush.fill")
                        }
                    }
                    Section(header: Text("Outros")) {
                        NavigationLink(destination: DocumentationView()
                            .navigationTitle("Documentação")
                        ) {
                            Label("Documentação", systemImage: "book.fill")
                        }
                        NavigationLink(destination:
                                        DonationsView(storeManager: storeManager)
                            .onAppear(perform: {
                                if isIAPVisible == false {
                                    storeManager.getProducts(productIDs: productIDs)
                                    isIAPVisible.toggle()
                                }
                                })
                        ) {
                            Label("Doações", systemImage: "banknote.fill")
                        }
                    }
                }
            }
            .navigationTitle("GaiaAR")
            .navigationBarBackButtonHidden()
            Aplicativos()
        }
#endif
    }
}


struct NewHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NewHomeView()
            .environmentObject(Potato())
    }
}
