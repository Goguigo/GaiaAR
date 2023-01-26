//
//  DonationsView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 29/10/22.
//

import SwiftUI
import StoreKit

struct DonationsView: View {
    let columns = [
            GridItem(.adaptive(minimum: 250))
        ]
    @StateObject var storeManager: StoreManager
    var body: some View {
        List(storeManager.myProducts, id: \.self) { product in
            HStack {
                VStack(alignment: .leading) {
                    Text(product.localizedTitle)
                        .font(.headline)
                    Text(product.localizedDescription)
                        .font(.caption2)
                }
                Spacer()
                if UserDefaults.standard.bool(forKey: product.productIdentifier) {
                    Text("Purchased")
                        .foregroundColor(.green)
                } else {
                    Button(action: {
                        storeManager.purchaseProduct(product: product)
                    }) {
                        Text("Por: \(product.price)")
                    }
                    .foregroundColor(.blue)
                }
            }
            .padding()
                        }
        .listStyle(.plain)
.toolbar {
    ToolbarItemGroup {
        Button(action: {
            storeManager.restoreProducts()
        }) {
            Image(systemName: "dollarsign.arrow.circlepath")
        }
        .buttonStyle(.borderless)
        Spacer()
            .frame(width: 5)
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

struct DonationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationsView(storeManager: StoreManager())
    }
}
