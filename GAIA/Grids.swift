//
//  grid1.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 04/08/22.
//

import SwiftUI
import StoreKit



struct Novos: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                Button(action: {
                    self.list.lista = 12
                }) {
                    VStack {
                        Image("jogo7")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Meditação")
                            .font(.title)
                    }
                }
                Button (action: {
                    self.list.lista = 14
                }) {
                    VStack {
                        Image("jogo11")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Carrinho")
                            .font(.title)
                    }
                }
                Button(action: {
                    self.list.lista = 15
                }) {
                    VStack {
                        Image("jogo12")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Avião")
                            .font(.title)
                    }
                }
                Button(action: {
                    self.list.lista = 16
                }) {
                    VStack {
                        Image("app3")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Galeria")
                            .font(.title)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}

struct Tudo: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button(action: {
                        self.list.lista = 1
                    }) {
                        VStack {
                            Image("jogo1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Blocos Virtuais")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 9
                    }) {
                        VStack {
                            Image("jogo9")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Floresta")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 3
                    }) {
                        VStack {
                            Image("jogo3")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Sistema Solar")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 4
                    }) {
                        VStack {
                            Image("jogo4")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Cidade")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 5
                    }) {
                        VStack {
                            Image("jogo5")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Música")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 6
                    }) {
                        VStack {
                            Image("jogo6")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mapa interativo")
                                .font(.title)
                        }
                    }
                Button(action: {
                    self.list.lista = 12
                }) {
                    VStack {
                        Image("jogo7")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Meditação")
                            .font(.title)
                    }
                }
                Button (action: {
                    self.list.lista = 14
                }) {
                    VStack {
                        Image("jogo11")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Carrinho")
                            .font(.title)
                    }
                }
                Group {
                    Button(action: {
                        self.list.lista = 15
                    }) {
                        VStack {
                            Image("jogo12")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Avião")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 10
                    }) {
                        VStack {
                            Image("app1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Desenhos")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 11
                    }) {
                        VStack {
                            Image("app2")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Editor de Texto")
                                .font(.title)
                        }
                    }
                    Button(action: {
                        self.list.lista = 16
                    }) {
                        VStack {
                            Image("app3")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Galeria")
                                .font(.title)
                        }
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Educação: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button (action: {
                        self.list.lista = 9
                    }) {
                        VStack {
                            Image("jogo9")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Floresta")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 3
                    }) {
                        VStack {
                            Image("jogo3")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Sistema Solar")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 4
                    }) {
                        VStack {
                            Image("jogo4")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Cidade")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 6
                    }) {
                        VStack {
                            Image("jogo6")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mapa interativo")
                                .font(.title)
                        }
                    }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Jogos: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button(action: {
                        self.list.lista = 1
                    }) {
                        VStack {
                            Image("jogo1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Blocos Virtuais")
                                .font(.title)
                        }
                    }
                Button (action: {
                    self.list.lista = 14
                }) {
                    VStack {
                        Image("jogo11")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Carrinho")
                            .font(.title)
                    }
                }
                Button(action: {
                    self.list.lista = 15
                }) {
                    VStack {
                        Image("jogo12")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Avião")
                            .font(.title)
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Logica: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button(action: {
                        self.list.lista = 1
                    }) {
                        VStack {
                            Image("jogo1")
                                .resizable()
                                .frame(width: 250, height: 200)
                            Text("Blocos Virtuais")
                                .font(.title)
                        }
                    }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Arte: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button (action: {
                        self.list.lista = 5
                    }) {
                        VStack {
                            Image("jogo5")
                                .resizable()
                                .frame(width: 250, height: 200)
                            Text("Música")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 10
                    }) {
                        VStack {
                            Image("app1")
                                .resizable()
                                .frame(width: 250, height: 200)
                            Text("Desenhos")
                                .font(.title)
                        }
                    }
                Button(action: {
                    self.list.lista = 16
                }) {
                    VStack {
                        Image("app3")
                            .resizable()
                            .frame(width: 250, height: 200)
                        Text("Galeria")
                            .font(.title)
                    }
                }
                Button (action: {
                    self.list.lista = 11
                }) {
                    VStack {
                        Image("app2")
                            .resizable()
                            .frame(width: 250, height: 200)
                        Text("Editor de Texto")
                            .font(.title)
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Ciencia: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button(action: {
                        self.list.lista = 1
                    }) {
                        VStack {
                            Image("jogo1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Blocos Virtuais")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 9
                    }) {
                        VStack {
                            Image("jogo9")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Floresta")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 3
                    }) {
                        VStack {
                            Image("jogo3")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Sistema Solar")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 4
                    }) {
                        VStack {
                            Image("jogo4")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Cidade")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 6
                    }) {
                        VStack {
                            Image("jogo6")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mapa interativo")
                                .font(.title)
                        }
                    }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct AR: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button(action: {
                        self.list.lista = 1
                    }) {
                        VStack {
                            Image("jogo1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Blocos Virtuais")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 9
                    }) {
                        VStack {
                            Image("jogo9")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Floresta")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 3
                    }) {
                        VStack {
                            Image("jogo3")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Sistema Solar")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 4
                    }) {
                        VStack {
                            Image("jogo4")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mini Cidade")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 5
                    }) {
                        VStack {
                            Image("jogo5")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Música")
                                .font(.title)
                        }
                    }
                    Button (action: {
                        self.list.lista = 6
                    }) {
                        VStack {
                            Image("jogo6")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Mapa interativo")
                                .font(.title)
                        }
                    }
                Button(action: {
                    self.list.lista = 12
                }) {
                    VStack {
                        Image("jogo7")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Meditação")
                            .font(.title)
                    }
                }
                Button (action: {
                    self.list.lista = 14
                }) {
                    VStack {
                        Image("jogo11")
                            .resizable()
                            .frame(width: 250, height: 200)
                        Text("Carrinho")
                            .font(.title)
                    }
                }
                Group {
                    Button(action: {
                        self.list.lista = 15
                    }) {
                        VStack {
                            Image("jogo12")
                                .resizable()
                                .frame(width: 250, height: 200)
                            Text("Avião")
                                .font(.title)
                        }
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                     Image(systemName: "questionmark.circle.fill")
                 }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
    }
}
struct Aplicativos: View {
    @EnvironmentObject var list: Potato
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                    Button (action: {
                        self.list.lista = 10
                    }) {
                        VStack {
                            Image("app1")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                            Text("Desenhos")
                                .font(.title)
                        }
                        
                    }
                    Button (action: {
                        self.list.lista = 11
                    }) {
                        VStack {
                            Image("app2")
                                .resizable()
                                .frame(width: 250, height: 200)
                                .cornerRadius(5)
                        Text("Texto")
                            .font(.title)
                    }
                }
                Button(action: {
                    self.list.lista = 16
                }) {
                    VStack {
                        Image("app3")
                            .resizable()
                            .frame(width: 250, height: 200)
                            .cornerRadius(5)
                        Text("Galeria")
                            .font(.title)
                    }
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .toolbar {
            ToolbarItem {
               Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                    Image(systemName: "questionmark.circle.fill")
                }
            }
            ToolbarItem {
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
            }
            ToolbarItem {
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
            }
        }
        
    }
}
struct grid_Previews: PreviewProvider {
    static var previews: some View {
        Aplicativos()
    }
}
