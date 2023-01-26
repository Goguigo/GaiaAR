//
//  DocumentationView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 05/08/22.
//
import SwiftUI
import StoreKit

struct DocumentationView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Realidade Aumentada")
                    .font(.title2)
                VStack {
                    Text("Como usar: mire a câmera do dispositivo em uma superfície plana e bem iluminada com bastante espaço livre, movimente a câmera do dispositivo suavemente e aguarde o sistema posicionar os itens. Você pode tocar em um item que pode ser interagido para acionar alguma ação.")
                    Text("Se a cena de AR desaparecer, repita o processo de escaneamento.")
                    Spacer()
                        .frame(height: 20)
                    Text("Blocos Virtuais")
                        .font(.title2)
                    Text("O objetivo é remover os blocos sem derrubar a torre inteira, os blocos podem ser removidos da torre por um toque. Os três blocos no topo da torre não podem ser removidos, isso incentiva o raciocínio lógico e adiciona um desafio ao jogo.")
                    Spacer()
                        .frame(height: 20)
                    Text("Floresta Virtual")
                        .font(.title2)
                    VStack {
                        Text("Posiciona uma floresta e um penhasco usando AR,. Itens como: o tornado e a nuvem de tempestade tem interações.")
                        Spacer()
                            .frame(height: 20)
                        Text("Sistema Solar e Constelações")
                            .font(.title2)
                        Text("Posiciona o sistema solar e algumas imagens de constelações usando AR. Os foguetes e placas de ação podem ser usados para executar ações como: mostrar legendas e imagens.")
                        Spacer()
                            .frame(height: 20)
                        Text("Mini Cidade")
                            .font(.title2)
                        Text("Posiciona uma cidade com várias construções usando AR. Os veículos nas ruas podem se mover pela cidade e o avião pode aterrisar.")
                        Spacer()
                            .frame(height: 20)
                        Text("Instrumentos Musicais")
                            .font(.title2)
                        VStack {
                            Text("Posiciona uma série de instrumentos em AR que quando tocados podem acionar um som. Vários instrumentos podem ser tocados ao mesmo tempo.")
                            Spacer()
                                .frame(height: 20)
                            Text("Mapa do Brasil")
                                .font(.title2)
                            Text("Posiciona um mapa, um avião e uma série de ferramentas em AR. A tabela pode ser acionada para mostrar as regiões, os alfinetes podem ser usados como destinos para o avião e se o avião estiver no ar, ele pousa quando tocado.")
                            Text("Quando o avião estiver em algum lugar do mapa, uma imagem e objetos de AR vão aparecer.")
                            Spacer()
                                .frame(height: 20)
                            Text("Desenhos")
                                .font(.title2)
                            Text("Um aplicativo de pintura de dedo que desenha uma linha da cor selecionada junto com o toque do usuário. A barra de ajuste na esquerda aumenta ou diminui o tamanho da linha.")
                            VStack {
                                Spacer()
                                    .frame(height: 20)
                                Text("Editor de Texto")
                                    .font(.title2)
                                Text("Um aplicativo simples de edição de texto com controles simples e intuitivos.")
                                Text("Os botões na barra de ferramentas podem aumentar e diminuir o tamanho da fonte.")
                                Text("Também é possível compartilhar, deletar e salvar diversos textos em uma pasta do iCloud.")
                                Spacer()
                                    .frame(height: 20)
                                Text("Meditação")
                                    .font(.title2)
                                VStack {
                                    Text("Uma sessão de meditação muito simples que dura em torno de 1 minuto.")
                                    Spacer()
                                        .frame(height: 20)
                                    Text("Carrinho e avião")
                                        .font(.title2)
                                    VStack {
                                        Text("Ambos os veículos podem ser controlados pelos botões na tela e o carrinho tem um pequeno sistema de física para deixar as interações com objetos mais realistas.")
                                        Spacer()
                                            .frame(height: 20)
                                        Text("Galeria")
                                            .font(.title2)
                                        Text("Uma versão mais avançada e de baixa latência do aplicativo de desenhos que suporta a Apple Pencil e múltiplas telas.")
                                        Text("As telas são salvas no dispositivo e podem ser apagadas usando o botão de edição.")
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup {
               Link(destination: URL(string: "https://sites.google.com/view/gaia-org/in%C3%ADcio/suporte")!) {
                    Image(systemName: "questionmark.circle.fill")
                }
               .buttonStyle(.borderless)
                Spacer()
                    .frame(width: 5)
                Button(action: {
                    SKStoreReviewController.requestReview()
                }) {
                    Image(systemName: "star.circle.fill")
                }
                .buttonStyle(.borderless)
                Spacer()
                    .frame(width: 5)
                Link(destination: URL(string: "https://sites.google.com/view/gaia-org/")!) {
                    Image(systemName: "safari.fill")
                }
                .buttonStyle(.borderless)
            }
        }
        .padding()
    }
}

struct DocumentationView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationView()
    }
}
