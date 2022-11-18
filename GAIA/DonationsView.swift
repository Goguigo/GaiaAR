//
//  DonationsView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 29/10/22.
//

import SwiftUI

struct DonationsView: View {
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) {
                VStack {
                    Image(systemName: "dollarsign.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.cyan)
                        Text("Doação generosa")
                    Button {} label: {
                        Text("Doar R$ 5")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
                VStack {
                    Image(systemName: "banknote.fill")
                        .resizable()
                        .frame(width: 150, height: 100)
                        .foregroundColor(.green)
                        Text("Doação incrível")
                        .foregroundColor(.mint)
                    Button {} label: {
                        Text("Doar R$ 10")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
                VStack {
                    Image(systemName: "giftcard.fill")
                        .resizable()
                        .frame(width: 125, height: 100)
                        .foregroundColor(.orange)
                        Text("Doação magnífica!")
                        .foregroundColor(.green)
                    Button {} label: {
                        Text("Doar R$ 25")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
                VStack {
                    Image(systemName: "gift.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.pink)
                        Text("Doação espetacular!!")
                        .foregroundColor(.red)
                    Button {} label: {
                        Text("Doar R$ 50")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
                VStack {
                    Image(systemName: "hand.thumbsup.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.indigo)
                        Text("Doação fantástica!!!")
                        .font(.headline)
                        .foregroundStyle(
                            LinearGradient (
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                    Button {} label: {
                        Text("Doar R$ 100")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
                Text("O GaiaAR continua funcionando sem anúncios e sendo atualizado frequentemente. Para ajudar a manter a plataforma, você pode enviar uma doação!")
            }
        }
        .padding()
        .navigationTitle("Doações")
    }
}

struct DonationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationsView()
    }
}
