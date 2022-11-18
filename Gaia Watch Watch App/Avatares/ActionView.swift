//
//  ActionView.swift
//  Gaia Watch Watch App
//
//  Created by Rodrigo Pellanda on 31/10/22.
//

import SwiftUI

struct ActionView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: MessagesView()) {
                        Image(systemName: "message.circle.fill")
                            .resizable()
                            .renderingMode(.original)
                            .foregroundColor(.green)
                            .scaledToFit()
                            .buttonStyle(.borderless)
                    }
                    Spacer()
                        .frame(width: 20)
                    NavigationLink(destination: WorkoutView()) {
                        Image(systemName: "figure.run.circle.fill")
                            .resizable()
                            .renderingMode(.original)
                            .foregroundColor(.blue)
                            .scaledToFit()
                            .buttonStyle(.borderless)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ActionView_Previews: PreviewProvider {
    static var previews: some View {
        ActionView()
    }
}
