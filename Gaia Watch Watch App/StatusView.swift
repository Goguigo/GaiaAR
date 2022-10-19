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
        if status.isSignedInToiCloud == true {
            VStack {
                Text("Sincronização:")
                    .font(.title3)
                Spacer()
                Label("Sincronizado", systemImage: "checmark.icloud.fill")
                    .foregroundColor(.red)
                    .font(.title2)
                Spacer()
                Text("GaiaAR, versão 3.0")
                    .font(.footnote)
            }
        } else {
            VStack {
                Text("Sincronização:")
                    .font(.title3)
                Spacer()
                Label("Erro", systemImage: "xmark.icloud.fill")
                    .foregroundColor(.red)
                    .font(.title2)
                Spacer()
                Text("GaiaAR, versão 3.0")
                    .font(.footnote)
            }
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
            .environmentObject(CloudKitUserBootcampViewModel())
    }
}
