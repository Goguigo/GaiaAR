//
//  DonationView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 05/11/22.
//

import SwiftUI

struct DonationView: View {
    var body: some View {
        VStack {
            List {
                Button(action: {}) {
                    Text("R$ 5")
                }
                Button(action: {}) {
                    Text("R$ 10")
                        .foregroundColor(.mint)
                }
                Button(action: {}) {
                    Text("R$ 25")
                        .foregroundColor(.green)
                }
                Button(action: {}) {
                    Text("R$ 50")
                        .foregroundColor(.red)
                }
                Button(action: {}) {
                    Text("R$ 100")
                        .font(.headline)
                        .foregroundStyle(
                            LinearGradient (
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                }
            }
            .listStyle(.carousel)
            .navigationTitle("Doações")
        }
    }
}

struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView()
    }
}
