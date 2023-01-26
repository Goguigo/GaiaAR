//
//  AvatarHomeView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 29/10/22.
//

import SwiftUI

struct AvatarHomeView: View {
    @EnvironmentObject var list: Potato
    var body: some View {
        NavigationStack {
                VStack {
                    Image("template")
                        .resizable()
                        .frame(width: 250, height: 200)
                    Spacer()
                        .frame(height: 50)
                    HStack {
                        Button(action: {
                            list.lista = 17
                        }) {
                        VStack {
                                Image(systemName: "message.circle.fill")
                                    .resizable()
                                    .renderingMode(.original)
                                    .foregroundColor(.green)
                                    .frame(width: 75, height: 75)
                                Text("Conversar")
                                .foregroundColor(.blue)
                            }
                        }
                        Spacer()
                            .frame(width: 63)
                        Button(action: {
                            list.lista = 18
                        }) {
                            VStack {
                                Image(systemName: "fork.knife.circle.fill")
                                    .resizable()
                                    .renderingMode(.original)
                                    .foregroundColor(.blue)
                                    .frame(width: 75, height: 75)
                                Text("Alimentar")
                                    .foregroundColor(.blue)
                            }
                        }
                        Spacer()
                            .frame(width: 63)
                        VStack {
                            Image(systemName: "heart.circle.fill")
                                .resizable()
                                .renderingMode(.original)
                                .foregroundColor(.yellow)
                                .frame(width: 75, height: 75)
                            Text("Cuidar")
                        }
                    }
                    Spacer()
                }
        }
        .navigationTitle("Avatar")
    }
}

struct AvatarHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHomeView()
    }
}

