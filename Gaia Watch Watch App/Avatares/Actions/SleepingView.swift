//
//  SleepingView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 01/11/22.
//

import SwiftUI

struct SleepingView: View {
    var body: some View {
        VStack {
            Image(systemName: "sleep.circle.fill")
                .resizable()
                .renderingMode(.original)
                .foregroundColor(.cyan)
                .scaledToFit()
            Spacer()
            Button(action: {}) {
                Text("Colocar para dormir")
            }
        }
        .navigationTitle("Dormir")
    }
}

struct SleepingView_Previews: PreviewProvider {
    static var previews: some View {
        SleepingView()
    }
}
