//
//  FoodView.swift
//  GAIA
//
//  Created by Rodrigo Pellanda on 16/11/22.
//

import SwiftUI

struct FoodView: View {
    @EnvironmentObject var list: Potato
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("template")
                        .resizable()
                        .frame(width: 350, height: 300)
                    Text("SpriteView")
                    Spacer()
                    HStack {
                        Button(action: {}) {
                            VStack {
                                Image(systemName: "carrot.fill")
                                    .resizable()
                                    .frame(width: 55, height: 55)
                                    .foregroundColor(.orange)
                                Text("Comida1")
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            VStack {
                                Image(systemName: "birthday.cake.fill")
                                    .resizable()
                                    .frame(width: 55, height: 55)
                                    .foregroundColor(.pink)
                                Text("Comida2")
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            VStack {
                                Image(systemName: "cup.and.saucer.fill")
                                    .resizable()
                                    .frame(width: 70, height: 55)
                                    .foregroundColor(.green)
                                Text("Comida3")
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Comida")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        list.lista = 0
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.roundedRectangle)
                }
            }
        }
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
