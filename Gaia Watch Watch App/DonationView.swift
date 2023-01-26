//
//  DonationView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 05/11/22.
//

import SwiftUI
import StoreKit

struct DonationView: View {
@StateObject var storeManager: StoreManager
    var body: some View {
            List(storeManager.myProducts, id: \.self) { product in
                    if UserDefaults.standard.bool(forKey: product.productIdentifier) {
                        Text("Purchased")
                            .foregroundColor(.green)
                    } else {
                        Button(action: {
                            storeManager.purchaseProduct(product: product)
                        }) {
                            Text("Comprar doação de \(product.price)")
                        }
                        .foregroundColor(.blue)
                }
                            }
            .navigationTitle("Doações")
    }
}

struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView(storeManager: StoreManager())
    }
}
