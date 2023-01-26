//
//  StatusView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 16/10/22.
//

import SwiftUI

struct StatusView: View {
    @EnvironmentObject var status: CloudKitUserBootcampViewModel
    var body: some View {
        if status.isSignedInToiCloud == false {
            VStack {
                Spacer()
                Label("Sincronizado", systemImage: "checkmark.shield.fill")
                    .foregroundColor(.green)
                    .font(.title3)
                Spacer()
                Text("GaiaAR versão 3.3")
                    .font(.footnote)
            }
            .navigationTitle("iCloud")
        } else {
            VStack {
                Spacer()
                Label("Erro", systemImage: "xmark.icloud.fill")
                    .foregroundColor(.red)
                    .font(.title3)
                Spacer()
                Text("GaiaAR versão 3.3")
                    .font(.footnote)
            }
            .navigationTitle("iCloud")
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
            .environmentObject(CloudKitUserBootcampViewModel())
    }
}
