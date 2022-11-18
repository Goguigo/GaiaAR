//
//  MessagesView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 01/11/22.
//

import SwiftUI

struct MessagesView: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("Olá, eu sou um robô.")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(12)
                        Spacer()
                    }
                    Spacer()
                        .frame(width: 10, height: 20)
                    HStack {
                        Spacer()
                        Text("Olá robô!")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue.opacity(0.8))
                            .cornerRadius(12)
                    }
                }
            }
            HStack {
                TextField("Mensagem...", text: $text)
                Button(action: {}) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.green)
                }
                .frame(width: 35)
                .padding(.trailing)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
