//
//  MessageView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 07/11/22.
//

import SwiftUI

struct MessageView: View {
    @EnvironmentObject var list: Potato
    @State var text: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    HStack {
                        Text("Olá, eu sou um robô 👋🏼🤖")
                            .padding()
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(15)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("Oi Robô!")
                            .padding()
                            .background(Color.blue.opacity(0.8))
                            .cornerRadius(15)
                            .foregroundColor(.white)
                    }
                }
                HStack {
                    TextField("Nova mensagem...", text: $text )
                        .padding()
                        .background(Color.gray.opacity(0.4))
                        .cornerRadius(20)
                }
            }
            .padding()
            .navigationTitle("Mensagens")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Text("Nome do avatar")
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .renderingMode(.original)
                            .foregroundColor(.black)
                            .scaledToFit()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        list.lista = 0
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}

