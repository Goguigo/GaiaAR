//
//  IntroductionView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 30/06/22.
//

import SwiftUI

struct IntroductionView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        ScrollView {
            VStack {
                Text("Bem vindo ao app GaiaAR")
                    .font(.title)
                Image("example")
                    .resizable()
                    .scaledToFit()
                Spacer()
                    .frame(height: 20)
                Text("Para iniciar as experiências de Realidade Aumentada, mova a câmera do dispositivo em uma superfície plana e bem iluminada.")
                Group {
                    Spacer()
                        .frame(height: 20)
                    Text("Esse aplicativo foi desenvolvido pelo GAIA (Grupo de Ações e Investigações Autopoiéticas) com o objetivo de ajudar crianças diagnosticadas com autismo a se expressarem livremente, a abordagem é simples e desperta o raciocínio, a comunicação e ajuda na construção da capacidade de dizer eu para mim mesmo.")
                    Spacer()
                        .frame(height: 20)
                    Link("Mais sobre a plataforma e o projeto GAIA",
                         destination: URL(string: "https://sites.google.com/view/gaia-org/projeto-da-plataforma-gaiaar")!)
                }
                Spacer()
                    .frame(height: 20)
                Button("Ok!") {
                    self.viewRouter.currentPage = "homeView"
                }
                .buttonStyle(.borderedProminent)
                Spacer()
                    .frame(height: 20)
                Text("Versão 3.4")
                    .font(.footnote)
            }
        }
        .padding()
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
